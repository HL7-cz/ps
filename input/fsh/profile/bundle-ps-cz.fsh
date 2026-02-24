Profile: CZ_BundlePs
Parent: Bundle
Id: cz-bundle-ps
Title: "Bundle (CZ PS)"
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

* entry contains patient 1..*
* entry[patient].resource only CZ_PatientCore

// advance directives section - consent
// * entry contains sectionAdvanceDirectives 0..1
// * entry[sectionAdvanceDirectives].resource only CZ_ConsentPs
* entry contains consent 0..*
* entry[consent].resource only CZ_ConsentPs

// patient provided data section - observation travel history
* entry contains sectionTravelHx 0..1
* entry[sectionTravelHx].resource only CZ_ObservationTravelHdr

* entry contains allergyintolerance 0..*
* entry[allergyintolerance].resource only CZ_AllergyIntolerancePs

* entry contains careplan 0..*
* entry[careplan].resource only CZ_CarePlanPs

* entry contains clinicalimpression 0..*
* entry[clinicalimpression].resource only CZ_ClinicalImpressionPs

* entry contains condition 0..*
* entry[condition].resource only CZ_ConditionPs

* entry contains device 0..*
* entry[device].resource only CZ_MedicalDevice

* entry contains deviceusestatement 0..*
* entry[deviceusestatement].resource only CZ_DeviceUseStatementPs

* entry contains diagnosticreport 0..*
* entry[diagnosticreport].resource only CZ_DiagnosticReportPs

* entry contains documentreference 0..*
* entry[documentreference].resource only CZ_DocumentReferencePs

* entry contains flag 0..*
* entry[flag].resource only CZ_FlagPs

* entry contains imagingstudy 0..*
* entry[imagingstudy].resource only CZ_ImagingStudyPs

* entry contains immunization 0..*
* entry[immunization].resource only CZ_ImmunizationPs

* entry contains medication 0..*
* entry[medication].resource only CZ_Medication

* entry contains medicationrequest 0..*
* entry[medicationrequest].resource only CZ_MedicationRequestPs

* entry contains medicationstatement 0..*
* entry[medicationstatement].resource only CZ_MedicationStatementPs

* entry contains practitioner 0..*
* entry[practitioner].resource only CZ_PractitionerCore

* entry contains practitionerrole 0..*
* entry[practitionerrole].resource only CZ_PractitionerRoleCore

* entry contains procedure 0..*
* entry[procedure].resource only CZ_ProcedurePs

// * entry contains observation-pregnancy-edd 0..*
// // * entry[observation-pregnancy-edd].resource only CZ_Observation_Pregnancy_EDD_Ps

* entry contains observation-pregnancy-outcome 0..*
* entry[observation-pregnancy-outcome].resource only CZ_ObservationPregnancyOutcomePs

* entry contains observation-pregnancy-status 0..*
* entry[observation-pregnancy-status].resource only CZ_ObservationPregnancyStatusPs

* entry contains observation-alcohol-use 0..*
* entry[observation-alcohol-use].resource only CZ_ObservationAlcoholUsePs

* entry contains observation-tobacco-use 0..*
* entry[observation-tobacco-use].resource only CZ_ObservationTobaccoUsePs

* entry contains observation-drug-use 0..*
* entry[observation-drug-use].resource only CZ_ObservationDrugUsePs

// * entry contains observation-results-laboratory-pathology	 0..*
// // * entry[observation-results-laboratory-pathology].resource only CZ_Observation_Results_Laboratory_Pathology_Ps

// * entry contains observation-results-radiology 0..*
// // * entry[observation-results-radiology].resource only CZ_Observation_Results_Radiology_Ps

// * entry contains observation-vital-signs 0..*
// // * entry[observation-vital-signs].resource only CZ_Observation_Vital_Signs_Ps

* entry contains organization 0..*
* entry[organization].resource only CZ_OrganizationCore

* entry contains specimen 0..*
* entry[specimen].resource only CZ_SpecimenPs

* entry contains observation 0..*
* entry[observation].resource only Observation


