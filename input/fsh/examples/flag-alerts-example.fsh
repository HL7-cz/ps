Instance: cz-alert-example
InstanceOf: CZ_FlagPs
Usage: #example
Title: "Alert example"
Description: "An example Alert resource for testing purposes."
* id = "a9d4872b-e076-4b15-bd5f-d9c41ee7fca1"
* status = #active
* code.coding[0].system = $icd10
* code.coding[0].code = #I46.9
* code.coding[0].display = "Cardiac arrest, unspecified"
* code.text = "History of cardiac arrest"
* subject = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)