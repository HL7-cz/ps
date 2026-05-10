Profile: CZ_ObservationTravelPs
Parent: Observation
Id: cz-observation-travel-ps
Title: "Observation: travel history (PS CZ)"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch travel history."

* ^experimental = false
* code = $loinc#94651-7  //"Country of Travel"
* effective[x] ^short = "Date or period of visit in a country"
* effective[x] ^definition = "The date or period of visit in a country."
* value[x] ^short = "Country visited"
* value[x] ^definition = "The country visited."
* value[x] only $CodeableConcept-uv-ips

* subject 1..
* subject only Reference(CZ_PatientCore)