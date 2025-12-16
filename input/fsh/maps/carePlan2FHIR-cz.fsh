Instance: carePlan2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/carePlan2FHIR-cz-ps"
* name = "CarePlan2FHIR-cz-ps"
* title = "ConceptMap: Care Plan to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Care Plan logical model to this guide mapping (Composition.section:sectionResults)."

// ---------------------------------------------------------
// Group 1: Care plan -> CZ Composition (PS) section mapping
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCarePlanCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.9.1 Care plan -> sectionPlanOfCare
* group[=].element[+].code = #carePlan
* group[=].element[=].display = "A.2.9.1 - Care plan"
* group[=].element[=].target.code = #Composition.section:sectionPlanOfCare
* group[=].element[=].target.display = "Composition.section:sectionPlanOfCare"
* group[=].element[=].target.equivalence = #equivalent

// Each carePlan item -> sectionPlanOfCare entry (CarePlan)
* group[=].element[+].code = #carePlan
* group[=].element[=].display = "A.2.9.1 - Care plan (entries)"
* group[=].element[=].target.code = #Composition.section:sectionPlanOfCare.entry:carePlan.ofType(CarePlan)
* group[=].element[=].target.display = "Composition.section:sectionPlanOfCare.entry:carePlan.ofType(CarePlan)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Repeatable: one CarePlan resource per carePlan item."

// ---------------------------------------------------------
// Group 2: Care plan item -> CarePlan resource mapping
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCarePlanCzEn"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/CarePlan"

// A.2.9.1.1 Title -> CarePlan.title
* group[=].element[+].code = #carePlan.title
* group[=].element[=].display = "A.2.9.1.1 - Title"
* group[=].element[=].target.code = #CarePlan.title
* group[=].element[=].target.display = "CarePlan.title"
* group[=].element[=].target.equivalence = #equivalent

// A.2.9.1.2 Addresses -> CarePlan.addresses
* group[=].element[+].code = #carePlan.addresses
* group[=].element[=].display = "A.2.9.1.2 - Addresses"
* group[=].element[=].target.code = #CarePlan.addresses
* group[=].element[=].target.display = "CarePlan.addresses"
* group[=].element[=].target.equivalence = #equivalent

// A.2.9.1.3 Recommendation description -> CarePlan.description
* group[=].element[+].code = #carePlan.recommendationDescription
* group[=].element[=].display = "A.2.9.1.3 - Recommendation description"
* group[=].element[=].target.code = #CarePlan.description
* group[=].element[=].target.display = "CarePlan.description"
* group[=].element[=].target.equivalence = #equivalent

// A.2.9.1.4 Period -> CarePlan.period
* group[=].element[+].code = #carePlan.period
* group[=].element[=].display = "A.2.9.1.4 - Period"
* group[=].element[=].target.code = #CarePlan.period
* group[=].element[=].target.display = "CarePlan.period"
* group[=].element[=].target.equivalence = #equivalent

// A.2.9.1.5 Additional plan details -> no direct mapping (container)
* group[=].element[+].code = #carePlan.additionalPlanDetails
* group[=].element[=].display = "A.2.9.1.5 - Additional plan details"
* group[=].element[=].target.code = #CarePlan.note
* group[=].element[=].target.display = "CarePlan.note"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""

// A.2.9.1.6 Care plan (narrative)
* group[=].element[+].code = #carePlan.carePlanText
* group[=].element[=].display = "A.2.9.1.6 - Care plan"
* group[=].element[=].target.code = #CarePlan.text
* group[=].element[=].target.display = "CarePlan.text"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""