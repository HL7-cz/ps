Na následující stránce naleznete poznámky k implementaci pacientského souhrnu. Týkají se tvorby kompozice a naplnění tohoto profilu příslušnými daty.

## Logický model

**Účel:** Klinicky srozumitelný popis obsahu dokumentu, který tvoří základ pro technické mapování a validaci.  
**Jazyky:** CZ (pro čitelnost), EN (autorita pro mapování a profily).

Každý prvek obsahuje:

- Identifikátor prvku (pro mapování)
- Název (CZ/EN), popis
- Datový typ / charakter hodnoty

> Pozn.: EN verze logického modelu je **závazná** pro mapování a FHIR profily.

## Mapování (Logical Model → FHIR)

### Účel

Mapování definuje vztahy mezi prvky logického modelu (např. eHN Hospital Discharge Report) a odpovídajícími FHIR elementy v české implementační specifikaci (např. HDR CZ).  
Slouží k tomu, aby bylo jednoznačně určeno, **kam se jednotlivé položky logického modelu zapisují** v rámci FHIR struktury (`Composition`, `Bundle`, `Section` apod.).

### Zásady mapování

- Každý prvek logického modelu musí být mapován na konkrétní FHIR element nebo skupinu elementů.
- Pokud přímé mapování neexistuje, uvede se `Extension` nebo komentář s vysvětlením.
- Mapování vychází z eHN HDR struktury (A.1 – Header, A.2 – Body) a rozvádí se do sekcí a podsekcí.
- Každý řádek tabulky musí obsahovat buď vyplněný sloupec **Target Code**, nebo poznámku o způsobu řešení.
- Vztah se vyjadřuje sloupcem **Relationship**, obvykle jako `is related to`.

## FHIR profily

**Účel:** Zpřesňují použití FHIR resource v českém kontextu (omezují volitelnost, sjednocují praxi) a doplňují terminologické bindingy.

### Struktura profilu

- Základní resource (např. `Composition`, `Patient`, `Encounter`, …)
- Kardinality (např. `Composition.author 1..1`, `section 1..*`)
- Vazby mezi profily (např. `Composition.section` → `Condition`)
- Odkazy na použitou terminologii (ValueSet, CodeSystem, Binding strength)

### Kardinalita

- **Povinné:** `1..1`
- **Volitelné:** `0..1`
- **Opakovatelné:** `0..*` / `1..*`
  > Národní profily mohou být **přísnější** než evropské.

### Terminologické vazby

Každý profil využívá závazné nebo doporučené číselníky:

- **required** – musí být z daného ValueSetu,
- **extensible** – primárně z ValueSetu, případně rozšíření,
- **preferred** – doporučený ValueSet, ale nevyžadovaný.

> Příklady: `Composition.type` – LOINC `34105-7`, `Condition.code` – ICD-10/SNOMED CT, `Observation.unit` – UCUM.

## Obligations (Povinnosti)

> **Informativní pro tuto verzi průvodce**  
> Do této verze příručky byly přidány závazná pravidla pouze jako informativní materiál ke shromažďování zpětné vazby o jejich používání.

### Přehled a terminologie

Závazná pravidla (**Obligations**) specifikují schopnosti a chování, které definovaní aktéři **MAY** (MOHOU), **SHOULD** (MĚLI BY) nebo **SHALL** (MUSÍ) implementovat v rámci uvedených FHIR profilů.  
Obligations doplňují kardinality a terminologické bindingy všude tam, kde samotná struktura nestačí (např. požadavky na uživatelské funkce, workflow nebo povinné zobrazení vybraných položek).

### Úrovně plnění (L1–L3)

- **L1** – _nestrukturovaný dokument_: povinná metadata dokumentu + lidsky čitelný PDF výstup.
- **L2** – _strukturované sekce_: dokument členěný do identifikovatelných sekcí, obsah je převážně narativní.
- **L3** – _strukturované + kódované_: stejné sekce jako L2; vybrané informace **SHALL** být ve formalizované a kódované podobě.

### Aktéři

