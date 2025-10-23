Profile: CZ_BundlePs
Parent: Bundle
Id: cz-bundle-ps
Title: "Bundle: Patient Summary (CZ)"
Description: "Clinical document used to represent a Patient Summary for the scope of this guide."

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry.resource 1..
* entry contains composition 1..1
* entry[composition].resource only CZ_CompositionPs