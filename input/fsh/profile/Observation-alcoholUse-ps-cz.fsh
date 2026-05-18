Profile: CZ_ObservationAlcoholUsePs
Parent: Observation
Id: cz-observation-alcoholUse-ps
Title: "Observation – Alcohol Use (CZ PS)"
Description: """
This profile represents alcohol use information recorded as a social history observation
in the Czech Patient Summary. It is used to capture the patient's alcohol consumption
status, patterns, or related assessments in a structured and interoperable form.
"""
* insert ImposeProfile($Observation-alcoholUse-ips,0)

* code = $loinc#74013-4 // Alcoholic drinks per day

* subject ^short = "In the initial iteration of the Czech interoperability project: this is Patient (CZ)."
* subject only Reference(CZ_PatientCore or CZ_PatientAnimal)

* performer only Reference(CareTeam or RelatedPerson or CZ_PatientCore or CZ_OrganizationCore or CZ_PractitionerRoleCore or CZ_PractitionerCore)
* performer MS

* component ..0
* component ^mustSupport = false