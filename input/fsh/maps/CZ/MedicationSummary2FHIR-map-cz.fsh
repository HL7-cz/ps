// File: MedicationSummary2FHIR-map-cz.fsh
Instance: MedicationSummary2FHIRCZPS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/medicationSummary2FHIR-cz-ps"
* name = "MedicationSummary2FHIR-cz-ps"
* title = "ConceptMap: Medication Summary to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true

//// ---------------- A.2.5 Souhrn medikace -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogMedicationSummaryCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.5 Souhrn medikace
* group[=].element[+].code = #souhrnMedikace
* group[=].element[=].display = "A.2.5 - Medication summary"
* group[=].element[=].target.code = #Composition.section:xxx.entry
* group[=].element[=].target.display = "Composition.section:sectionxxx.entry.ofType(MedicationStatement)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Medication summary mapped as MedicationStatement/MedicationRequest entries in the composition section."
