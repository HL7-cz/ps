Instance: cz-immunization-example
InstanceOf: CZ_ImmunizationPs
Usage: #example
Title: "Immunization example of Covid"
Description: "Immunization of Covid"
* id = "a64af358-7cea-4b8f-8834-867004a8ae00"
* status = #completed
* patient = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)
* occurrenceDateTime = "2021-06-15" 
* vaccineCode = $sct#28531000087107 // Kód vakcíny proti COVID-19

Instance: cz-immunization-example2
InstanceOf: CZ_ImmunizationPs
Usage: #example
Title: "Immunization example of Tetanus"
Description: "Immunization of Tetanus"
* id = "9949917c-5cd2-48d0-a675-ce218c12f9c4"
* status = #completed
* patient = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)
* occurrenceDateTime = "2015-02-05" 
* vaccineCode = $sct#871742003 // Kód vakcíny proti tetanu

