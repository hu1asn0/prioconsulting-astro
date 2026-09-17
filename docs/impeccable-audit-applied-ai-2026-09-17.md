# Impeccable audit — `src/pages/applied-ai.astro`

**Dátum:** 2026-09-17 · **Mód:** Read/Persuade pillar oldal · **Mérés:** `impeccable detect` (forrás + élő dev-oldal 1280×800 és 390×844) + kézi átnézés. A gépi leletek és a vizuális ítélet külön jelölve.

## Audit Health Score

| # | Dimenzió | Pont | Fő lelet |
|---|---|---|---|
| 1 | Accessibility | 2 | Elsődleges CTA fehér az aranyon 2,9:1 (AA: 4,5:1) — site-szintű |
| 2 | Performance | 3 | `max-height`/`width` animáció a FAQ-ban és a navban (közös komponens) |
| 3 | Responsive | 3 | ~100 karakteres sorok asztali nézetben (900 px tartalom) |
| 4 | Theming | 3 | Token-fegyelem jó; 2 beégetett `rgba(255,255,255,…)` a sötét sávon (dokumentált) |
| 5 | Implementation Integrity | 2 | „Oldalsó sáv” minta 4 helyen ismétlődik + 3 px felső szegély lekerekített kártyán |
| **Össz.** | | **13/20** | **Acceptable — jelentős, de behatárolt munka** |

## Implementation Integrity verdikt

**Feltételesen megfelel.** A tokenrendszer következetes (a fájl stílusai `var(--…)`-ra épülnek, egyetlen literális szín sincs a világos felületeken), a hierarchia h1→h2→h3 tiszta, a szöveg termékspecifikus (nem cserélhető fel másik cég oldalával). A gyengeség egyetlen ismétlődő minta: a **vastag egyoldali színes szegély** (`.failure-item` 3 px arany bal, `.disclosure` 3 px szürke bal, Testimonial 4 px arany bal, blockquote 4 px) és a **3 px felső szegély + 12 px radius** kombináció a képesség- és illeszkedés-kártyákon (609., 816. sor). A detektor ezt „a legfelismerhetőbb AI-generált jel”-ként jelöli; a DESIGN.md a testimonial sávot dokumentált szándékként rögzíti, a többi három nem szándékos rendszer, hanem sodródás.

**Hamis pozitív (ellenőrizve):** `radial-spotlight-glow` ×2 — a Hero két radiális fénye; a DESIGN.md kimondottan atmoszféraként rögzíti, a brief nyer. `design-system-font-size` ×10 advisory — a DESIGN.md tipográfiai rámpája hiányos (1rem, 0,9375rem, 1,0625rem, 0,875rem hiányzik), a kód nem hibás.

## Executive summary

- **13/20 (Acceptable).** Leletek: **P0: 0 · P1: 2 · P2: 4 · P3: 3.**
- Top: (1) CTA-kontraszt 2,9:1 minden oldalon; (2) `.phase-time` 4,3:1 — hajszállal AA alatt; (3) 100 karakteres sorok; (4) oldalsó-sáv minta ×4; (5) h2→h4 ugrás a lábléc miatt.
- Következő lépés: a két P1 egyetlen token-döntéssel javítható (`--color-cta` sötétítése VAGY a gombszöveg cseréje `--color-primary`-ra) — előbb döntés, aztán `/impeccable polish`.

## Részletes leletek

