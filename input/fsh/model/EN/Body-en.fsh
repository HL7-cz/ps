Logical: LogCzBodyEn
Id: LogBodyPSCzEn
Title: "A.2 – Document Body (Patient Summary)"
Description: "Logical model of the Patient Summary document body."

* patientProvidedData 0..1 LogPatientProvidedDataCzEn "A.2.1 – Patient-provided data" """Data provided by the patient."""
* alerts 1..1 LogAlertsCzEn "A.2.2 – Alerts" """Severe allergies, interactions, or other risks."""
* healthStatusInformation 0..1 LogHealthStatusInfoCzEn "A.2.3 – Health status information" """Information about the patient’s health status."""
* healthIssues 0..* LogHealthIssuesCzEn "A.2.4 – Health issues" """Health issues."""
* medicationSummary 0..1 LogMedicationSummaryCzEn "A.2.5 – Medication summary" """Medication summary."""
* socialHistory 0..1 LogSocialHistoryCzEn "A.2.6 – Social history" """Social history."""
* pregnancyHistory 0..1 LogPregnancyHistoryCzEn "A.2.7 – Pregnancy history" """Pregnancy history."""
* results 0..* LogResultsCzEn "A.2.8 – Results" """Results."""
* carePlan 0..1 LogCarePlanCzEn "A.2.9 – Care plan" """Care plan."""
* attachments 0..1 LogAttachmentsCzEn "A.2.10 – Attachments" """Attachments."""
