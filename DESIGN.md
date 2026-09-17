---
name: Prio Consulting
description: Boardroom-dark consulting site — midnight slate, one antique-gold accent, Lexend headlines.
colors:
  midnight-slate: "#0F172A"
  slate-ink: "#334155"
  antique-gold: "#CA8A04"
  antique-gold-deep: "#A16207"
  paper: "#F8FAFC"
  paper-shaded: "#F1F5F9"
  white: "#FFFFFF"
  near-black: "#020617"
  slate-muted: "#64748B"
  hairline: "#E2E8F0"
typography:
  display:
    fontFamily: "Lexend, sans-serif"
    fontSize: "clamp(2.25rem, 5vw, 3.75rem)"
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: "-0.02em"
  headline:
    fontFamily: "Lexend, sans-serif"
    fontSize: "clamp(1.5rem, 3.5vw, 2.5rem)"
    fontWeight: 600
    lineHeight: 1.2
  title:
    fontFamily: "Lexend, sans-serif"
    fontSize: "clamp(1.25rem, 2.5vw, 1.75rem)"
    fontWeight: 600
    lineHeight: 1.2
  body:
    fontFamily: "Source Sans 3, sans-serif"
    fontSize: "1.125rem"
    fontWeight: 400
    lineHeight: 1.7
  label:
    fontFamily: "Lexend, sans-serif"
    fontSize: "0.8125rem"
    fontWeight: 600
    letterSpacing: "0.12em"
    lineHeight: 1.2
rounded:
  sm: "6px"
  md: "8px"
  lg: "12px"
  xl: "16px"
spacing:
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
    backgroundColor: "{colors.antique-gold}"
    textColor: "{colors.white}"
    typography: "{typography.label}"
    rounded: "{rounded.md}"
    padding: "12px 28px"
  button-primary-hover:
    backgroundColor: "{colors.antique-gold-deep}"
    textColor: "{colors.white}"
  button-secondary:
    backgroundColor: "transparent"
    textColor: "{colors.white}"
    rounded: "{rounded.md}"
    padding: "12px 28px"
  button-secondary-hover:
    backgroundColor: "{colors.white}"
    textColor: "{colors.midnight-slate}"
  card:
    backgroundColor: "{colors.white}"
    textColor: "{colors.slate-ink}"
    rounded: "{rounded.lg}"
    padding: "{spacing.2xl}"
  input:
    backgroundColor: "{colors.white}"
    textColor: "{colors.near-black}"
    rounded: "{rounded.md}"
    padding: "12px 16px"
  lang-switch:
    backgroundColor: "transparent"
    textColor: "{colors.antique-gold}"
    rounded: "{rounded.sm}"
    padding: "4px 10px"
---

# Design System: Prio Consulting

## Overview

**Creative North Star: "The Boardroom Whiteboard"**

The site is built like a senior consultant's boardroom: a deep, cool, midnight-slate
ground carries the important moments (hero, footer, mobile navigation), and a single
antique-gold accent marks exactly the places where a decision is asked for — the CTA,
the active nav item, the focus ring, the quote bar on a testimonial. Everything else is
paper: pale slate surfaces, hairline borders, generous whitespace. Nothing shimmers;
authority comes from contrast and restraint, not from effects.

Density is low and editorial. Headlines are large, tight-tracked Lexend; body copy is
Source Sans 3 at a comfortable 1.125rem with 1.7 line-height. Sections alternate between
paper and shaded-paper backgrounds, with dark bands reserved for the opening and closing
of a page. Motion is quiet: 150–300 ms eases, a one- or two-pixel lift on hover, no
bounce.

**Direction (confirmed 2026-09-17, not yet implemented):** the owner wants components to
feel *more tactile and bolder* than today. The tokens in this file describe the current
build; when new work lands, it may deepen shadows and hover motion within the existing
vocabulary (`--shadow-lg`/`--shadow-xl`, larger lift) but must not add colour, fonts or
new radii to do so.

**Key Characteristics:**
- Dark-band framing: midnight-slate hero and footer, paper body between them.
- One accent, used sparingly: antique gold marks action and attention only.
- Typography-led hierarchy: Lexend display vs. Source Sans 3 body, no images today.
- Soft, ambient depth: hairline borders + small shadows; lift on hover.
- Formal register on Hungarian pages; English mirrors the same structure.

## Colors

A cool, low-saturation slate scale with a single warm gold accent.

