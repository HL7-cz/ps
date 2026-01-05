Instance: cz-medication-statement-example
InstanceOf: CZ_MedicationStatementPs
Usage: #example
Title: "Medication Statement example"
Description: "Example of a Medication Statement in the Czech Patient Summary FHIR Implementation Guide."
* id = "bf7167e9-e7e6-40d4-b810-7d6b48536b9b"
* status = #active
* identifier.system = "http://example.org/hospital/medication-statements"
* identifier.value = "medication-statement-001"
* medicationCodeableConcept = $sct#860975 // Paracetamol
* subject = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)