Instance: cz-example-patient
InstanceOf: CZ_PatientCore
Usage: #inline
Title: "Patient example - Mračena Mrakomorová"
Description: "An example Patient resource for testing purposes."
* id = "3c137453-0de8-4e1a-be72-9dc55f500d57"
* identifier[RC][+].system = "https://ncez.mzcr.cz/fhir/sid/rcis"
* identifier[RC][=].value = "7161264528"
* identifier[CPOJ][+].system = "https://ncez.mzcr.cz/fhir/sid/cpoj"
* identifier[CPOJ][=].value = "7161264528"
* identifier[CPOJ][=].use = #official
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "1234567890"
* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "Mračena"
* name.prefix = "Mudr., Ing., MBA, Ph.D."
* gender = #female
* birthDate = "1971-11-26"
* address[+].use = #home
* address[=].type = #physical
* address[=].text = "Nová 123, 19000 Praha, CZ"
* address[=].line[+] = "Nová 123"
* address[=].line[=].extension[streetName].valueString = "Nová"
* address[=].line[=].extension[houseNumber].valueString = "123"
* address[=].city = "Praha"
* address[=].postalCode = "19000"
* address[=].country = "CZ"
  * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"
* communication[+].language = urn:ietf:bcp:47#cs
* communication[=].preferred = true