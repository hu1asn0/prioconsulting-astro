# Brief — prioconsulting.hu főoldal redesign

**Dátum:** 2026-09-17 · **Parancs:** `/impeccable shape src/pages/index.astro` · **Mód:** Persuade
**Kiválasztott világ:** *Az építési útmutató* (a második, merészebb kéz győztese — a kocka a Sötétkamrát tette az élre, a te döntésed a kihívót választotta, ami mérésem szerint mindkét tengelyen vert).
**Seed:** `fe17abf6`, re-roll 1, bolder · **Építési út:** code-led (nincs képgenerálás)

## 1. Feladat és közönség
- **Ki érkezik:** magyar nagyvállalati döntéshozó (CIO, PMO-vezető, programigazgató), két értekezlet között, egy konkrét programhoz keres interim IT PM-et vagy AI-delivery PM-et. Másodlagos: közvetítő/fejvadász, aki a CV mögé néz.
- **Látogatói mód:** Persuade — a látogató *dönt és cselekszik* (felmérést kér).
- **Tíz másodperc alatt:** ki ez, mit tesz hozzá a programomhoz, hogyan kezdünk.

## 2. Eredmény és bizonyíték
- **Elsődleges cselekvés:** „Kérjen felmérést" (→ `/kapcsolat/`). Siker = egy minősített döntéshozó időpontot kér.
- **Amit el kell hinnie:** a programja már áll (nem nulláról kezdünk); egy pontosan illeszkedő darab hiányzik; az illesztés lépésekben, fegyelmezetten történik.
- **Használható bizonyíték (PRODUCT.md, kizárólagos):** MOL-testimonial (Gerebenics Máté); CV-cégnevek (MVM, E.ON, OPUS TITÁSZ, MOL, Allianz, PPF, Beck&Pollitzer, Kienle+Spiess, FlexLink, SANYO) mint „dolgozott vele"; saját futó rendszerek leírása. **Tilos:** minden más idézet, logó, szám, díj. A mai „50+ sikeres projekt / 100% elégedettség" sáv **nem kerül át**, amíg forrása nincs.

## 3. A kiválasztott irány
- **Vizuális tekintély:** csere — a mai éjféli pala + arany világ *bizonyíték* arról, mi a tárgy, nem tekintély afölött, mi lesz. Az új világ a végén saját DESIGN.md-t kap (a `document` írja, a kész buildből).
- **Tézis:** *A programod a már összerakott, szürkére halványított modell; amit én hozok, az a lépés új darabja, nyíllal a helyére.* A kategória-alapértelmezést (sötét hero + három kártya + idézet + GYIK) elutasítja.
- **Világ:** égkék lap (az útmutatófüzet kékje), fekete kontúr minden elemen, egyetlen kiemelő szín az *új darabra* (piros), sárga csak a „készlet" leltárban. Stud-rács modul rendez minden igazítást. Betű: oly nagy lépésszámok, hogy szinte ez az egyetlen szöveg; a próza rövid, a nyíl tanít.
- **Első képernyő (asztali):** dupla oldal. Bal: „1" óriás lépésszám; alatta a vállalati program tömbje szürkére halványítva (absztrakt, kontúros), és egy piros darab — *Applied AI IT PM* — nyíllal a helyére. Jobb felső sarok: 1:1 kiemelő doboz: név · szerep · „15 év". Jobb alul a CTA: **„→ 2. lépés: felmérés"** — lapozó nyíl, nem gomb-sablon.
- **Látogatói út (lapozás, nem görgetés-szekciók):** 1 · a hiányzó darab → 2 · felmérés → 3 · pilot → 4 · éles üzem → 5 · átadás (a négy szakasz mint lépések, az előző lépés eredménye mindig halványan alatta) → **„Alkatrészek a készletben"** (képességek leltára, 1:1 dobozokban) → **„Ebből épült"** (a CV-cégek mint korábbi építések, keltezve) → a MOL-idézet mint az útmutató hátoldali megjegyzése → GYIK → záró CTA.
- **Aláírás-interakció:** a lépés új darabja a nyíl mentén *beleereszkedik* a helyére (egyetlen szerzett mozgás, exponenciális kifutás; `prefers-reduced-motion` alatt statikusan a helyén). Semmi más nem animál.
- **Kivitelezési következmény:** a rajzok *authored* vektor-illusztrációk (izometrikus kockák, kontúr + lapos szín) — technikai rajz, nem dekoráció; a stud-rács CSS-modulként (`--stud`) rendezi a rácsot; a lépésszámok tabuláris számjegyek.

## 4. Hatókör és határok
- **Cél:** `src/pages/index.astro` + `src/pages/en/index.astro` első; a `Layout`/`Nav`/`Footer` és a tokenek az új világra váltanak — ez **mind a 18 oldalt** érinti; a belső oldalak első körben a világot öröklik (tokenek, nav, lábléc), saját kompozíciót később kapnak.
- **Érintetlen:** tartalom és állítások, magázás, SEO-struktúra (JSON-LD, hreflang, hub-and-spoke), elrejtett e-mail, a Beehiiv-blog build, az `/applied-ai/` szövege.
- **Anti-célok:** játékbolt-hangulat (kabala, csillagburst, „gyűjtsd össze"); eyebrow-címke a címsor fölött (tiltott); hero-metrika sáv; kártya a kártyában; bármely LEGO-védjegy, név vagy logó — a forma a *generikus építőkocka-útmutató*, nem egy márka.
- **Fidelitás:** éles, kiadható főoldal HU+EN; nem prototípus.

## 5. Állapotok és tartományok
- Lépésszám 1–5 (fix). Képesség-leltár 4–8 tétel. Korábbi építések 10 cégnév (CV). Idézet 1 (angol, ~90 szó). GYIK 4–6.
- Hosszú magyar címek (≤ 60 karakter/sor) és angol tükör; a piros darab felirata két nyelven eltérő hosszú.
- Nincs üres/hiba-állapot a főoldalon; a kapcsolat-űrlap a `/kapcsolat/`-on marad.

## 6. Interakció és elrendezés
- Hierarchia: lépésszám > rajz > egy mondat > CTA. A rács 12 oszlop, de a *stud-modul* (pl. 8 px) az igazítás egysége.
- Reszponzív: asztalon dupla oldal (bal rajz, jobb kiemelő); mobilon lépésenként egy lap, a kiemelő a sarokba tűzve; a rajz sosem szélesebb a stud-rácsnál.
- Fókusz: a nyíl-CTA-nak látható fókuszgyűrű; a rajzok `aria-hidden`, a lépések `<ol>`.

## 7. Kötöttségek és nyitott döntések
- Astro 6, statikus; cPanel deploy; a cron H/Sze/P a `main`-t viszi — **feature branchen épül, a `main` addig tiszta**.
- Kontraszt: fekete az égkéken ≥ 4,5:1 (mérendő az árnyalat rögzítésekor); a piros darabon nincs szöveg.
- **Nyitott (nem találom ki):** (1) az égkék pontos árnyalata és a piros — a build első körében 3 variáns mérve; (2) a „program tömbje" absztrakciója — SAP-szerű modulnevek (IS-U, CRM, ERP) legyenek-e rajta, vagy névtelen tömb; (3) licencelt stock kocka-fotó a hero rajz helyett — engedélyezted, de a vektor-rajz jobban tartja a világot, és jogilag tisztább; (4) a mai statisztika-sáv sorsa.
