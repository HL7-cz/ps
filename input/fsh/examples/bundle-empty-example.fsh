Instance: PSExampleBundleNoProblemsMedicationAllergies
InstanceOf: CZ_BundlePs
Title: "Bundle: Prázdný pacientský souhrn (bez diagnóz, léků a alergií)"
Description: "Příklad prázdného pacientského souhrnu, který neobsahuje žádné diagnózy, léky ani alergie. Tento příklad slouží k testování zpracování prázdných sekcí v pacientském souhrnu."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:63fef90a-be11-4ddf-aece-d77da15c4f20"
* type = #document
* timestamp = "2024-02-08T14:01:30+00:00"

* entry[composition].fullUrl = "urn:uuid:212fdc76-ccc3-40bf-8cdd-82f2ef88bd7b"
* entry[composition].resource = PSExampleBundle01-composition
* entry[composition].resource.meta.profile = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

* entry[patient].fullUrl = "urn:uuid:1842b30c-2323-40ff-beb6-93e532162460"
* entry[patient].resource = cz-example-patient_empty

* entry[deviceObserver].fullUrl = "urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57"
* entry[deviceObserver].resource = PSExampleBundle01-deviceObserver

* entry[organization].fullUrl = "urn:uuid:6bcdcc96-1443-48bd-ab41-7692dc1baecd"
* entry[organization].resource = PSExampleBundle01-custodian

Instance: PSExampleBundle01-composition
InstanceOf: CZ_CompositionPs
Usage: #inline
* meta.profile = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"
* id = "212fdc76-ccc3-40bf-8cdd-82f2ef88bd7b"
* status = #final
* type = $loinc#60591-5
* type.text = "Pacientský souhrn"
* subject = Reference(urn:uuid:1842b30c-2323-40ff-beb6-93e532162460) "Mračena Mrakomorová"
* date = "2024-02-08T14:01:30+00:00"
* author = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57) "Generator"
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

Instance: PSExampleBundle01-deviceObserver
InstanceOf: CZ_DeviceObserver
Usage: #inline
* meta.profile = "https://hl7.cz/fhir/core/StructureDefinition/cz-device-observer"
* id = "3c137453-0de8-4e1a-be72-9dc55f500d57"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Toto zařízení generuje dokument pacientského souhrnu ve formátu FHIR.</p></div>"
* deviceName.name = "Generator"
* deviceName.type = #user-friendly-name

Instance: PSExampleBundle01-custodian
InstanceOf: CZ_OrganizationCore
Usage: #inline
* name = "Ukázková organizace"   

Instance: cz-example-patient_empty
InstanceOf: CZ_PatientCore
Usage: #inline
Title: "Patient example - Mračena Mrakomorová"
Description: "An example Patient resource for testing purposes."
* id = "1842b30c-2323-40ff-beb6-93e532162460"
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