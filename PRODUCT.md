# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Users

Primary: a decision-maker at a Hungarian enterprise or mid-market company (CIO, PMO lead,
programme director) who needs an interim IT project manager or an AI-delivery PM for a
concrete programme. They open the site to decide whether to book a discovery call.

Secondary (confirmed, frequent): an IT staffing intermediary or headhunter checking the
profile on behalf of their client. For them the site is the credibility check behind a CV.

Both must understand within ~10 seconds who this is and what they deliver; the
decision-maker has priority when the two needs conflict.

Languages: Hungarian (primary, `/`) and English (`/en/`). International readers enter via
the English pages; they are not the primary audience.

## Product Purpose

prioconsulting.hu is the sales site of Prio Consulting Kft. (Budapest). It exists to turn
buyer-intent traffic (search, Google Business Profile, LinkedIn) into discovery calls, RFPs
and contracts. Success = a qualified decision-maker books a call or sends a request.

## Positioning

**Applied AI IT PM** — a senior enterprise IT project manager (SAP IS-U, energy sector,
carve-out, S/4HANA; MOL, E.ON, MVM programmes) who also runs his own production AI stack
and delivers AI initiatives with project discipline. The claim a neighbouring consultant
could not truthfully make: not an AI expert selling PM, nor a PM reselling AI slides, but
a PM whose AI competence is operational and demonstrable.

Two service layers, one funnel:
- **Core (~60%)** — senior interim IT PM for enterprise programmes (SAP IS-U / energy /
  carve-out / S/4HANA / banking / pharma).
- **Applied AI (~40%)** — AI-delivery PM contractor: production AI stack, agent ops,
  AI-assisted PMO. Pillar page: `/applied-ai/` (HU) and `/en/applied-ai/`.

## Operating Context

- Single legal entity: Prio Consulting Kft., 1077 Budapest, Wesselényi u. 4. (postal
  address; company registry shows 1075 — both are correct for their purpose). The
  former sole-proprietorship (simonprojects e.v.) is suspended since 2026-04-25; nothing
  on this site may present it as a separate business.
- Sister site **simonprojects.eu** is a technical-proof site of the same company. Its
  CTAs point back here; this site may cross-link to it. Impressum on both names
  Prio Consulting Kft.
- Astro 6 static site, HU + EN, deployed via cPanel (branch pull by cPanel cron). A
  `sync-beehiiv.sh` cron (Mon/Wed/Fri 10:15) rebuilds the site with newsletter posts
  from Beehiiv — blog content arrives automatically.
- Contact: +36 30 822 5771; e-mail is obfuscated on-page (`info[ at]prioconsulting.hu`,
  no `mailto:`) by deliberate decision — keep it that way.
- SEO baseline is in place and must be preserved: JSON-LD (Organization,
  ProfessionalService, Person, FAQPage, Service[]), hreflang HU↔EN, hub-and-spoke
  links from service pages to `/applied-ai/`.

## Capabilities and Constraints

- Pages: home, services (`/szolgaltatasok`), Applied AI pillar, about (`/rolam`), blog
  (Beehiiv-fed), contact, privacy, impressum — each in HU and EN.
- Components: Nav, Hero, ServiceCard, Testimonial, FAQ, NewsletterSignup, Footer, JsonLd.
- Fonts in use: Lexend (headings) + Source Sans 3 (body), loaded from Google Fonts.
- Tone on the Hungarian pages is formal (magázó); keep it consistent.
- The site currently has **no photographs or illustrations** (icon fonts + typography
  only). A headshot and an `og-default.png` (1200×630) are known gaps — open items, not
  to be faked with stock imagery without a decision.
- Undecided: image strategy for marketing content; whether the site should carry
  quantified project outcomes (none are recorded today).

## Brand Commitments

- Name: Prio Consulting (Kft.). Headline positioning used on LinkedIn and both sites:
  "Applied AI IT PM @ Prio Consulting".
- Voice: senior, concrete, no hype; project-discipline language. Hungarian first.

## Evidence on Hand

Usable, and the **only** evidence permitted on the site:

- One real client testimonial: Máté Gerebenics, MOL Hungary Ltd. (English quote; used on
  home and about pages in both languages).
- Company names backed by the CV: MVM, E.ON, OPUS TITÁSZ, MOL, Allianz, PPF,
  Beck&Pollitzer, Kienle+Spiess, FlexLink, SANYO. Use as "worked with" references only —
  no claims about outcomes that are not in the CV.

Explicit absences — future work must **not** fabricate these:

- No other testimonials, quotes, client logos, awards, certifications-as-proof, or
  case-study numbers. Invented references have already been removed once (OTP Bank,
  Richter Gedeon, "K. Péter" — 2026-04/07); this is a hard rule, not a preference.
- No pricing, no headcount, no revenue figures.
- Where proof is missing, say less rather than invent.

## Product Principles

1. Ten-second clarity for a decision-maker: who, what, for which kind of programme.
2. Proof over adjectives — only the evidence listed above; absence is stated, not filled.
3. Two layers, one person: Applied AI never contradicts or hides the SAP/energy core.
4. Hungarian buyer first; English is a faithful mirror, not a separate brand.
5. Do not break what already works: SEO structure, hreflang, obfuscated contact, the
   Beehiiv-driven blog build.
