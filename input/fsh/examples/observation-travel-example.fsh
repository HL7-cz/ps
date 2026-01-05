Instance: cz-observation-travel-hdr-example
InstanceOf: CZ_ObservationTravelHdr
Usage: #example
Title: "Observation Travel History example"
Description: "An example Observation resource for Travel History for testing purposes."
* id = "4eceb19d-d67b-4520-badf-9bbf20cd6046"
* status = #final
* code = $loinc#94651-7 "Country of travel [Location]"
* subject = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)
* effectiveDateTime = "2025-07-20"
* valueCodeableConcept.coding[0].system = "urn:iso:std:iso:3166"
* valueCodeableConcept.coding[0].code = #BE
* valueCodeableConcept.coding[0].display = "Belgium"
* valueCodeableConcept.text = "Belgie"
* performer = Reference(urn:uuid:2e877c76-633d-479b-a6d4-c6d95942de3f)
* note[0].text = "Pacient navštívil Belgii během poslední půl roce."