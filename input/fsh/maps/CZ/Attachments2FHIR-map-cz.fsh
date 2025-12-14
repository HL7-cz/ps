// File: Attachments2FHIR-map-cz.fsh
Instance: Attachments2FHIRCZPS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/attachments2FHIR-cz-ps"
* name = "Attachments2FHIR-cz-ps"
* title = "ConceptMap: Attachments to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true

//// ---------------- A.2.10 Přílohy -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogAttachmentsCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.10 Přílohy
* group[=].element[+].code = #prilohy
* group[=].element[=].display = "A.2.10 - Attachments"
* group[=].element[=].target.code = #Composition.section:xxx.entry
* group[=].element[=].target.display = "Composition.section:sectionxxx.entry.ofType(DocumentReference)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "External or binary content as DocumentReference resources linked from the attachments section."
