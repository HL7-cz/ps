Instance: presentedForm2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/presentedForm2FHIR-cz-ps"
* name = "PresentedForm2FHIR-cz-ps"
* title = "ConceptMap: Presented Form to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Presented Form logical model to this guide mapping."

// ---------------------------------------------------------
// Group 1: Presented Form -> CZ Composition (PS) section mapping
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPresentedFormCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.3 - Presented form -> sectionpresentedForm
* group[=].element[+].code = #attachment
* group[=].element[=].display = "A.3 - Presented form"
* group[=].element[=].target.code = #Composition.section:sectionpresentedForm
* group[=].element[=].target.display = "Composition.section:sectionpresentedForm"
* group[=].element[=].target.equivalence = #equivalent

// Each attachment item -> sectionAttachments entry (DocumentReference)
* group[=].element[+].code = #attachment
* group[=].element[=].display = "A.3 - Presented form (entries)"
* group[=].element[=].target.code = #Composition.section:sectionpresentedForm.entry.ofType(CZ_Presented_Form)
* group[=].element[=].target.display = "Composition.section:sectionpresentedForm.entry.ofType(CZ_Presented_Form)"
* group[=].element[=].target.equivalence = #equivalent

// ---------------------------------------------------------
// A.3 - Presented form -> DocumentReference mapping
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPresentedFormCzEn"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-presented-form"

// A.3.1 – Content type
* group[=].element[+].code = #presentedForm.contentType
* group[=].element[=].display = "A.3.1 – Content type"
* group[=].element[=].target.code = #DocumentReference.content.attachment.contentType
* group[=].element[=].target.display = "DocumentReference.content.attachment.contentType"
* group[=].element[=].target.equivalence = #equivalent

// A.3.2 – Content language
* group[=].element[+].code = #presentedForm.language
* group[=].element[=].display = "A.3.2 – Content language"
* group[=].element[=].target.code = #DocumentReference.content.attachment.
* group[=].element[=].target.display = "DocumentReference.content.attachment."
* group[=].element[=].target.equivalence = #equivalent

// A.3.3 – Content data
* group[=].element[+].code = #presentedForm.data
* group[=].element[=].display = "A.3.3 – Content data"
* group[=].element[=].target.code = #DocumentReference.content.attachment.data
* group[=].element[=].target.display = "DocumentReference.content.attachment.data"
* group[=].element[=].target.equivalence = #equivalent

// A.3.4 – Content URL
* group[=].element[+].code = #presentedForm.url
* group[=].element[=].display = "A.3.4 – Content URL"
* group[=].element[=].target.code = #DocumentReference.content.attachment.url
* group[=].element[=].target.display = "DocumentReference.content.attachment.url"
* group[=].element[=].target.equivalence = #equivalent

// A.3.5 – Content title
* group[=].element[+].code = #presentedForm.title
* group[=].element[=].display = "A.3.5 – Content title"
* group[=].element[=].target.code = #DocumentReference.date
* group[=].element[=].target.display = "DocumentReference.content.attachment.title"
* group[=].element[=].target.equivalence = #equivalent

// A.3.6 – Creation date
* group[=].element[+].code = #presentedForm.creationDate
* group[=].element[=].display = "A.3.6 – Creation date"
* group[=].element[=].target.code = #DocumentReference.content.attachment.creation
* group[=].element[=].target.display = "DocumentReference.content.attachment.creation"
* group[=].element[=].target.equivalence = #equivalent