### Primary
- **Midnight Slate** (#0F172A): the boardroom ground. Hero, footer, mobile nav drawer,
  and all headings on light surfaces. Also the sticky nav at 95% opacity with a 12px
  backdrop blur.
- **Slate Ink** (#334155): secondary text — card descriptions, section subtitles, FAQ
  answers, testimonial quotes. The second radial glow in the hero uses it at 20%.

### Secondary
- **Antique Gold** (#CA8A04): the only accent. Primary buttons, link hover, active nav
  underline, language switch, focus ring, testimonial left bar, blockquote bar,
  stat numbers, uppercase eyebrows. Tinted to 8–15% for icon tiles and hero glow, 30%
  for hover borders.
- **Antique Gold Deep** (#A16207): primary button hover and blog-link hover only.

### Neutral
- **Paper** (#F8FAFC): page background and `.section-light`.
- **Paper Shaded** (#F1F5F9): alternating `.section-surface` and FAQ question hover.
- **White** (#FFFFFF): cards, testimonials, inputs, FAQ question rows, button text.
- **Near Black** (#020617): body text on light surfaces.
- **Slate Muted** (#64748B): tertiary text — testimonial role line, captions.
- **Hairline** (#E2E8F0): card, input and FAQ borders.

On dark bands, text is white at 75–80% opacity for body and links, 65% for footer
links; headings are pure white.

### Named Rules
**The One Gold Rule.** Antique gold appears on a screen only where the reader is being
asked to act or look: buttons, active state, focus, one accent bar. It is never a
background for text blocks and never used decoratively at full strength.

**The Tinted Dark Rule.** There is no pure black or pure grey. Dark is midnight slate;
greys are slate-tinted. New surfaces pick from the slate ramp, not from `#000`/`#333`.

## Typography

**Display Font:** Lexend (with sans-serif fallback), weights 300–700 loaded
**Body Font:** Source Sans 3 (with sans-serif fallback), weights 300–700 loaded
**Label Font:** Lexend, uppercase, wide-tracked

**Character:** Lexend gives headlines a rounded, legible, slightly geometric confidence;
Source Sans 3 keeps long copy neutral and fast to read. The pairing reads as
"experienced, plain-spoken", not "startup".

### Hierarchy
- **Display** (700, `clamp(2.25rem, 5vw, 3.75rem)`, 1.2, −0.02em): hero title only.
  Page `h1` outside the hero uses `clamp(2rem, 5vw, 3.5rem)`.
- **Headline** (600, `clamp(1.5rem, 3.5vw, 2.5rem)`, 1.2): section `h2`, usually
  centred with a Slate Ink subtitle beneath.
- **Title** (600, `clamp(1.25rem, 2.5vw, 1.75rem)`, 1.2): `h3`; card titles use a fixed
  1.25rem. `h4` is 500 weight, `clamp(1.125rem, 2vw, 1.25rem)`.
- **Body** (400, 1.125rem, 1.7): paragraphs. Blog content uses 1.8 line-height. Hero
  subtitle is `clamp(1.125rem, 2vw, 1.375rem)` at 75% white, max 600px wide.
- **Label** (600, 0.8125rem, 0.12em, uppercase): eyebrows above headlines. Footer
  column headings are the same treatment at 0.9375rem / 0.05em. Nav links are Lexend
  500 at 0.9375rem, sentence case.
- **Wordmark**: "PRIO CONSULTING" in Lexend 700, 1.5rem, 0.15em tracking, white.
- **Stat numbers**: Lexend 700, `clamp(2.5rem, 5vw, 3.5rem)`, antique gold, line-height 1.

### Named Rules
**The Lexend-Means-Structure Rule.** Lexend is used for anything that names or
navigates (headings, buttons, nav, labels, wordmark, numbers). Source Sans 3 is used for
anything that is read. Do not set body copy in Lexend or headings in Source Sans.

## Layout

Single centred container, max 1200px, 1rem side padding (2rem from 768px). Sections
pad 4rem vertically (6rem from 768px) and alternate Paper / Paper Shaded backgrounds;
the hero and footer are Midnight Slate bands. Content blocks are narrower than the
container on purpose: hero copy 800px, testimonials 700–1000px, FAQ 800px, the
Applied AI band 760px.

Grids are fluid `auto-fit` grids, not fixed columns: services `minmax(300px, 1fr)`,
testimonials `minmax(320px, 1fr)`, stats `minmax(200px, 1fr)`, all with 2–3rem gaps.
The footer is a 1.5fr / 1fr / 1fr / 1.5fr grid that collapses to two columns at 768px
and one at 480px.

Spacing scale is an 8-step rem scale (0.25 → 6rem); components use `md`/`lg` internally,
`xl`/`2xl` between siblings, `3xl`/`4xl` between sections.

Breakpoints observed: 480px, 768px. The navigation switches to a hamburger and a
280px right-hand drawer below 768px. `prefers-reduced-motion` collapses all
transitions to ~0 ms.

## Elevation & Depth

A hybrid: tonal layering does most of the work (dark band vs. paper vs. shaded paper vs.
white card), and shadows are small, ambient and mostly a *response to hover*. Surfaces
at rest carry a hairline border and at most `--shadow-sm`.

### Shadow Vocabulary
- **Rest** (`box-shadow: 0 1px 2px rgba(0,0,0,0.05)`): service cards and testimonials
  at rest.
- **Lift** (`box-shadow: 0 4px 6px rgba(0,0,0,0.1)`): primary button on hover.
- **Hover card** (`box-shadow: 0 10px 15px rgba(0,0,0,0.1)`): service card on hover,
  with a 2px upward translate and a 30% gold border.
- **Drawer** (`box-shadow: 0 20px 25px rgba(0,0,0,0.15)`): mobile nav drawer only.
- **Focus glow** (`0 0 0 3px rgba(15,23,42,0.12)`): inputs on focus, paired with a
  Midnight Slate border.

The hero adds depth with two soft radial gradients (gold at 8%, slate ink at 20%) —
atmosphere, not a picture.

### Named Rules
**The Hover-Earns-Depth Rule.** Surfaces are near-flat at rest; shadow and lift arrive
on interaction. (Direction: the owner wants this lift to feel bolder — increase within
the existing four-step shadow scale rather than inventing new shadow values.)

## Shapes

Gently rounded throughout: 6px for small controls (language switch), 8px for buttons,
inputs and FAQ rows, 12px for cards, testimonials and blog images, 16px reserved for
large containers. Borders are 1px hairlines; the only heavier strokes are the 2px white
outline of the secondary button, the 1.5px gold outline of the language switch, and the
4px gold left bar on testimonials and blockquotes. Icon tiles are 48px squares with 8px
radius on a 10% gold tint. No pills, no circles, no sharp corners.

## Components

Character today: quiet and assured — everything responds, nothing jumps.
Direction: more tactile and bolder (see Overview).

### Buttons
- **Shape:** softly rounded (8px), inline-flex with 0.5rem icon gap, Lexend 600 at 1rem.
- **Primary:** antique gold on white text, 12px 28px padding (hero variant 14px 32px at
  1.0625rem). Hover → gold deep, 1px lift, `--shadow-md`.
- **Secondary (on dark only):** transparent with a 2px white outline, white text.
  Hover → white fill, midnight-slate text, 1px lift. Not used on light surfaces.
- **Focus:** global 2px antique-gold outline, 2px offset.

### Chips / Eyebrows
- **Language switch:** gold text and 1.5px gold outline, 6px radius, 4px 10px padding,
  Lexend 600 at 0.8125rem, 0.05em tracking. Hover → gold fill, midnight text.
- **Eyebrow label:** uppercase gold Lexend 600, 0.8125rem, 0.12em tracking, above a
  headline. Text only, no background.

### Cards / Containers
- **Service card:** white, 12px radius, 3rem padding, hairline border, `--shadow-sm`.
  Hover → `--shadow-lg`, 2px lift, 30% gold border. Contains a 48px gold-tinted icon
  tile, a 1.25rem Lexend title, Slate Ink description at 1rem.
- **Testimonial:** white, 12px radius, 3rem padding, 4px gold left bar, `--shadow-sm`.
  Italic Slate Ink quote at 1.125rem; author in Lexend 600 midnight, role in Slate
  Muted at 0.875rem. A faint gold quote glyph at 15% sits above the text.
- **FAQ item:** hairline-bordered, 8px radius, white question row (Lexend 500,
  1.0625rem) with a gold chevron that rotates 180° when open; answer reveals via
  max-height over 300 ms. Row hover → shaded paper; item hover → 30% gold border.

### Inputs / Fields
- **Style:** white, hairline border, 8px radius, 12px 16px padding, Source Sans 3 at
  1rem. Labels are 500 weight at 0.9375rem above the field.
- **Focus:** border turns Midnight Slate with a 3px 12% slate glow; the global gold
  outline is suppressed for inputs in favour of this glow.
- **Textarea:** vertical resize only, min 120px.

### Navigation
- **Header:** sticky, midnight slate at 95% with 12px backdrop blur and a 15% gold
  hairline underneath. Wordmark left, links right at 2rem gap.
- **Links:** Lexend 500, 0.9375rem, white at 80%. Hover/active → gold text with a 2px
  gold underline that grows from 0 to 100% width over 200 ms.
- **Mobile (<768px):** hamburger; links move into a 280px midnight-slate drawer sliding
  in from the right over 300 ms with `--shadow-xl`, links at 1.125rem.

### Dark Bands (signature)
Hero and footer share the same treatment: Midnight Slate ground, white headings, body
text at 75% white, footer links at 65% white rising to gold on hover, and gold-tinted
radial glows in the hero. This is the frame every page sits inside.

## Do's and Don'ts

### Do:
- **Do** keep antique gold to action and attention (The One Gold Rule); use its
  8–15% tints for icon tiles and glows, 30% for hover borders.
- **Do** frame pages with dark bands (hero + footer) and keep the body on paper.
- **Do** use the existing four-step shadow scale and 1–2px lift for hover; make it
  bolder within that scale when the "tactile" direction is implemented.
- **Do** set headings, buttons, labels and numbers in Lexend and running text in
  Source Sans 3.
- **Do** keep `prefers-reduced-motion` support and the gold `:focus-visible` outline on
  every new interactive element.

### Don't:
- **Don't** introduce pure black, pure grey, a second accent colour, or gradients as
  text backgrounds — the palette is slate + one gold.
- **Don't** nest cards inside cards or wrap plain text sections in card chrome; the
  section background alternation *is* the grouping.
- **Don't** add a third font, condensed/display faces, or all-caps body copy.
- **Don't** use bounce or elastic easing; all motion is plain `ease` at 150–300 ms.
- **Don't** put the secondary (outline) button on light surfaces — it is designed for
  the dark bands only.
