Instance: alerts2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/ps/ConceptMap/alerts2FHIR-cz-ps"
* name = "Alerts2FHIRCzPs"
* title = "ConceptMap: Alerts to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Alerts Model to this guide mapping"

* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogAlertsCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"
// A.2.2.1	Alergie a intolerance	Záznam alergie a intolerance je volitelný. 
* group[=].element[+].code = #allergy
* group[=].element[=].display = "A.2.2.1 - Allergy and Intolerance"
* group[=].element[=].target.code = #Composition.section:sectionAllergies.entry
* group[=].element[=].target.display = "Composition.section:sectionAllergies.entry.ofType(AllergyIntolerance)"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.2	Varování	příklady: krvácení po aspirinu, kašel po ACE inhibitoru, přítomnost vzácné nemoci, obtížnou intubaci, transplantovaný orgán, ale také účast v klinické studii
* group[=].element[+].code = #medicalAlerts
* group[=].element[=].display = "A.2.2.2 - Medical alerts"
* group[=].element[=].target.code = #Composition.section:sectionAlerts.entry
* group[=].element[=].target.display = "Composition.section:sectionAlerts.entry.ofType(Flag)"
* group[=].element[=].target.equivalence = #equivalent

//// ---------------- Alergie a intolerance -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogAlertsCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-allergyIntolerance-ps"

// A.2.2.1.1	Popis alergie	Textové doplnění informací volným textem. Je určeno pro zápis informací, které nelze zapsat strukturovaně.
* group[=].element[+].code = #alergie.description
* group[=].element[=].display = "A.2.2.1.1 - Allergy description"
* group[=].element[=].target.code = #AllergyIntolerance.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.2	Kategorie původce	Potravina, Léčivo, Prostředí, Biologikum
* group[=].element[+].code = #allergy.category
* group[=].element[=].display = "A.2.2.1.2 - Allergy category"
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = "AllergyIntolerance.category"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.3	Původce	Látka, skupina látek nebo faktor prostředí, na které je pacient alergický nebo přecitlivělý. Původce je možné vyjádřit pomocí kódu substance, ATC skupiny nebo kódu produktu SÚKL (v případě léčivých přípravků). 
* group[=].element[+].code = #allergy.agent
* group[=].element[=].display = "A.2.2.1.3 - Agent or Allergen"
* group[=].element[=].target.code = #AllergyIntolerance.code
* group[=].element[=].target.display = "AllergyIntolerance.code"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.4	Typ reakce	Typ (mechaISmus) reakce: alergie, intolerance, nealergická hypersenzitivita. 
* group[=].element[+].code = #allergy.typeOfPropensity
* group[=].element[=].display = "A.2.2.1.4 - Type of propensity"
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = "AllergyIntolerance.typ"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.5	Reakce	Dosud známé projevy reakce na expozici pacienta původci, textem nebo kódem, včetně možnosti uvést způsobu expozice a závažnost projevu.
* group[=].element[+].code = #allergy.manifestation
* group[=].element[=].display = "A.2.2.1.5 - Allergy manifestation"
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = "AllergyIntolerance.reaction.manifestation"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.6	Riziko	Stupeň závažnosti je definován jako „potenciální závažnost budoucích reakcí“. Stupeň závažnosti představuje klinické hodnocení nejhoršího scénáře budoucí reakce. Může být založeno na závažnosti minulých reakcí a na stupni ohrožení pacienta.
* group[=].element[+].code = #allergy.criticality
* group[=].element[=].display = "A.2.2.1.6 - Criticality"
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = "AllergyIntolerance.criticality"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.7	Počátek období projevu	"Datum nebo období, ve kterém byla alergie nebo jiná nežádoucí reakce zaznamenána či klinicky stanovena.
// Může to být přesné datum a čas nebo hrubý údaj o datu (například pouze rok nebo měsíc a rok) nebo vyjádření pomocí kódu věkové fáze (dětství, adolescence apod.), resp. časového intervalu (2001 - 2005 apod.)"
* group[=].element[+].code = #allergy.onsetDate
* group[=].element[=].display = "A.2.2.1.7 - Onset date"
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = "AllergyIntolerance.onsetDateTime"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.8	Konec období projevu	Datum nebo období, ve kterém byly projevy alergie nebo jiné nežádoucí reakce potlačeny nebo klinicky vyloučeny.
* group[=].element[+].code = #allergy.endDate
* group[=].element[=].display = "A.2.2.1.8 - End date"
* group[=].element[=].target.code = #AllergyIntolerance.extension:abatement-datetime
* group[=].element[=].target.display = "AllergyIntolerance.extension:abatement-datetime"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.9	Stav	„Klinický stav“ vyjadřuje aktuální stav dispozice pacienta k nežádoucí reakci.
* group[=].element[+].code = #allergy.status
* group[=].element[=].display = "A.2.2.1.9 - Status"
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = "AllergyIntolerance.clinicalStatus"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.10	Míra jistotsy	Umožňuje vyjádřit míru jistoty zapisujícího lékaře ve vztahu k údajům uvedeným v modelu alergie.
* group[=].element[+].code = #allergy.certainty
* group[=].element[=].display = "A.2.2.1.10 - Certainty"
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = "AllergyIntolerance.verificationStatus"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.1.11	Poslední projev	Datum (a čas) poslední známé reakce (projevu).
* group[=].element[+].code = #allergy.lastOccurrence
* group[=].element[=].display = "A.2.2.1.11 - Last Occurrence"
* group[=].element[=].target.code = #AllergyIntolerance.
* group[=].element[=].target.display = "AllergyIntolerance.lastOccurrence"
* group[=].element[=].target.equivalence = #equivalent

