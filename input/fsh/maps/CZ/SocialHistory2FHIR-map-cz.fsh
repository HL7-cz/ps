// File: SocialHistory2FHIR-map-cz.fsh
Instance: SocialHistory2FHIRCZPS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/socialHistory2FHIR-cz-ps"
* name = "SocialHistory2FHIR-cz-ps"
* title = "ConceptMap: Social History to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true

//// ---------------- A.2.6 Sociální anamnéza -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogSocialHistoryCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.6 Sociální anamnéza
* group[=].element[+].code = #socialniAnamneza
* group[=].element[=].display = "A.2.6 - Social history"
* group[=].element[=].target.code = #Composition.section:xxx.entry
* group[=].element[=].target.display = "Composition.section:sectionxxx.entry.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Social history facts (smoking, alcohol, living situation) as Observations in a dedicated section."
