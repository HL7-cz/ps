// File: Results2FHIR-map-cz.fsh
Instance: Results2FHIRCZPS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/results2FHIR-cz-ps"
* name = "Results2FHIR-cz-ps"
* title = "ConceptMap: Results to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true

//// ---------------- A.2.8 Výsledky -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogResultsCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.8 Výsledky (lab, zobrazovací apod.)
* group[=].element[+].code = #vysledky
* group[=].element[=].display = "A.2.8 - Results"
* group[=].element[=].target.code = #Composition.section:xxx.entry
* group[=].element[=].target.display = "Composition.section:sectionxxx.entry.ofType(DiagnosticReport)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Diagnostic results represented primarily as DiagnosticReport with nested Observations."
