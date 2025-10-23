Profile: CZ_CompositionPs
Parent: Composition
Id: cz-composition-ps
Title: "Composition: Patient Summary (CZ)"
Description: "Clinical document used to represent a Patient Summary for the scope of this guide."

* . ^short = "Composition: Patient Summary (CZ)"
* . ^definition = "Electronic document representing a Patient Summary as defined in the Czech National Implementation Guide for Patient Summaries."

* extension contains $event-basedOn named basedOn 0..*
* extension[basedOn].valueReference only Reference (Resource or ServiceRequest) /// add profile

* extension contains DocumentPresentedForm named presentedForm 1..*
* extension[presentedForm] ^short = "Presented form"
* extension[presentedForm].valueAttachment
  * contentType
    * ^example[0].label = "pdf"
    * ^example[0].valueCode  = $mime#application/pdf
  * data ^short = "B64 in-line data"
  * url ^short = "URL of the document"

* type = $loinc#60591-5 "Patient summary document"

* subject only Reference(CZ_PatientCore)
* subject 1..1
* subject ^definition = "CZ Patient Core profile representing the patient who is the subject of the composition."

* author only Reference( CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_MedicalDevice or CZ_OrganizationCore) //or CZ_PatientCore or CZ_RelatedPersonCore 
* author 1..*

* attester.party only Reference( CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore) //or CZ_PatientCore or CZ_RelatedPersonCore

* custodian only Reference(CZ_OrganizationCore)

//============== OBLIGATIONS ===============
//L1 - Creator
* language insert OblCreator(#SHALL:able-to-populate,L1)
* type insert OblCreator(#SHALL:able-to-populate,L1)
* category insert OblCreator(#SHALL:able-to-populate,L1)
* confidentiality insert OblCreator(#SHALL:able-to-populate,L1)
* attester insert OblCreator(#SHALL:able-to-populate,L1)
* custodian insert OblCreator(#SHOULD:able-to-populate,L1)
//L1 - Consumer
* extension[presentedForm] insert OblConsumer(#SHALL:display,L1)
* status insert OblConsumer(#SHALL:display,L1)
* type insert OblConsumer(#SHALL:display,L1)
* subject insert OblConsumer(#SHALL:display,L1)
* date insert OblConsumer(#SHALL:display,L1)
* author insert OblConsumer(#SHALL:display,L1)
* title insert OblConsumer(#SHALL:display,L1)
* confidentiality insert OblConsumer(#SHALL:display,L1)
* attester insert OblConsumer(#SHALL:display,L1)
* custodian insert OblConsumer(#SHOULD:display,L1)
