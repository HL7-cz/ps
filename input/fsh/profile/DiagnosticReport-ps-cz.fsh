Profile: CZ_DiagnosticReportPs
Parent: CZ_DiagnosticReportCore
Id: cz-diagnosticreport-ps
Title: "DiagnosticReport (CZ PS)"
Description: """This profile represents the constraints applied to the DiagnosticReport resource by the Czech Patient Summary FHIR Implementation Guide. The DiagnosticReport resource is used to represent the findings and interpretations of diagnostic tests performed on patients."""

* insert ImposeProfile ( $DiagnosticReport-eu, 0 )

* subject only Reference(CZ_PatientCore or Group)
* subject.reference 1..1
* effective[x] 1..1

* result ^slicing.discriminator[0].type = #profile
* result ^slicing.discriminator[0].path = "resolve()"
* result ^slicing.ordered = false
* result ^slicing.rules = #open
* result contains observation-results 0..*
* result[observation-results] only Reference(CZ_MedicalTestResultCore)