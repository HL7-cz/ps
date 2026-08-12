Profile: CZ_ProcedurePs
Parent: ProcedureEuEps
Id: cz-procedure-ps
Title: "Procedure (CZ PS)"
Description: """This profile represents the constraints applied to the Procedure resource by the Czech Patient Summary FHIR Implementation Guide. A record of an action that is or was performed on or for a patient is represented in the patient summary as an instance of a Procedure resource constrained by this profile."""

* status ^short = "The status of the procedure"
* subject.reference 1..
* performer.actor only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or PatientEuEps or CZ_RelatedPersonCore or CZ_OrganizationCore)
* performer.onBehalfOf only Reference(CZ_OrganizationCore)
* reasonCode ^short = "Why the procedure was performed (code)"
* reasonReference only Reference(CZ_ConditionCore or Observation or CZ_ProcedurePs or CZ_DiagnosticReportCore or DocumentReference)
* outcome ^short = "Outcome of the procedure"
* complication ^short = "Complications that occurred during the procedure (code)"
* complicationDetail ^short = "Complications that occurred during the procedure (details)"
* focalDevice ^short = "Device implanted, removed or otherwise manipulated"