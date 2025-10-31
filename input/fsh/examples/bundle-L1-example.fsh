Instance: cz-example-bundle-ps-L1
InstanceOf: CZ_BundlePs
Usage: #example
Title: "Bundle example for Patient Summary L1"
Description: "An example bundle containing a Patient resource for testing purposes."
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:0be8f7b6-49e4-4201-a952-e82372d99fa5"
* type = #document
* timestamp = "2024-01-01T12:00:00Z"

* entry[composition].fullUrl = "urn:uuid:61e87aa9-960a-4a33-a368-2abce592cafc"
* entry[composition].resource = cz-example-composition-ps-L1

* entry[patient].fullUrl = "urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57"
* entry[patient].resource = cz-examplel1-patient

// // // Author
* entry[practitionerrole].fullUrl = "urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e"
* entry[practitionerrole].resource = cz-example-practitioner-role
* entry[practitioner].fullUrl = "urn:uuid:2e877c76-633d-479b-a6d4-c6d95942de3f"
* entry[practitioner].resource = cz-example-practitioner
* entry[organization][+].fullUrl = "urn:uuid:e206d37b-cfd4-4f10-ad09-ba78038847ca"
* entry[organization][=].resource = cz-organizationAuthor-example

// Presented Form
* entry[presentedForm].fullUrl = "urn:uuid:fe437ba4-9e0b-4d45-8db3-228c7c05abc0"
* entry[presentedForm].resource = cz-pdf-example


Instance: cz-example-composition-ps-L1
InstanceOf: CZ_CompositionPs
Usage: #example
Title: "Composition example for Patient Summary L1"
Description: "An example Composition resource for testing purposes."
* status = #final
* type = $loinc#60591-5 "Patient summary document"
* title = "PS L1 pacienta - Karel Budějovský"
* date = "2024-01-01T12:00:00Z"
* type = $loinc#60591-5 "Patient summary document"
* confidentiality = #N
* language = #cs
// recordTarget
* subject = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57) //TOTO příklad patient - subjekt
// author
* author = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e) //TOTO příklad practitioner - autor
// custodian
* custodian = Reference(urn:uuid:e206d37b-cfd4-4f10-ad09-ba78038847ca) //TOTO příklad organization - správce
// legalAuthenticator
//* attester
// participant, guardian
// * subject patient.contact

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Patient summary - Karel Budějovický </h2><p>Pacientský sourhn Karel Budějovický v L1 úrovni</p></div>"

* section[presentedForm].title = "Prezented Form Section"
* section[presentedForm].code = $loinc#60591-5 "Patient summary document"
* section[presentedForm].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Prezented Form Section obsahující PDF dokument</div>"
* section[presentedForm].text.status = #additional
* section[presentedForm].entry[0] = Reference(urn:uuid:fe437ba4-9e0b-4d45-8db3-228c7c05abc0)

// * section[order].title = "Žádanka na obrazové vyšetření"
// * section[order].code = $loinc#55115-0 "Requested imaging studies information Document"
// * section[order].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Žádanka na PET+CT pacientky Jany Example</div>"
// * section[order].text.status = #additional
// * section[order].entry[0] = Reference(urn:uuid:5be5b9c2-5ca6-4f2e-b3e2-47dc9b334a22)

Instance: cz-examplel1-patient
InstanceOf: CZ_PatientCore
Usage: #example
Title: "Patient example L1 - Karel Budějovský"
Description: "An example Patient resource for testing purposes."
* id = "3c137453-0de8-4e1a-be72-9dc55f500d57"
* identifier[CPOJ][+].system = "https://ncez.mzcr.cz/fhir/sid/cpoj"
* identifier[CPOJ][=].value = "7505201234"
* identifier[CPOJ][=].use = #official
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "123456789"
* name.use = #usual
* name.family = "Budějovský"
* name.given = "Karel"
* name.prefix = "Mudr., Ing., MBA, Ph.D."
* gender = #male
* birthDate = "1975-05-20"
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

Instance: cz-pdf-example
InstanceOf: CZ_Presented_Form
Usage: #example
Title: "Presented Form PDF Example"
Description: "An example PDF attachment for testing purposes."
* id = "fe437ba4-9e0b-4d45-8db3-228c7c05abc0"
* status = #current
* content.attachment.contentType = #application/pdf
* content.attachment.language = #cs //#cs-CZ
* content.attachment.creation = "2025-05-20T12:02:00+01:00"

// * contentType = #application/pdf
// * language = #cs //#cs-CZ
// * data = "xxxflwyNjJcMjYyXDI2MlwzNDRcMzQ0XDM0N"
// * creation = "2025-05-20T12:02:00+01:00"

Instance: cz-example-practitioner-role
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "Example of practitioner role"
Title: "Practitioner Role Example"
* id = "f64bef19-c377-404a-bac2-23d2bbac8f3e"
* code = https://ncez.mzcr.cz/fhir/CodeSystem/nrzp-povolani#NL14 "Zdravotnický záchranář"
* organization = Reference(urn:uuid:e206d37b-cfd4-4f10-ad09-ba78038847ca)
* practitioner = Reference(urn:uuid:2e877c76-633d-479b-a6d4-c6d95942de3f)

Instance: cz-organizationAuthor-example
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "An example of the organization author - Nemocnice s poliklinikou"
Title: "Organization: Author"
* id = "e206d37b-cfd4-4f10-ad09-ba78038847ca"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "12345678"
* name = "Nemocnice s poliklinikou"

Instance: cz-example-practitioner
InstanceOf: CZ_PractitionerCore
Description: "Example of practitioner - Novák Roman"
Title: "Practitioner: Novák"
Usage: #example
* id = "2e877c76-633d-479b-a6d4-c6d95942de3f"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "123456789"
* name.use = #usual
* name.family = "Roman"
* name.given = "Novák"
* gender = #male