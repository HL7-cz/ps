Instance: PSExampleBundleNoProblemsMedicationAllergies
InstanceOf: CZ_BundlePs
Title: "Bundle: Prázdný pacientský souhrn (bez diagnóz, léků a alergií)"
Description: "Příklad prázdného pacientského souhrnu, který neobsahuje žádné diagnózy, léky ani alergie. Tento příklad slouží k testování zpracování prázdných sekcí v pacientském souhrnu."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:63fef90a-be11-4ddf-aece-d77da15c4f20"
* type = #document
* timestamp = "2024-02-08T14:01:30+00:00"
* entry[0].fullUrl = "urn:uuid:212fdc76-ccc3-40bf-8cdd-82f2ef88bd7b"
* entry[=].resource = PSExampleBundle01-composition
* entry[+].fullUrl = "urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57"
* entry[=].resource = cz-example-patient
* entry[+].fullUrl = "urn:uuid:75db30ee-7028-486c-929a-c5126837f472"
* entry[=].resource = PSExampleBundle01-author
* entry[+].fullUrl = "urn:uuid:6bcdcc96-1443-48bd-ab41-7692dc1baecd"
* entry[=].resource = PSExampleBundle01-custodian

Instance: PSExampleBundle01-composition
InstanceOf: CZ_CompositionPs
Usage: #inline
* id = "212fdc76-ccc3-40bf-8cdd-82f2ef88bd7b"
* status = #preliminary
* type = $loinc#60591-5
* subject = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57) "Mračena Mrakomorová"
* date = "2024-02-08T14:01:30+00:00"
* author = Reference(urn:uuid:75db30ee-7028-486c-929a-c5126837f472) "Generator"
* title = "Pacientský souhrn - Mračena Mrakomorová"
* custodian = Reference(urn:uuid:6bcdcc96-1443-48bd-ab41-7692dc1baecd) "Ukázková organizace"
// * extension[countryOfAffiliation].valueString = "AT"
* extension[presentedForm].valueAttachment.contentType = #application/pdf
* extension[presentedForm].valueAttachment.title = "Pacientský souhrn PDF"
* extension[presentedForm].valueAttachment.url = "Binary/..."
* section[sectionMedications].title = "Seznam léčivých přípravků"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #empty
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Není evidována žádná medikace.</p></div>"
* section[sectionMedications].emptyReason = $list-empty-reason#nilknown
* section[sectionAllergies].title = "Alergie a intolerance"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #empty
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Nejsou evidovány žádné alergie ani intolerance.</p></div>"
* section[sectionAllergies].emptyReason = $list-empty-reason#nilknown
* section[sectionProblems].title = "Zdravotní problémy a rizika"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #empty
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Nejsou evidovány žádné zdravotní problémy ani rizika.</p></div>"
* section[sectionProblems].emptyReason = $list-empty-reason#nilknown
* section[sectionProceduresHx].title = "Výkony a terapie"
* section[sectionProceduresHx].code = $loinc#47519-4 "History of Procedures Document"
* section[sectionProceduresHx].text.status = #empty
* section[sectionProceduresHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Nejsou evidovány žádné výkony ani terapie.</p></div>"
* section[sectionProceduresHx].emptyReason = $list-empty-reason#nilknown
* section[sectionMedicalDevices].title = "Implantáty, zdravotnické prostředky a pomůcky"
* section[sectionMedicalDevices].code = $loinc#46264-8 "History of medical device use"
* section[sectionMedicalDevices].text.status = #empty
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Nejsou evidovány žádné zdravotnické prostředky ani implantáty.</p></div>"
* section[sectionMedicalDevices].emptyReason = $list-empty-reason#nilknown

Instance: PSExampleBundle01-author
InstanceOf: CZ_MedicalDevice
Usage: #inline
* id = "75db30ee-7028-486c-929a-c5126837f472"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Toto zařízení generuje dokument pacientského souhrnu ve formátu FHIR.</p></div>"
* deviceName.name = "Generator"
* deviceName.type = #user-friendly-name
* patient = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)

Instance: PSExampleBundle01-custodian
InstanceOf: CZ_OrganizationCore
Usage: #inline
* id = "6bcdcc96-1443-48bd-ab41-7692dc1baecd"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "456789655"
* type[+] = $drzar#101 "Fakultní nemocnice"
* name = "Fakultní nemocnice Oblackov"
* telecom[0].system = #phone
* telecom[=].value = "+420257216007"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "+420257216007"
* telecom[=].use = #work

* address[+].use = #work
* address[=].type = #both
* address[=].text = "Fiktivní 951/125, 100 00 Město"
* address[=].line[+] = "Fiktivní 951/125"
* address[=].line[=].extension[streetName].valueString = "Fiktivní"
* address[=].line[=].extension[houseNumber].valueString = "951/125"
* address[=].city = "Město"
* address[=].postalCode = "10000"
* address[=].country = "CZ"