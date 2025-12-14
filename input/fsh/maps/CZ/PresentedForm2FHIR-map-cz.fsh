// File: PresentedForm2FHIR-map-cz.fsh
Instance: PresentedForm2FHIRCZPS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/presentedForm2FHIR-cz-ps"
* name = "PresentedForm2FHIR-cz-ps"
* title = "ConceptMap: Presented Form to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true

//// ---------------- A.3 Prezenční forma -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPresentedFormCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.3 Prezenční forma dokumentu
* group[=].element[+].code = #prezencniForma
* group[=].element[=].display = "A.3 - Presented form"
* group[=].element[=].target.code = #Composition.presentedForm
* group[=].element[=].target.display = "Composition.presentedForm"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Rendered representation (PDF, CDA, HTML) mapped to Composition.presentedForm."
