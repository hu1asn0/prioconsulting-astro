#!/bin/bash
# Beehiiv RSS sync — rebuild Astro site and push to deploy branch
# Cron: 0 10 * * 1,3,5 (hétfő + szerda + péntek 10:00)
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG="$SCRIPT_DIR/beehiiv-sync.log"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG"; }

# Branch guard: this script only exists on main — if a previous run died
# mid-deploy, the working tree is stuck on the deploy branch and cron fails
# silently (exit 127). Try to self-heal, otherwise fail loudly.
_GUARD_BRANCH=$(git -C "$SCRIPT_DIR" branch --show-current)
if [ "$_GUARD_BRANCH" != "main" ]; then
    log "WARN: working tree on '$_GUARD_BRANCH', expected main — attempting recovery"
    if git -C "$SCRIPT_DIR" checkout main >> "$LOG" 2>&1; then
        log "Recovery OK: switched back to main"
    else
        log "ERROR: cannot switch back to main (uncommitted changes?) — manual fix required"
        exit 1
    fi
fi

# Restore trap: guarantee the working tree is back on main even if the
# script dies mid-deploy (build fail, push fail, signal, OOM).
restore_branch() {
    local _now
    _now=$(git -C "$SCRIPT_DIR" branch --show-current)
    if [ "$_now" != "main" ]; then
        git -C "$SCRIPT_DIR" checkout main >> "$LOG" 2>&1 || true
        log "Restore trap: switched back to main (was on '$_now')"
    fi
}

# Netdata monitoring + branch restore
_CRON_START=$(date +%s)
trap '_RC=$?; restore_branch; echo "cron_exit.beehiiv_sync_prio:$_RC|g" | nc -u -w0 127.0.0.1 8125 2>/dev/null; echo "cron_time.beehiiv_sync_prio:$(( $(date +%s) - _CRON_START ))|g" | nc -u -w0 127.0.0.1 8125 2>/dev/null' EXIT

log "=== Beehiiv sync started ==="

# Step 1: Build
cd "$SCRIPT_DIR"
log "Building Astro site..."
if npm run build >> "$LOG" 2>&1; then
    PAGE_COUNT=$(find dist -name '*.html' | wc -l)
    log "Build OK — $PAGE_COUNT pages"
else
    log "ERROR: Build failed"
    exit 1
fi

# Step 2: Save dist to /tmp (before branch switch kills node_modules!)
rm -rf /tmp/prio-deploy-dist
cp -r dist /tmp/prio-deploy-dist
log "dist saved to /tmp"

# Step 3: Push to deploy branch
CURRENT_BRANCH=$(git branch --show-current)

log "Switching to deploy branch..."
git checkout deploy >> "$LOG" 2>&1

# Clean old dist files (keep .git, src, node_modules, etc.)
find . -maxdepth 1 \
    -not -name '.git' -not -name '.' -not -name '..' \
    -not -name 'src' -not -name 'node_modules' -not -name 'dist' \
    -not -name 'package.json' -not -name 'package-lock.json' \
    -not -name 'astro.config.mjs' -not -name 'tsconfig.json' \
    -exec rm -rf {} + 2>/dev/null || true

# Copy new build output
cp -r /tmp/prio-deploy-dist/* .

# Commit and push if there are staged changes.
# NOTE: decide AFTER add+reset — untracked-but-ignored files (logs, .astro)
# used to trigger a "nothing added to commit" failure that killed the script
# mid-deploy via set -e, stranding the working tree on the deploy branch.
git add -A
git reset HEAD src/ node_modules/ dist/ package.json package-lock.json astro.config.mjs tsconfig.json 2>/dev/null || true
if git diff --cached --quiet; then
    log "No changes — skipping commit"
else
    git commit -m "deploy: beehiiv sync $(date '+%Y-%m-%d %H:%M')" >> "$LOG" 2>&1
    git push origin deploy >> "$LOG" 2>&1
    log "Deployed to origin/deploy"
fi

# Step 4: Switch back and restore
git checkout "$CURRENT_BRANCH" >> "$LOG" 2>&1

# Reinstall node_modules if wiped by branch switch
if [ ! -f node_modules/.package-lock.json ]; then
    log "Restoring node_modules..."
    npm install >> "$LOG" 2>&1
fi

# Restart dev server
systemctl --user restart prioconsulting-dev.service 2>/dev/null || true
log "=== Beehiiv sync complete ==="
