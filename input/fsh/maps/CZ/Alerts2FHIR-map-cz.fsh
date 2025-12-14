Instance: Alerts2FHIRCZPS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/alerts2FHIR-cz-ps"
* name = "Alerts2FHIR-cz-ps"
* title = "ConceptMap: Alerts to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
//// ---------------- Alergie a intolerance -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogAlertsCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"
// A.2.2.1	Alergie a intolerance	Záznam alergie a intolerance je volitelný. 
* group[=].element[+].code = #alergie
* group[=].element[=].display = "A.2.2.1 - Allergy and Intolerance"
* group[=].element[=].target.code = #Composition.section:xxx.entry
* group[=].element[=].target.display = "Composition.section:sectionxxx.entry.ofType(AllergyIntolerance)"
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogAlertsCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-allergyIntolerance"

// A.2.2.1.1	Popis alergie	Textové doplnění informací volným textem. Je určeno pro zápis informací, které nelze zapsat strukturovaně.
* group[=].element[+].code = #alergie.popisAlergie
* group[=].element[=].display = "A.2.2.1.1 - "
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.2	Kategorie původce	Potravina, Léčivo, Prostředí, Biologikum
* group[=].element[+].code = #alergie.kategoriePuvodce
* group[=].element[=].display = "A.2.2.1.2 - "
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.3	Původce	Látka, skupina látek nebo faktor prostředí, na které je pacient alergický nebo přecitlivělý. Původce je možné vyjádřit pomocí kódu substance, ATC skupiny nebo kódu produktu SÚKL (v případě léčivých přípravků). 
* group[=].element[+].code = #alergie.puvodce
* group[=].element[=].display = "A.2.2.1.3 - "
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.4	Typ reakce	Typ (mechaISmus) reakce: alergie, intolerance, nealergická hypersenzitivita. 
* group[=].element[+].code = #alergie.typReakce
* group[=].element[=].display = "A.2.2.1.4 - "
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.5	Reakce	Dosud známé projevy reakce na expozici pacienta původci, textem nebo kódem, včetně možnosti uvést způsobu expozice a závažnost projevu.
* group[=].element[+].code = #alergie.reakce
* group[=].element[=].display = "A.2.2.1.5 - "
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.6	Riziko	Stupeň závažnosti je definován jako „potenciální závažnost budoucích reakcí“. Stupeň závažnosti představuje klinické hodnocení nejhoršího scénáře budoucí reakce. Může být založeno na závažnosti minulých reakcí a na stupni ohrožení pacienta.
* group[=].element[+].code = #alergie.riziko
* group[=].element[=].display = "A.2.2.1.6 - "
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.7	Počátek období projevu	"Datum nebo období, ve kterém byla alergie nebo jiná nežádoucí reakce zaznamenána či klinicky stanovena.
// Může to být přesné datum a čas nebo hrubý údaj o datu (například pouze rok nebo měsíc a rok) nebo vyjádření pomocí kódu věkové fáze (dětství, adolescence apod.), resp. časového intervalu (2001 - 2005 apod.)"
* group[=].element[+].code = #alergie.pocatekObdobiProjevu
* group[=].element[=].display = "A.2.2.1.7 - "
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.8	Konec období projevu	Datum nebo období, ve kterém byly projevy alergie nebo jiné nežádoucí reakce potlačeny nebo klinicky vyloučeny.
* group[=].element[+].code = #alergie.konecObdobiProjevu
* group[=].element[=].display = "A.2.2.1.8 - "
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.9	Stav	„Klinický stav“ vyjadřuje aktuální stav dispozice pacienta k nežádoucí reakci.
* group[=].element[+].code = #alergie.stav
* group[=].element[=].display = "A.2.2.1.9 - "
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.10	Míra jistotsy	Umožňuje vyjádřit míru jistoty zapisujícího lékaře ve vztahu k údajům uvedeným v modelu alergie.
* group[=].element[+].code = #alergie.miraJistoty
* group[=].element[=].display = "A.2.2.1.10 - "
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.11	Poslední projev	Datum (a čas) poslední známé reakce (projevu).
* group[=].element[+].code = #alergie.posledniProjev
* group[=].element[=].display = "A.2.2.1.11 - "
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

//// ---------------- Varování -------------------////
// A.2.2.2	Varování	příklady: krvácení po aspirinu, kašel po ACE inhibitoru, přítomnost vzácné nemoci, obtížnou intubaci, transplantovaný orgán, ale také účast v klinické studii
// A.2.2.2.1	Označení varování	Název charakterizující typ či předmět varování
// A.2.2.2.2	Onemocnění či stav	Stav či onemocnění, které je zdrojem/příčinou pro varování. 
// A.2.2.2.3	Specializovaný lékař	Kontaktní informace na specialistu, u kterého je pacient v péči - týká se především pacientů se vzácným onemocněním.
// A.2.2.2.4	Komentář	Komentář/popis varování volným textem
// A.2.2.2.5	Úroveň	Úroveň závažnosti varování
// A.2.2.2.6	Období platnosti varování	Umožňuje vyjádřit období ve kterém bylo varování aktivní. Týká se přechodných stavů.