//// ---------------- Varování -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogAlertsCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-flag-ps"

// A.2.2.2.1	Označení varování	Název charakterizující typ či předmět varování
* group[=].element[+].code = #medicalAlerts.description
* group[=].element[=].display = "A.2.2.2.1 - Healthcare alert description"
* group[=].element[=].target.code = #Flag.code.text
* group[=].element[=].target.display = "Flag.code.text"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.2.2	Onemocnění či stav	Stav či onemocnění, které je zdrojem/příčinou pro varování. 
* group[=].element[+].code = #medicalAlerts.code
* group[=].element[=].display = "A.2.2.2.2 - Code"
* group[=].element[=].target.code = #Flag.code
* group[=].element[=].target.display = "Flag.code"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.2.3	Specializovaný lékař	Kontaktní informace na specialistu, u kterého je pacient v péči - týká se především pacientů se vzácným onemocněním.
* group[=].element[+].code = #medicalAlerts.specialistPhysician
* group[=].element[=].display = "A.2.2.2.3 - Specialist physician"
* group[=].element[=].target.code = #Flag.author
* group[=].element[=].target.display = "Flag.author"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.2.4	Komentář	Komentář/popis varování volným textem
* group[=].element[+].code = #medicalAlerts.comment
* group[=].element[=].display = "A.2.2.2.4 - Comment"
* group[=].element[=].target.code = #Flag.extension:flagDetailExt
* group[=].element[=].target.display = "Flag.extension:flagDetailExt"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.2.5	Úroveň	Úroveň závažnosti varování
* group[=].element[+].code = #medicalAlerts.priority
* group[=].element[=].display = "A.2.2.2.5 - Priority"
* group[=].element[=].target.code = #Flag.extension:flagPriorityExt
* group[=].element[=].target.display = "Flag.extension:flagPriorityExt"
* group[=].element[=].target.equivalence = #equivalent
// A.2.2.2.6	Období platnosti varování	Umožňuje vyjádřit období ve kterém bylo varování aktivní. Týká se přechodných stavů.
* group[=].element[+].code = #medicalAlerts.period
* group[=].element[=].display = "A.2.2.2.6 - Period"
* group[=].element[=].target.code = #Flag.period
* group[=].element[=].target.display = "Flag.period"
* group[=].element[=].target.equivalence = #equivalent

