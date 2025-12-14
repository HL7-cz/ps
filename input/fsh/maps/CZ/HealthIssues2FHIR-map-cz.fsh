// File: HealthStatusInfo2FHIR-map-cz.fsh
Instance: HealthStatusInfo2FHIRCZPS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/healthStatusInfo2FHIR-cz-ps"
* name = "HealthStatusInfo2FHIR-cz-ps"
* title = "ConceptMap: Health Status Information to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true

//// ---------------- A.2.3 Informace o zdravotním stavu -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHealthStatusInfoCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// Vysoká úroveň souhrnu zdravotního stavu
* group[=].element[+].code = #informaceOZdravotnimStavu
* group[=].element[=].display = "A.2.3 - Health status information"
* group[=].element[=].target.code = #Composition.section:xxx.entry
* group[=].element[=].target.display = "Composition.section:sectionxxx.entry.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Narrative or coded health status information represented mainly as Observation."
