# Changelog

A verziózási szabályokat lásd [`../docs/RELEASING.md`](../docs/RELEASING.md).

## [1.0.0] — 2026-09-15

Első verziójelölés — a jelenlegi éles állapot megnevezése, nem egy adott
naptári változás.

### Jelenlegi állapot

- Astro 6 statikus site, éles, HU + EN nyelvi verzióval.
- Fázis 1 SEO baseline: NAP 1077, telefonszám, JSON-LD készlet
  (Organization + ProfessionalService + Person + FAQPage + Service[]).
- `/applied-ai/` pillar oldal (magyar, Service + FAQPage JSON-LD,
  hub-and-spoke linkekkel) és `/en/applied-ai/` (4 JSON-LD blokk, kétirányú
  hreflang) — mindkettő a főmenübe felvéve.
- Email-obfuszkáció: `info[ at]prioconsulting.hu`, 0 `mailto` link.
- Halucinált MOL-testimonial („K. Péter") eltávolítva a `/rolam` és
  `/en/about` oldalról; élesben verifikálva, hogy nincs OTP Bank / Richter /
  a hivatkozott név a megjelenő tartalomban.
- 2026-04-25 brand-merger: az egyéni vállalkozás szüneteltetve, a
  **Prio Consulting Kft. az egyetlen jogi entitás** — unified „Applied AI
  IT PM @ Prio Consulting" pozicionálás. A site két rétegű: Core (~60% —
  SAP IS-U/energetika) + Applied AI (~40%, az `/applied-ai/` pillar).
  A simonprojects.eu ehhez sister-site szerepben (technical proof /
  credibility engine) kapcsolódik.
- Deploy: `sync-beehiiv.sh` (Beehiiv RSS → Astro build → cPanel deploy),
  cron H/Sz/P 10:15 — lásd a gyökér `CLAUDE.md` `## Cron` táblája. A cPanel
  napi kétszeri (`0:00` + `12:00`) `uapi VersionControl update` hívással
  pull-ol a deploy branchről. A build-cleanup lépés branch guard + EXIT
  restore trap + `.env`/log védelem alatt fut, hogy hibás futás ne
  ragadjon a deploy branch-en.

### Előzmények

A fenti állapot 2026-04-16 (initial build) és 2026-07-30 (brand-merger
lezárása a site-on) közötti commitok eredménye — lásd `git log`. A fájl
visszamenőleg nem sorol fel korábbi verziószámokat, mert 2026-09-15 előtt a
repónak nem volt saját verziózása.