### [P1] Elsődleges CTA: fehér szöveg aranyon 2,9:1
- **Hely:** `.btn-primary` (`src/styles/global.css:185`), ezen az oldalon a Hero CTA + a záró „Kérjen felmérést” (547–556. sor)
- **Kategória:** Accessibility · **WCAG:** 1.4.3 (AA 4,5:1; nagy szövegre 3:1 — a gomb 1rem/600, nem számít nagynak)
- **Hatás:** a site egyetlen cselekvésre hívó eleme a gyengén látóknak és napfényben mobilon rosszul olvasható. Mérve asztali és mobil nézetben egyaránt.
- **Javaslat:** két út, mindkettő token-szintű, egy helyen: (a) gombszöveg `--color-primary` (#0F172A az aranyon ≈ 8,6:1) — a DESIGN.md „nav-lang-switch hover” már ezt a párost használja, tehát rendszeren belüli; (b) `--color-cta` sötétítése #A16207-re (fehér rajta ≈ 4,6:1) — de ez az egész arany-jelentést tompítja. **Ajánlás: (a).**
- **Parancs:** `/impeccable polish`

### [P1] `.phase-time` címke 4,3:1
- **Hely:** `applied-ai.astro` style 154–161 (`--color-text-light` #64748B a `--color-surface` #F1F5F9-en), a „Hogyan dolgozom” négy szakaszának időcímkéje; ugyanez a páros ismétlődik ×4 a mérésben
- **Kategória:** Accessibility · **WCAG:** 1.4.3
- **Hatás:** 0,875rem nagybetűs címke — pont az a méret, ahol a 4,3:1 már látható romlás.
- **Javaslat:** `--color-secondary` (#334155, ≈ 9:1) — a DESIGN.md szerint ez a másodlagos szöveg tokenje; a `--color-text-light` maradjon a fehér kártyákon (ott 4,8:1).
- **Parancs:** `/impeccable polish`

### [P2] Sorhossz ~100 karakter asztali nézetben (38 találat)
- **Hely:** `.container-narrow`-szerű 900 px-es tartalomszélesség (style 1–4. sor) 1,125rem betűvel
- **Kategória:** Responsive/olvashatóság · **Hatás:** hosszú, szöveges pillar oldal — a szem elveszti a sort. A DESIGN.md 65–75ch-t rögzít a szövegblokkokra.
- **Javaslat:** a folyószöveg-blokkok `max-width: 72ch` (≈ 760 px), a rácsok maradhatnak 900-on.
- **Parancs:** `/impeccable layout`

### [P2] Oldalsó színes sáv mint ismétlődő minta (×4 típus)
- **Hely:** `.failure-item` (662), `.disclosure` (762), Testimonial (komponens, 61), `blockquote` (global.css 333)
- **Kategória:** Implementation Integrity · **Hatás:** a detektor „AI-tell”-nek jelöli; négy különböző jelentésre (hiba-lista, jogi megjegyzés, idézet, blokkidézet) ugyanaz a vizuális eszköz — a jelentés elmosódik.
- **Javaslat:** a Testimonial-sáv marad (dokumentált identitás); a `.failure-item` kapjon számozott jelölőt sáv helyett (a címekben már ott az 1–5.), a `.disclosure` legyen sima szürke-tónusú megjegyzés keret nélkül.
- **Parancs:** `/impeccable distill` majd `/impeccable polish`

### [P2] 3 px felső szegély lekerekített kártyán (609, 816)
- **Hely:** képesség-kártyák és illeszkedés-kártyák (`border-top: 3px solid var(--color-border)` + `--radius-lg`)
- **Kategória:** Implementation Integrity · **Hatás:** a vastag egyenes szegély a lekerekített sarokba fut, láthatóan „elvágja”.
- **Javaslat:** 1 px hairline körben (mint a ServiceCard) vagy a radius elhagyása — a DESIGN.md kártya-mintája az előbbi.
- **Parancs:** `/impeccable polish`

### [P2] h2 → h4 ugrás az oldal végén
- **Hely:** `Footer.astro` oszlopcímei `h4` (31. sor: „Navigáció”), az oldal utolsó címsora `h2` (547)
- **Kategória:** Accessibility · **WCAG:** 1.3.1 (ajánlás) · **Hatás:** képernyőolvasó vázlatában lyuk; **minden oldalon**, nem csak itt.
- **Javaslat:** a lábléc oszlopcímei `h3`-ra (vagy `<p class="footer-heading">`, mert nem tartalomcímek).
- **Parancs:** `/impeccable harden`

### [P3] `max-height` és `width` animálása
- **Hely:** `FAQ.astro:83` (válasz nyitás `max-height` + `padding`), `Nav.astro:156` (aláhúzás `width`)
- **Kategória:** Performance · **Hatás:** layout-újraszámolás minden képkockán; kis elemeken ma nem látható akadás, de mobilon a FAQ-nyitás mérhetően drágább.
- **Javaslat:** FAQ: `grid-template-rows: 0fr → 1fr`; nav: `transform: scaleX()` `transform-origin: left`.
- **Parancs:** `/impeccable optimize`

### [P3] `prefers-reduced-motion` globális 0,01 ms-os kikapcsolás
- **Hely:** `global.css` Reduced Motion blokk
- **Kategória:** Accessibility · **Hatás:** a FAQ-nyitás és a hamburger állapotváltása visszajelzés nélkül „ugrik”; az audit-szabály szándékos alternatívát vár, nem teljes kiölést. Gyakorlatban elfogadott minta, ezért P3.
- **Parancs:** `/impeccable animate`

### [P3] Tartalmi megjegyzés (nem hiba, döntés)
- A „A bizonyíték: saját, futó rendszerek” szakasz hat rendszert sorol. A PRODUCT.md bizonyíték-listáján ma csak a MOL-testimonial és a CV-cégnevek állnak. Ez saját rendszer leírása, nem ügyfél-állítás, tehát nem sérti a tilalmat — de érdemes a PRODUCT.md-ben kimondani, hogy a saját stack leírható.

## Minták, rendszerszintű

1. **Egy tokenpár két helyen bukik** (`--color-text-light` világos felületen; fehér az aranyon): a hiba a tokenszinten van, nem az oldalon — egy javítás mind a 18 oldalt rendbe teszi.
2. **A „sáv = hangsúly” reflex** négy különböző jelentésre.

## Ami jól működik

- Teljes token-fegyelem: 0 literális szín a világos felületeken, a két `rgba` fehér a sötét sávon dokumentált.
- Tiszta h1→h2→h3 hierarchia 34 címsoron, az egyetlen ugrás komponensből jön.
- Mobil (390×844): 0 túlcsordulás, 0 fix szélesség, CTA ≈ 48 px magas (44 felett).
- Dekoratív SVG `aria-hidden`, a CTA-k valódi `<a>` elemek, a fókuszgyűrű globális.
- FAQPage + Service JSON-LD a fájlban, a PRODUCT.md SEO-kötelmét tartja.

## Ajánlott lépések (prioritás szerint)

1. **[P1] döntés** a CTA-kontrasztról: (a) sötét gombszöveg vagy (b) sötétebb arany — user-döntés, mert az identitást érinti
2. **[P1] `/impeccable polish src/pages/applied-ai.astro`** — `.phase-time` token-csere + a CTA-döntés átvezetése + a 3 px felső szegélyek
3. **[P2] `/impeccable layout src/pages/applied-ai.astro`** — folyószöveg 72ch
4. **[P2] `/impeccable distill src/pages/applied-ai.astro`** — sáv-minta redukció
5. **[P2] `/impeccable harden src/components/Footer.astro`** — h4 → h3
6. **[P3] `/impeccable optimize src/components/FAQ.astro`** — `grid-template-rows`
7. **[záró] `/impeccable polish`** és újra `/impeccable audit`
