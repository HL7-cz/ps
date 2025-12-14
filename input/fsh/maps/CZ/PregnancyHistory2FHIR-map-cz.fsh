// File: PregnancyHistory2FHIR-map-cz.fsh
Instance: PregnancyHistory2FHIRCZPS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/pregnancyHistory2FHIR-cz-ps"
* name = "PregnancyHistory2FHIR-cz-ps"
* title = "ConceptMap: Pregnancy History to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true

//// ---------------- A.2.7 Historie těhotenství -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPregnancyHistoryCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.7 Historie těhotenství
* group[=].element[+].code = #historieTehotenstvi
* group[=].element[=].display = "A.2.7 - Pregnancy history"
* group[=].element[=].target.code = #Composition.section:xxx.entry
* group[=].element[=].target.display = "Composition.section:sectionxxx.entry.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Pregnancy history mapped as a set of Observations (e.g., gravida, para, outcomes)."
