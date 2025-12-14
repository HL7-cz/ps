// File: CarePlan2FHIR-map-cz.fsh
Instance: CarePlan2FHIRCZPS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/carePlan2FHIR-cz-ps"
* name = "CarePlan2FHIR-cz-ps"
* title = "ConceptMap: Care Plan to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true

//// ---------------- A.2.9 Plán péče -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCarePlanCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.9 Plán péče
* group[=].element[+].code = #planPece
* group[=].element[=].display = "A.2.9 - Care plan"
* group[=].element[=].target.code = #Composition.section:xxx.entry
* group[=].element[=].target.display = "Composition.section:sectionxxx.entry.ofType(CarePlan)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Care plan recommendations and planned activities as CarePlan entries."
