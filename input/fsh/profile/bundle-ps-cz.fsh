Profile: CZ_BundlePs
Parent: Bundle
Id: cz-bundle-ps
Title: "Bundle: Patient Summary (CZ)"
Description: "Clinical document used to represent a Patient Summary for the scope of this guide."
* ^purpose = "Patient summary bundle is an electronic health record."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "Patient Summary Bundle"
* . ^definition = "Patient Summary Bundle. \r\nA container for a collection of resources in the Patient Summary document."

* identifier ^short = "Business identifier for this Patient Summary"
* identifier 1..
* type = #document
* timestamp 1..
* total ..0
* link ..0
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry.resource 1..
* entry contains composition 1..1
* entry[composition].resource only CZ_CompositionPs

* entry contains presentedForm 1..*
* entry[presentedForm].resource only CZ_Presented_Form

* entry contains patient 1..*
* entry[patient].resource only CZ_PatientCore

* entry contains organization 0..*
* entry[organization].resource only CZ_OrganizationCore

* entry contains practitioner 0..*
* entry[practitioner].resource only CZ_PractitionerCore

* entry contains practitionerrole 0..*
* entry[practitionerrole].resource only CZ_PractitionerRoleCore


