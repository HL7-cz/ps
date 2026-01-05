Instance: cz-medication-statement-example
InstanceOf: CZ_MedicationStatementPs
Usage: #example
Title: "Medication Statement example paracetamol"
Description: "Example of a Medication Statement in the Czech Patient Summary FHIR Implementation Guide."
* id = "bf7167e9-e7e6-40d4-b810-7d6b48536b9b"
* status = #active
* identifier.system = "http://example.org/hospital/medication-statements"
* identifier.value = "medication-statement-001"
* medicationCodeableConcept = $sct#860975 // Paracetamol
* subject = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)

Instance: cz-medication-statement-example2
InstanceOf: CZ_MedicationStatementPs
Usage: #example
Title: "Medication Statement example Rivaroxaban"
Description: "Example of a Medication Statement in the Czech Patient Summary FHIR Implementation Guide."
* id = "fe9d38fc-057f-4fea-9edb-888d833b7aef"
* status = #active
* identifier.system = "http://example.org/hospital/medication-statements"
* identifier.value = "medication-statement-002"
* medicationCodeableConcept.coding[0].system = "http://www.whocc.no/atc"
* medicationCodeableConcept.coding[0].code = #B01AF01 // Corrected code assignment
* medicationCodeableConcept.coding[0].display = "Rivaroxaban"
* medicationCodeableConcept.text = "Rivaroxaban 20 mg"
* subject = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)
* dosage[0].text = "1-0-0 (20 mg denně)"