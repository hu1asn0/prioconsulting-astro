---
name: Prio Consulting
description: The build-instruction book — sky-blue page, black keyline, one red piece, numbered steps.
colors:
  page: "#8FCDF2"
  page-deep: "#1E5AA8"
  ink: "#111111"
  ink-soft: "#2A3340"
  ink-ghost: "rgba(17, 17, 17, 0.38)"
  piece: "#D7263D"
  piece-deep: "#B31F33"
  inventory: "#F5C518"
  callout: "#FFFFFF"
  callout-tint: "#B9E0F8"
typography:
  step-numeral:
    fontFamily: "Archivo, sans-serif"
    fontSize: "clamp(5rem, 12vw, 9rem)"
    fontWeight: 900
    lineHeight: 0.8
    letterSpacing: "-0.04em"
  display:
    fontFamily: "Archivo, sans-serif"
    fontSize: "clamp(2.25rem, 5vw, 3.75rem)"
    fontWeight: 900
    lineHeight: 1.1
    letterSpacing: "-0.02em"
  headline:
    fontFamily: "Archivo, sans-serif"
    fontSize: "clamp(1.75rem, 3.5vw, 2.75rem)"
    fontWeight: 700
    lineHeight: 1.1
    letterSpacing: "-0.01em"
  title:
    fontFamily: "Archivo, sans-serif"
    fontSize: "clamp(1.25rem, 2.2vw, 1.5rem)"
    fontWeight: 700
    lineHeight: 1.1
    letterSpacing: "-0.01em"
  lead:
    fontFamily: "Atkinson Hyperlegible, sans-serif"
    fontSize: "1.25rem"
    fontWeight: 400
    lineHeight: 1.5
  body:
    fontFamily: "Atkinson Hyperlegible, sans-serif"
    fontSize: "1.125rem"
    fontWeight: 400
    lineHeight: 1.6
  label:
    fontFamily: "Archivo, sans-serif"
    fontSize: "0.9375rem"
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: "0.04em"
rounded:
  sm: "4px"
  md: "8px"
  lg: "12px"
  xl: "16px"
spacing:
  stud: "8px"
  xs: "0.25rem"
  sm: "0.5rem"
  md: "1rem"
  lg: "1.5rem"
  xl: "2rem"
  2xl: "3rem"
  3xl: "4rem"
  4xl: "6rem"
components:
  button-primary:
    backgroundColor: "{colors.piece}"
    textColor: "{colors.callout}"
    typography: "{typography.label}"
    rounded: "{rounded.md}"
    padding: "12px 24px"
  button-primary-hover:
    backgroundColor: "{colors.piece-deep}"
    textColor: "{colors.callout}"
  button-secondary:
    backgroundColor: "{colors.callout}"
    textColor: "{colors.ink}"
    typography: "{typography.label}"
    rounded: "{rounded.md}"
    padding: "12px 24px"
  button-secondary-hover:
    backgroundColor: "{colors.inventory}"
    textColor: "{colors.ink}"
  page-turn:
    backgroundColor: "{colors.piece}"
    textColor: "{colors.callout}"
    rounded: "{rounded.md}"
    padding: "16px 24px"
  page-turn-hover:
    backgroundColor: "{colors.piece-deep}"
  callout-box:
    backgroundColor: "{colors.callout}"
    textColor: "{colors.ink}"
    rounded: "{rounded.md}"
    padding: "24px"
  keyline-panel:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    rounded: "{rounded.md}"
    padding: "24px"
  keyline-panel-hover:
    backgroundColor: "{colors.callout-tint}"
  input:
    backgroundColor: "{colors.callout}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: "12px 16px"
  nav-link:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.label}"
    rounded: "{rounded.sm}"
    padding: "8px 12px"
  nav-link-hover:
    backgroundColor: "{colors.callout-tint}"
  logo-plate:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    rounded: "{rounded.sm}"
    padding: "6px 12px"
---

# Design System: Prio Consulting

## Overview

**Creative North Star: "The Build-Instruction Book"**

