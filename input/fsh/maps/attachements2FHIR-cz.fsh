Instance: attachments2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/attachments2FHIR-cz-ps"
* name = "Attachments2FHIR-cz-ps"
* title = "ConceptMap: Attachments to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Attachments logical model to this guide mapping."

// ---------------------------------------------------------
// Group 1: Attachments -> CZ Composition (PS) section mapping
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogAttachmentsCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.10.1 Attachment -> sectionAttachments
* group[=].element[+].code = #attachment
* group[=].element[=].display = "A.2.10.1 - Attachment"
* group[=].element[=].target.code = #Composition.section:sectionAttachments
* group[=].element[=].target.display = "Composition.section:sectionAttachments"
* group[=].element[=].target.equivalence = #equivalent

// Each attachment item -> sectionAttachments entry (DocumentReference)
* group[=].element[+].code = #attachment
* group[=].element[=].display = "A.2.10.1 - Attachment (entries)"
* group[=].element[=].target.code = #Composition.section:sectionAttachments.entry:attachment.ofType(DocumentReference)
* group[=].element[=].target.display = "Composition.section:sectionAttachments.entry:attachment.ofType(DocumentReference)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment =
  "Repeatable: one DocumentReference per attachment item."

// ---------------------------------------------------------
// Group 2: Attachment item -> DocumentReference mapping
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogAttachmentsCzEn"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-attachment"

// A.2.10.1.1 Attachment type -> DocumentReference.type
* group[=].element[+].code = #attachment.type
* group[=].element[=].display = "A.2.10.1.1 - Attachment type"
* group[=].element[=].target.code = #DocumentReference.content.attachment.contentType
* group[=].element[=].target.display = "DocumentReference.content.attachment.contentType"
* group[=].element[=].target.equivalence = #equivalent

// A.2.10.1.2 Attachment format -> DocumentReference.content.format
* group[=].element[+].code = #attachment.format
* group[=].element[=].display = "A.2.10.1.2 - Attachment format"
* group[=].element[=].target.code = #DocumentReference.content.format
* group[=].element[=].target.display = "DocumentReference.content.format"
* group[=].element[=].target.equivalence = #equivalent

// A.2.10.1.3 Attachment title
* group[=].element[+].code = #attachment.title
* group[=].element[=].display = "A.2.10.1.3 - Attachment title"
* group[=].element[=].target.code = #DocumentReference.content.attachment.title
* group[=].element[=].target.display = "DocumentReference.content.attachment.title"
* group[=].element[=].target.equivalence = #relatedto

// A.2.10.1.4 Attachment description
* group[=].element[+].code = #attachment.description
* group[=].element[=].display = "A.2.10.1.4 - Attachment description"
* group[=].element[=].target.code = #DocumentReference.description
* group[=].element[=].target.display = "DocumentReference.description"
* group[=].element[=].target.equivalence = #relatedto

// A.2.10.1.5 Attachment date and time -> DocumentReference.date
* group[=].element[+].code = #attachment.dateTime
* group[=].element[=].display = "A.2.10.1.5 - Attachment date and time"
* group[=].element[=].target.code = #DocumentReference.date
* group[=].element[=].target.display = "DocumentReference.content.attachment.creation"
* group[=].element[=].target.equivalence = #equivalent

// A.2.10.1.6 Document -> DocumentReference.content.attachment
* group[=].element[+].code = #attachment.document
* group[=].element[=].display = "A.2.10.1.6 - Document"
* group[=].element[=].target.code = #DocumentReference.content.attachment
* group[=].element[=].target.display = "DocumentReference.content.attachment"
* group[=].element[=].target.equivalence = #equivalent