- **Tvůrce úrovně L1** – vytváří L1 zprávu (odeslání konzumentovi / uložení do repozitáře).
- **Konzument úrovně L1** – přijímá/načítá a používá L1 zprávu.
- **Tvůrce úrovně L2** – vytváří L2 zprávu (sekce, narativ).
- **Konzument úrovně L2** – zpracovává L2 zprávu.
- **Tvůrce úrovně L3** – vytváří L3 zprávu (formální + kódované prvky).
- **Konzument úrovně L3** – zpracovává L3 zprávu včetně formálních/kódovaných prvků.

### Typy závazných pravidel

- **Creator obligations** – povinnosti pro **tvorbu** dokumentu (systémové/UX chování).
  - Příklad: Tvůrce **SHALL** umožnit výběr a uložení autora/atestátora propouštěcí zprávy.
- **Consumer obligations** – povinnosti pro **zobrazení** v prohlížečích/konzumentech.
  - Příklad: Konzument **SHALL** zobrazit `Composition.title`, `Composition.date` a `Composition.author`; jazyk dokumentu **MAY** být nezobrazen.

### Vazba na profily a testování

Každé závazné pravidlo (Obligation) je svázáno s konkrétním profilem nebo skupinou profilů, které doplňuje.  
Obligations se uplatňují v testovacích scénářích validace – např. při kontrole správného zobrazení sekcí nebo existence povinných funkcí při tvorbě dokumentu.

## Vzorové instance (Examples)

**Účel:**  
Příklady slouží jako **referenční implementace**, která ukazuje, jak mají vypadat **plně validní výstupy** pro jednotlivé profily a úrovně zralosti (**L1–L3**) datové struktury.  
Nejedná se pouze o ukázku `Bundle`, ale o **kompletní sadu vzájemně provázaných FHIR resource**, které reprezentují reálný klinický dokument včetně všech potřebných referencí.

### Obsah a struktura příkladů

Každý příklad:

- odpovídá konkrétnímu profilu (např. `CZ_CompositionPs`, `CZ_ConditionPs`, `CZ_PatientCore`),
- reflektuje závazná pravidla (Obligations) a kardinality profilu,
- využívá příslušné číselníky a terminologické bindingy (LOINC, SNOMED CT, ICD-10, UCUM),
- je validní vůči definovanému profilu v rámci implementační příručky.

### Úrovně zralosti datové struktury

| Úroveň | Obsah příkladu   | Struktura                                            | Použití                    |
| ------ | ---------------- | ---------------------------------------------------- | -------------------------- |
| **L1** | PDF + metadata   | `Composition`, `DocumentReference`                   | Minimální interoperabilita |
| **L2** | Sekce + text     | `Composition.section`                                | Strukturovaný narativ      |
| **L3** | Kódované položky | `Composition.section` + `Condition`, `Medication`, … | Strojová interoperabilita  |

### Typická sada resource pro příklad propouštěcí zprávy

- `Composition` – hlavička a sekce dokumentu
- `Patient` – identifikace pacienta
- `Condition` – diagnózy (včetně hlavní diagnózy)
- `Procedure` – významné výkony a zákroky
- `MedicationStatement` – informace o léčbě
- `AllergyIntolerance` – alergie a intolerance
- `Observation` – klíčové nálezy, výsledky, fyziologické hodnoty
- `DocumentReference` – vložená PDF/narativní rendice
- Další navázané resource dle profilu (např. `Consent`, `Organization`, `PractitionerRole`)

### Cíl příkladů

Příklady mají sloužit:

- **implementátorům** jako referenční model validní instance pro testování,
- **tvůrcům a konzumentům** (L1–L3) jako ukázka rozsahu dat, které mají být dostupné,
- **testovacím scénářům** jako základ pro automatickou validaci proti profilům a závazným pravidlům (_Obligations_).

### Validace příkladů

Každý příklad musí být validní vůči příslušnému profilu (`StructureDefinition`) a mít správně navázané reference mezi resource.  
Validaci lze provést pomocí nástroje **FHIR Validator**, IG Publisheru nebo jiného validačního rámce.

> Doporučuje se zahrnout validaci do testovací pipeline (např. CI/CD) jako kontrolu souladu s profily.
