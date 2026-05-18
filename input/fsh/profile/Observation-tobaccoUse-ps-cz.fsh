Profile: CZ_ObservationTobaccoUsePs
Parent: Observation
Id: cz-observation-tobaccoUse-ps
Title: "Observation – Tobacco Use (CZ PS)"
Description: """
This profile represents tobacco use information recorded as a social history observation
in the Czech Patient Summary. It is used to capture the patient's tobacco consumption
status, patterns, or related assessments in a structured and interoperable form.
"""
* insert ImposeProfile($Observation-tobaccoUse-ips,0)

* code = $loinc#72166-2 // Tobacco smoking status

* subject ^short = "In the initial iteration of the Czech interoperability project: this is Patient (CZ)."
* subject only Reference(CZ_PatientCore or CZ_PatientAnimal)

* performer only Reference(CareTeam or RelatedPerson or CZ_PatientCore or CZ_OrganizationCore or CZ_PractitionerRoleCore or CZ_PractitionerCore)
* performer MS

* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from CurrentSmokingStatusUvIps (preferred)

* component ..0
* component ^mustSupport = false