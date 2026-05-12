Instance: cz-allergy-intolerance-example
InstanceOf: CZ_AllergyIntolerancePs
Usage: #example
Title: "Allergy Intolerance example"
Description: "An example Allergy Intolerance resource for testing purposes."
* id = "6145f147-dfc8-44fe-9fdd-22600059f498"
* identifier.system = "http://example.org/hospital/allergy-intolerances"
* identifier.value = "allergy-intolerance-001"
* clinicalStatus.coding[0].system = $allergyintolerance-clinical
* clinicalStatus.coding[0].code = #active
* patient = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)
* type = #allergy
* category = #food
* code.coding[0].system = $sct
* code.coding[0].code = #91938006
* code.coding[0].display = "Allergy to strawberry"
* type = #allergy
* criticality = #low
* reaction[0].manifestation[0].coding[0].system = $sct
* reaction[0].manifestation[0].coding[0].code = #418363000
* reaction[0].manifestation[0].coding[0].display = "Itching of skin"
* reaction[0].manifestation[1].coding[0].system = $sct
* reaction[0].manifestation[1].coding[0].code = #81950002
* reaction[0].manifestation[1].coding[0].display = "Edema of the tongue"
* reaction[0].description = "Svědění, otok jazyka."