The site is page one of a brick build-instruction book. The visitor's enterprise programme (SAP IS-U, CRM, ERP, data warehouse) is the model that already stands, drawn as ghosted isometric bricks; what Prio Consulting adds is this step's new piece, drawn solid red with a dashed arrow to its empty seat. Every later section is another page of the same book: numbered steps 2–5, a parts inventory, the previous builds, a note on the back cover, and a closing plate. The page itself is instruction-page sky blue from the top of the nav to the bottom of the footer; there is no second ground, no dark band, no white section.

The material is paper and printed ink. Every element is outlined by the same 2px black keyline: boxes, buttons, inputs, the logo plate, section rules, and the bricks themselves. Nothing casts a shadow and nothing is graded; depth is carried by the drawing (three flat faces per brick, painter's order, ghost opacity for what was built before). Colour is rationed by meaning: red is the new piece and the primary action, blue is a brick colour inside the drawings, yellow appears only as a parts-inventory brick or the secondary button's pressed state, white is reserved for 1:1 call-out boxes and form fields.

Type has two voices and no decoration. Oversized step numerals in a wide black grotesque (Archivo 900) are almost the only display text; headings are the same face at 700/900 with tight tracking; everything read at length is Atkinson Hyperlegible, a legibility-first sans. Wordless arrows teach; there are no eyebrows, no kickers, no icon fonts, no gradients. All alignment snaps to an 8px stud module.

**Key Characteristics:**
- One ground: sky blue (`{colors.page}`) owns the whole surface; sections are separated by keylines, never by colour change.
- Keyline everything: a uniform 2px `#111111` outline (`--keyline`) on every box, button, field and brick; a 1px variant only for inner dividers.
- Rationed colour: red = the new piece and the primary action; yellow = parts inventory; white = 1:1 call-out and inputs; blue = a brick, never a section.
- Flat and shadowless; depth is drawn (isometric faces, ghost opacity), not cast.
- Numbered pages: giant step numerals, `tabular-nums` on every count, sections that read as book pages.
- Authored isometric SVG brick diagrams are the imagery; no photography, no stock, no glyph icons.
- Stud module: 8px rules gaps, offsets and sticky positions.

## Colors

A printed instruction page: one sky-blue ground, black ink, and three brick colours each tied to one job.

### Primary
- **Instruction Sky** (`{colors.page}`, `--color-page`): the single page ground. Body background, nav, footer, every section, mobile drawer. Also the inner ring of the input focus halo and the `::selection` text colour.
- **Keyline Ink** (`{colors.ink}`, `--color-ink`): every outline, all headings and body text, the focus outline, the arrows and dashed guides inside brick diagrams, `::selection` background.

### Secondary
- **New Piece Red** (`{colors.piece}`, `--color-piece`): the red brick in step 1 and in the 1:1 call-out, the page-turn action, `.btn-primary`, the newsletter submit, the input caret, the call-out role line, the testimonial quote mark, the active-nav dot, and link underline on hover. It marks "the thing being added right now" and nothing else.
- **Pressed Red** (`{colors.piece-deep}`, `--color-piece-deep`): hover state of every red action; also the right (shaded) face of the red brick.

### Tertiary
- **Inventory Yellow** (`{colors.inventory}`, `--color-inventory`): the yellow brick in the parts list, the service-card icon plate, and the hover fill of `.btn-secondary`. Never a text colour, never a ground.
- **Brick Blue** (`{colors.page-deep}`, `--color-page-deep`): the solid blue brick placed in steps 2–5 (left face) and the blue inventory brick. Never a section ground, never text.

### Neutral
- **Soft Ink** (`{colors.ink-soft}`, `--color-ink-soft`): secondary text — section notes, step times, part bodies, captions, placeholders, footer tagline, ghost-tile labels inside diagrams.
- **Ghost Ink** (`{colors.ink-ghost}`, `--color-ink-ghost`): the opacity of the prior assembly (0.38) in every diagram; the white ghost bricks are drawn at this opacity so the page shows through.
- **Call-out White** (`{colors.callout}`, `--color-callout`): 1:1 call-out box, inputs, `.btn-secondary` at rest, blog images and blockquotes; the text colour on red actions; the white brick's top face.
- **Pressed Sky** (`{colors.callout-tint}`, `--color-callout-tint`): hover/pressed tint on the page for nav links, logo plate, FAQ rows, service cards. Slightly darker than the page, never a resting fill.

### Legacy aliases (compatibility only)
`--color-primary`, `--color-secondary`, `--color-cta`, `--color-cta-hover`, `--color-background`, `--color-text`, `--color-text-light`, `--color-white`, `--color-border`, `--color-surface` are mapped onto the tokens above in `src/styles/global.css` so inner pages keep rendering. New work uses the canonical names; do not add new aliases or assign an alias a value of its own.

### Named Rules
**The One Ground Rule.** Sky blue is the only page colour. A section is a page of the same book: it changes by a keyline rule, never by a background change. `.section-dark`, `.section-light` and `.section-surface` all resolve to the page colour.

**The New Piece Rule.** Red belongs to exactly one meaning: the piece being added in this step and the action that adds it. One red action per viewport; red never colours a heading, a ground, or decoration.

**The Inventory Yellow Rule.** Yellow appears only where parts are counted: inventory bricks, the icon plate, and the pressed state of a secondary button. It never carries text or fills a section.

## Typography

**Display Font:** Archivo (with sans-serif fallback), width axis 100, weights 500/700/900 — loaded from Google Fonts in `global.css`.
**Body Font:** Atkinson Hyperlegible (with sans-serif fallback), 400/700 + italic 400.
**Label/Mono Font:** none; counts use `.tnum` (`font-variant-numeric: tabular-nums`) on Archivo.

**Character:** A wide black grotesque doing the work of printed step numerals, paired with a body face chosen for legibility rather than personality. Headings are tight (-0.01 to -0.04em), numerals are enormous and set at line-height 0.8, body is generous (1.6). Nothing is set in uppercase except the small sector captions under the previous-builds models (`letter-spacing: 0.04em`).

### Hierarchy
- **Step numeral** (900, `clamp(5rem, 12vw, 9rem)`, 0.8, -0.04em): the "1" of the first spread. Steps 2–5 use the small variant (`clamp(3rem, 6vw, 4.5rem)`); mobile ≤600px fixes the large numeral at 4.5rem. Always `.tnum`, always `aria-hidden` (the heading carries the meaning).
- **Display** (900, `clamp(2.25rem, 5vw, 3.75rem)`, 1.1, -0.02em): `h1` — the step-1 headline (max 16ch) and inner-page hero titles, which sit on a keyline rule.
- **Headline** (700, `clamp(1.75rem, 3.5vw, 2.75rem)`, 1.1, -0.01em): `h2` section titles, each underlined by a 2px keyline with `--space-sm` padding and `--space-xl` below.
- **Title** (700, `clamp(1.25rem, 2.2vw, 1.5rem)`, 1.1): `h3` — step titles (1.375rem inside steps), part titles (1.25rem), service-card titles. Call-out name is a 900 variant at 1.5rem.
- **Lead** (400, 1.25rem, 1.5): the one supporting sentence under the step-1 headline, max 58ch.
- **Body** (400, 1.125rem, 1.6): paragraphs; step bodies, part bodies and FAQ answers step down to 1rem. Long-form (`.blog-content`) is 1.125rem/1.7 at max 72ch.
- **Label** (Archivo 700, 0.9375rem, 0.04em where tracked): nav links, buttons (1rem), step times, part links, footer column heads, callout parts, the page-turn step line. The tiny "1:1" scale tag is Archivo 900 at 0.8125rem/0.08em.

### Named Rules
**The Numeral Is The Display Rule.** The step numeral is the only text allowed to be enormous. Headlines stay within the `h1`/`h2` clamps; no other element competes with the number.

**The Two Voices Rule.** Archivo for anything that names, counts or acts (headings, labels, buttons, numerals); Atkinson Hyperlegible for anything read as sentences. No third face, no icon font.

**The Tabular Count Rule.** Every count (`1×`, weeks, years, step numbers) is set with `.tnum` so columns of parts align.

## Layout

The page is a 1200px container (`.container`, `padding-inline` 1rem, 2rem from 768px) on a full-bleed sky-blue ground. Sections (`.section`) are stacked pages: `padding-block` 4rem (6rem from 768px) with a 2px keyline `border-top` acting as the page edge. The first spread is tighter (3rem top, 4rem bottom) and has no top rule because the nav's bottom keyline serves as it.

**The step-1 spread** is a two-column grid, `minmax(0, 2fr) minmax(280px, 1fr)`, `column-gap` 3rem, items aligned to start. Left column: numeral + headline in a flex row (gap 1.5rem), lead, the hero drawing (max 580px). Right column is `position: sticky; top: 80px` (10 studs) and holds the white 1:1 call-out and the red page-turn action, stacked with 1.5rem gap. Below 900px the grid collapses to a single column with an explicit reading order: head, lead, page-turn, drawing, drawing legend (a text line that is `display: none` on desktop), then the call-out.

**Steps 2–5** are an `auto-fit, minmax(260px, 1fr)` grid with 2rem gaps; each step is a keyline box (padding 1.5rem) with the numeral and title on a baseline row, time, body (flex 1) and a 260px-max drawing centred at the bottom so the four drawings line up.

**Parts inventory** is a list, not cards: a keyline `border-top`, each row a `72px 48px 1fr` grid (brick / count / text) with 1.5rem block padding and a keyline `border-bottom`; max 880px.

**Previous builds** are `auto-fit, minmax(260px, 1fr)` with 3rem gaps aligned to the bottom edge; each model is max 320px with a keyline-topped caption beneath.

**Testimonial** and **FAQ** are centred columns (max 1000px / 720px single, and 64ch) inside their section. The **closing plate** is a keyline box (padding 2rem) with a `1fr auto` grid: text left, red button right; single column below 900px.

**Footer**: `1.5fr 1fr 1fr 1.5fr` grid, 2 columns at 768px, 1 at 480px, with a keyline bottom bar.

**Spacing rhythm**: the `--stud` module (8px) and the `--space-*` scale (0.25/0.5/1/1.5/2/3/4/6rem). Stud-based offsets appear where the drawing metaphor is literal: sticky top at 10 studs, the "1:1" tag hung 1.5 studs above its box.

**Breakpoints observed**: 480px (footer 1-col), 600px (numeral fixed size, tile labels hidden, step heads stack), 768px (container padding, section padding, nav drawer), 900px (spread collapses, closing stacks).

## Elevation & Depth

This world has no shadows. All four `--shadow-*` tokens resolve to `none`, and no component sets a decorative `box-shadow`. Depth is carried three ways: by the keyline (every element is a printed outline on the same sheet), by the drawings (each brick has a lit top face, a mid left face and a shaded right face in the same hue, stacked in painter's order), and by ghost opacity (what was already built is drawn at 0.38 so the page shows through, and the new piece is solid). Hover states move the element rather than lifting it: buttons and cards translate 2px up, the page-turn slides 4px right, and fills darken to the pressed tint.

The one `box-shadow` in the system is not elevation: input focus draws a two-ring halo (`0 0 0 3px var(--color-page), 0 0 0 5px var(--color-ink)`), a keyline drawn outside the field with a page-coloured gap. Everything else focuses with a 3px ink outline offset 3px.

### Named Rules
**The Printed Sheet Rule.** Nothing floats above the page. No box-shadow, no gradient, no blur, no backdrop-filter. If an element needs to read as "in front", give it a white fill and a keyline (the 1:1 call-out), or draw it solid against ghosted neighbours.

**The Ghost Rule.** Prior assembly is drawn white at 0.38 opacity with soft-ink labels; the current piece is drawn at full opacity in its brick colour. Ghosting is the only "de-emphasis" the drawings use — never a lighter stroke, never a lighter grey.

## Shapes

Corners are small and consistent: `--radius-md` (8px) on every box, button, input and panel; `--radius-sm` (4px) on the compact plates (logo, nav links, language switch, hamburger, icon plate, the "1:1" tag); `--radius-lg` (12px) only on blog images. Nothing is a pill and nothing is square-cornered except the drawings and section rules.

The border is the form language: `--keyline` (2px solid ink) outlines boxes, buttons, inputs, plates and section edges; `--keyline-thin` (1px) is used only for inner dividers (call-out parts, testimonial footer). Nav links carry a 2px transparent border at rest so the hover border does not shift layout. Panels are transparent at rest (steps, cards, testimonial, closing); only call-outs and fields are filled white.

Recurring silhouettes: the isometric brick (30° projection, `cos 30° = 0.866`, brick height 1.2 studs, plate 0.35; studs as ellipses `rx = 0.3u, ry = 0.17u`; stroke `max(1.5px, unit/14)`, round joins), the dashed seat footprint and dashed arrow with a solid triangular head, the 8px keyline-circle dot before each nav link (filled red when active or hovered), and the arrow-right SVG (24-grid, 2–2.5 stroke, round caps) inside every action.

## Components

Character: printed, tactile, matter-of-fact. Every component is a keyline shape on the same blue sheet; interaction nudges it or tints it, never lifts it.

### Buttons
- **Shape:** gently rounded keyline box (8px radius, 2px ink border), Archivo 700 at 1rem, inline-flex with a 0.5rem gap for the trailing arrow.
- **Primary (`.btn-primary`):** New Piece Red fill, white text, `padding: 12px 24px`. Hover: Pressed Red and `translateY(-2px)`; active returns to 0. Closing-plate and hero variants scale padding to 16px 28px / 14px 28px.
- **Secondary (`.btn-secondary`):** white fill, ink text, same keyline and padding. Hover: Inventory Yellow fill, `translateY(-2px)`.
- **Focus:** the global 3px ink outline, 3px offset.
- **Page-turn (`.page-turn`):** the step-1 primary action, a red keyline box laid out as a two-line grid (`1fr auto`): a tracked label line "2. lépés" (Archivo 700, 0.9375rem, 0.04em, 0.9 opacity) over the action name (Archivo 900, 1.375rem), with a 28px arrow spanning both rows on the right. Hover: Pressed Red and `translateX(4px)` — it turns the page rather than rising.

### Call-out box (signature)
- The white 1:1 detail box from instruction books: Call-out White fill, keyline, 8px radius, 1.5rem padding, `position: relative`. A "1:1" scale tag (Archivo 900, 0.8125rem, 0.08em, white keyline plate, 4px radius, 2px 8px padding) hangs 12px above the top edge at 1rem from the left. Inside: the red brick at 120px, name (900, 1.5rem), role in red (700, 1.0625rem), meta in Soft Ink, then a thin-keyline-topped parts list (28px brick swatch + `1×` count + label, Archivo 700 0.9375rem, 6px row gap).

### Keyline panels (steps, cards, testimonial, closing)
- **Corner Style:** 8px.
- **Background:** transparent at rest — the page shows through; hover tint (`--color-callout-tint`) only on interactive cards (service card) and rows (FAQ, nav).
- **Shadow Strategy:** none (see Elevation & Depth); service cards translate 2px up on hover.
- **Border:** 2px keyline.
- **Internal Padding:** 1.5rem (steps), 2rem (service card, testimonial, closing).
- **Testimonial:** the quote mark is an inline SVG in New Piece Red; body 1.125rem max 65ch; author block above a thin keyline.

### Parts list row
- Not a card: rows separated by 2px keyline rules, `72px 48px 1fr` grid, 1.5rem block padding. Brick swatch 64px (colour cycles yellow / blue / white / red), `1×` count in Archivo 900 1.25rem `.tnum`, title 1.25rem, body 1rem Soft Ink max 60ch, optional link in Archivo 700 with a "→" suffix.

### Inputs / Fields
- **Style:** white fill, 2px keyline, 8px radius, `padding: 12px 16px`, Atkinson 1rem, red caret; placeholder in Soft Ink. Labels are Archivo 700 at 0.9375rem, block, 0.25rem below.
- **Focus:** `outline: none` plus the two-ring halo `0 0 0 3px var(--color-page), 0 0 0 5px var(--color-ink)`, transitioned over 200ms.
- **Textarea:** vertical resize, min-height 120px.
- **Error / Disabled:** not defined in the build.

### Navigation
- Sticky header on the page colour with a keyline bottom edge, `z-index: 100`, 1rem block padding. Logo is a keyline plate ("PRIO CONSULTING", Archivo 900, 1rem, 0.08em, 4px radius, 6px 12px padding). Links are Archivo 700 0.9375rem with an 8px keyline circle before each; hover adds the ink border and the pressed tint; the active page fills its dot red and keeps the ink border. Language switch is a small keyline plate (0.8125rem, 5px 10px). Below 768px a hamburger (keyline plate) opens a full-height drawer sliding from the right (`transition: right 300ms`), page-coloured with a keyline left edge, links at 1.125rem.

### Brick diagram (signature)
- `BrickDiagram.astro` renders authored isometric SVG at build time (no runtime script). Each brick: three flat polygons (top / left / right) with a uniform ink stroke, stud ellipses on the top face (omitted on printed tiles, which carry a label on the top face at 0.34u Archivo 700), painter's order by `x + y + z`. Palette per colour: piece `#E14C60 / #D7263D / #B31F33`, blue `#3E78C2 / #1E5AA8 / #174A8C`, gray `#C3CAD2 / #9AA5B1 / #7E8994`, white `#FFFFFF / #F1F1F1 / #DADADA`, yellow `#F9D34A / #F5C518 / #D9AB0F`, ghost all-white at 0.38 with `#2A3340` labels.
- The new piece (`drop`) gets a dashed seat footprint, a dashed vertical guide with a solid arrowhead, a dashed target outline above its top face, and its label printed below the drawing at 0.55u. It animates once: `brick-drop 900ms var(--ease-drop) 250ms both` from `translateY(-drop)` to 0, where `--ease-drop: cubic-bezier(0.16, 1, 0.3, 1)`. Under `prefers-reduced-motion` the animation is removed and the piece renders seated. Tile labels are hidden below 600px; the figure's visible caption carries the names.
- Diagrams are `aria-hidden` unless given `labelledBy`, in which case they are `role="img"` bound to a caption.

### Footer
- Page colour, keyline top, 4rem top padding; keyline logo plate, Soft Ink tagline (max 36ch), column heads Archivo 700 0.9375rem over a keyline rule, link lists in body 1rem with 2px underline on hover; bottom bar keyline-topped, 0.9375rem, Soft Ink.

## Do's and Don'ts

### Do:
- **Do** keep the whole surface on Instruction Sky and separate sections with a 2px keyline `border-top` (The One Ground Rule).
- **Do** outline every box, button, field and plate with `--keyline` (2px `#111111`) and reserve `--keyline-thin` for inner dividers.
- **Do** use New Piece Red for exactly one action per viewport and for the piece being added; hover it to Pressed Red.
- **Do** put yellow only on inventory bricks, the icon plate and the secondary button's hover.
- **Do** fill with white only for 1:1 call-outs and form fields; everything else is transparent on the page.
- **Do** draw imagery as authored isometric bricks via `BrickDiagram` — ghost the prior assembly at 0.38, keep the current piece solid, and give a dropping piece its dashed seat and arrow.
- **Do** set counts with `.tnum` and step numerals in Archivo 900 with line-height 0.8.
- **Do** snap offsets to the 8px stud module and use the `--space-*` scale for rhythm.
- **Do** move on hover (2px up, 4px right) and tint to `--color-callout-tint`; focus with the 3px ink outline or the two-ring input halo.
- **Do** respect `prefers-reduced-motion`: state changes stay, travel stops (the piece renders seated).

### Don't:
- **Don't** add a box-shadow, gradient, blur or backdrop-filter; the `--shadow-*` tokens are `none` on purpose.
- **Don't** introduce a second ground colour (dark band, white section, blue section); Brick Blue is a brick, not a background.
- **Don't** use red for headings, decoration or a second action in the same viewport.
- **Don't** set text in yellow or place text on a yellow ground.
- **Don't** add eyebrows, kickers or uppercase lead-ins above headings; the only tracked uppercase is the sector caption under a previous-builds model.
- **Don't** use icon fonts, glyph icons or stock imagery; icons are inline SVG on the 24-grid, imagery is the brick diagram.
- **Don't** make cards out of lists: parts, FAQ and footer columns are keyline-ruled rows, not boxes.
- **Don't** define new values on the legacy `--color-*` aliases or reference them in new components; use the canonical token names.
- **Don't** hide a dropping piece's seat or arrow; the wordless arrow is what teaches.
