Instance: headerToFHIR-ps-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/headerToFHIR-ps-cz"
* name = "HeaderToFHIR-ps-cz"
* title = "ConceptMap Header to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true

//Composition
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"
* group[=].element[+].code = #Header.patient
* group[=].element[=].display = "A.1.1 - Identification of the Patient/subject"
* group[=].element[=].target.code = #Composition.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Header.author
* group[=].element[=].display = "A.1.4 - Author of the document"
* group[=].element[=].target.code = #Composition.author
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Header.attester
* group[=].element[=].display = "A.1.5 - Attester of the document"
* group[=].element[=].target.code = #Composition.attester
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Header.custodian
* group[=].element[=].display = "A.1.6 - Custodian of the document"
* group[=].element[=].target.code = #Composition.custodian
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent





// Patient core
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* group[=].element[+].code = #Header.patient
* group[=].element[=].display = "A.1.1 - Identification of patient"
* group[=].element[=].target.code = #Patient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.subject.ofType(Patient).conformsTo('https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core')"

* group[=].element[+].code = #Header.patient.firstName
* group[=].element[=].display = "A.1.1.1 - First name of patient"
* group[=].element[=].target.code = #Patient.name.given
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "First given name; additional given names are not mapped."

* group[=].element[+].code = #Header.patient.familyName
* group[=].element[=].display = "A.1.1.2 - Family name of patient"
* group[=].element[=].target.code = #Patient.name.family
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Family name (surname)."

* group[=].element[+].code = #Header.patient.birthDate
* group[=].element[=].display = "A.1.1.3 - Birth date of patient"
* group[=].element[=].target.code = #Patient.birthDate
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Date of birth of the patient."

* group[=].element[+].code = #Header.patient.identifier
* group[=].element[=].display = "A.1.1.4 - Patient identifier"
* group[=].element[=].target.code = #Patient.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Patient's primary identifier."

* group[=].element[+].code = #Header.patient.citizenship
* group[=].element[=].display = "A.1.1.5 - State citizenship"
* group[=].element[=].target.code = #Patient.citizenship
* group[=].element[=].target.display = "display text"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The citizenship status of the patient."

* group[=].element[+].code = #Header.patient.gender
* group[=].element[=].display = "A.1.1.6 - Gender of patient"
* group[=].element[=].target.code = #Patient.gender
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Gender of patient."

* group[=].element[+].code = #Header.patient.communicationLanguage
* group[=].element[=].display = "A.1.1.7 - Communication language"
* group[=].element[=].target.code = #Patient.communication.language
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Language used for communication with the patient."

* group[=].element[+].code = #Header.patient.address
* group[=].element[=].display = "A.1.2.1 - Address of patient"
* group[=].element[=].target.code = #Patient.address
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Patient's address."

* group[=].element[+].code = #Header.patient.telecom
* group[=].element[=].display = "A.1.2.2 - Contact details of patient"
* group[=].element[=].target.code = #Patient.telecom
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Contact details such as phone number or email address."

// Practitioner core
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
* group[=].element[+].code = #Header.contactInfo.preferedPhysician
* group[=].element[=].display = "A.1.2.3 - Preferred physician"
* group[=].element[=].target.code = #Practitioner
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Preferred physician information."

* group[=].element[+].code = #Header.contactInfo.preferedPhysician.identifier
* group[=].element[=].display = "A.1.2.3.1 - Identifier of preferred physician"
* group[=].element[=].target.code = #Practitioner.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Identifier of the preferred physician."

* group[=].element[+].code = #Header.contactInfo.preferedPhysician.name
* group[=].element[=].display = "A.1.2.3.2 - Name of preferred physician"
* group[=].element[=].target.code = #Practitioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Name of the preferred physician."

// PractitionerRole core
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* group[=].element[+].code = #Header.contactInfo.preferedPhysician
* group[=].element[=].display = "A.1.2.3 - Preferred physician"
* group[=].element[=].target.code = #PractitionerRole
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Preferred physician information."

* group[=].element[+].code = #Header.contactInfo.preferedPhysician.speciality
* group[=].element[=].display = "A.1.2.3.3 Specializace"
* group[=].element[=].target.code = #PractitionerRole.specialty
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The specialty of the practitioner's role."

* group[=].element[+].code = #Header.contactInfo.preferedPhysician.identifierProvider
* group[=].element[=].display = "A.1.2.3.4 ID a název poskytovatele"
* group[=].element[=].target.code = #PractitionerRole.organization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Identifier of the organization providing the practitioner role."

// Organization core
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-organization-core"
* group[=].element[+].code = #Header.contactInfo.preferedPhysician.identifierProvider.id
* group[=].element[=].display = "A.1.2.3.4.1 ID poskytovatele"
* group[=].element[=].target.code = #Organization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Identifier of the organization providing the practitioner role."

* group[=].element[+].code = #Header.contactInfo.preferedPhysician.identifierProvider.name
* group[=].element[=].display = "A.1.2.3.4.2 Název poskytovatele"
* group[=].element[=].target.code = #Organization.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Name of the organization providing the practitioner role."

* group[=].element[+].code = #Header.contactInfo.preferedPhysician.providerAddress
* group[=].element[=].display = "A.1.2.3.5 Adresa poskytovatele"
* group[=].element[=].target.code = #Organization.address
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Address of the organization providing the practitioner role."

* group[=].element[+].code = #Header.contactInfo.preferedPhysician.providerContact
* group[=].element[=].display = "A.1.2.3.6 Telekomunikační kontakt"
* group[=].element[=].target.code = #Organization.telecom
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Contact details of the organization providing the practitioner role."


// Zákonní zástupci a další kontaktní osoby
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* group[=].element[+].code = #Header.contactInfo.guardiansAndOtherContacts
* group[=].element[=].display = "A.1.2.4 - Guardians and other contacts"
* group[=].element[=].target.code = #Patient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

//TODO také do relationship ale jiný systém kódů?
* group[=].element[+].code = #Header.contactInfo.guardiansAndOtherContacts.contactType
* group[=].element[=].display = "A.1.2.4.1 - Type of contact"
* group[=].element[=].target.code = #Patient.contact.relationship
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Type of contact distinguishing emergency contacts, legal guardians, and other persons related to the patient."

* group[=].element[+].code = #Header.contactInfo.guardiansAndOtherContacts.relationshipToPatient
* group[=].element[=].display = "A.1.2.4.2 - Relationship to patient"
* group[=].element[=].target.code = #Patient.contact.relationship
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The relationship of the person to the patient (father, son, daughter, etc.)"

* group[=].element[+].code = #Header.contactInfo.guardiansAndOtherContacts.identifier
* group[=].element[=].display = "A.1.2.4.3 - Identifier of contact person"
* group[=].element[=].target.code = #Patient.contact.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Identifier of the contact person."

* group[=].element[+].code = #Header.contactInfo.guardiansAndOtherContacts.firstName
* group[=].element[=].display = "A.1.2.4.4 - First name of contact person"
* group[=].element[=].target.code = #Patient.contact.name.given
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "First given name of the contact person."

* group[=].element[+].code = #Header.contactInfo.guardiansAndOtherContacts.familyName
* group[=].element[=].display = "A.1.2.4.5 - Family name of contact person"
* group[=].element[=].target.code = #Patient.contact.name.family
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Family name (surname) of the contact person."

* group[=].element[+].code = #Header.contactInfo.guardiansAndOtherContacts.address
* group[=].element[=].display = "A.1.2.4.6 - Address of contact person"
* group[=].element[=].target.code = #Patient.contact.address
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Postal, home and/or office address. Addresses are always sequences of address parts (e.g., address line, country, postal code, city), although postal address format may vary depending on the country. The address may contain address type information; if this attribute is not present, it is assumed to be a default address usable for any purpose."

* group[=].element[+].code = #Header.contactInfo.guardiansAndOtherContacts.telecom
* group[=].element[=].display = "A.1.2.4.7 - Telecom contact (email, phone, etc.)"
* group[=].element[=].target.code = #Patient.contact.telecom
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Telecom contact (email, phone, etc.)."

// Coverage
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-coverage"
* group[=].element[+].code = #Header.healthInsuranceCompany
* group[=].element[=].display = "A.1.3 - Health insurance company"
* group[=].element[=].target.code = #Coverage
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Patient's health insurance information"

* group[=].element[+].code = #Header.healthInsuranceCompany.insuranceCode
* group[=].element[=].display = "A.1.3.1 - Health insurance company code"
* group[=].element[=].target.code = #Coverage.payor.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Identifier of the health insurance company."

* group[=].element[+].code = #Header.healthInsuranceCompany.name
* group[=].element[=].display = "A.1.3.2 - Health insurance company name"
* group[=].element[=].target.code = #Coverage.payor.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Name of the health insurance company."

* group[=].element[+].code = #Header.healthInsuranceCompany.insuranceNumber
* group[=].element[=].display = "A.1.3.3 - Health insurance number"
* group[=].element[=].target.code = #Coverage.subscriberId
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Insurance number of the patient."

// Author
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* group[=].element[+].code = #Header.author
* group[=].element[=].display = "A.1.4 - Author of the document"
* group[=].element[=].target.code = #PractitionerRole
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Author information."

* group[=].element[+].code = #Header.author.identifier
* group[=].element[=].display = "A.1.4.1 - Identifier of author"
* group[=].element[=].target.code = #PractitionerRole.practitioner.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Identifier of the author practitioner."

* group[=].element[+].code = #Header.author.name
* group[=].element[=].display = "A.1.4.2 - Name of author"
* group[=].element[=].target.code = #PractitionerRole.practitioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Name of the author practitioner."

* group[=].element[+].code = #Header.author.identifierProvider
* group[=].element[=].display = "A.1.4.3 - ID and name of provider organization"
* group[=].element[=].target.code = #PractitionerRole.organization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Identifier of the organization providing the practitioner role."

* group[=].element[+].code = #Header.author.nameProvider
* group[=].element[=].display = "A.1.4.4 - Name of provider organization"
* group[=].element[=].target.code = #PractitionerRole.organization.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Name of the organization providing the practitioner role."

// Composition
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"
* group[=].element[+].code = #Header.author.dateTime
* group[=].element[=].display = "A.1.4.5 - Date and time of authoring"
* group[=].element[=].target.code = #Composition.date
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The date and time that the composition was authored."

// PractitionerRole
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* group[=].element[+].code = #Header.attester
* group[=].element[=].display = "A.1.5 - Attester of the document"
* group[=].element[=].target.code = #PractitionerRole
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Attester information."

* group[=].element[+].code = #Header.attester.idAutor
* group[=].element[=].display = "A.1.5.1 - Identifier of attester"
* group[=].element[=].target.code = #PractitionerRole.practitioner.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Identifier of the attester practitioner."

* group[=].element[+].code = #Header.attester.name
* group[=].element[=].display = "A.1.5.2 - Name of attester"
* group[=].element[=].target.code = #PractitionerRole.practitioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Name of the attester practitioner."

* group[=].element[+].code = #Header.attester.organization.id
* group[=].element[=].display = "A.1.5.3 - Identifier of attester organization"
* group[=].element[=].target.code = #PractitionerRole.organization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Identifier of the organization providing the practitioner role."

* group[=].element[+].code = #Header.attester.organization.name
* group[=].element[=].display = "A.1.5.4 - Name of attester organization"
* group[=].element[=].target.code = #PractitionerRole.organization.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Name of the organization providing the practitioner role."

// Composition
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"
* group[=].element[+].code = #Header.attester.dateTime
* group[=].element[=].display = "A.1.5.5 - Date and time of attestation"
* group[=].element[=].target.code = #Composition.attester.time
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The date and time that the attestation was made."


// Bundle
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-bundle-ps"
* group[=].element[+].code = #Header.metadata.dokumentId
* group[=].element[=].display = "A.1.6.1 - Document identifier"
* group[=].element[=].target.code = #Bundle.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Logical identifier for the bundle assigned when created."

* group[=].element[+].code = #Header.metadata.dateTimeCreation
* group[=].element[=].display = "A.1.6.3 - Document creation date and time"
* group[=].element[=].target.code = #Bundle.timestamp
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The date and time that the bundle was assembled."

// Composition
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"
* group[=].element[+].code = #Header.metadata.category
* group[=].element[=].display = "A.1.6.2 - Document category"
* group[=].element[=].target.code = #Composition.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Categorization of the type of composition (e.g., History and Physical, Discharge Summary, Progress Note)."

* group[=].element[+].code = #Header.metadata.dateTimeCreation
* group[=].element[=].display = "A.1.6.3 - Document creation date and time"
* group[=].element[=].target.code = #Composition.date
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "The date and time that the composition was created."

* group[=].element[+].code = #Header.metadata.title
* group[=].element[=].display = "A.1.6.4 - Document title"
* group[=].element[=].target.code = #Composition.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Document title"

* group[=].element[+].code = #Header.metadata.custodian
* group[=].element[=].display = "A.1.6.5 - Document custodian"
* group[=].element[=].target.code = #Composition.custodian
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Name and identification data of the subject who manages the document. Also known as the technical administrator of the document."

* group[=].element[+].code = #Header.metadata.confidentiality
* group[=].element[=].display = "A.1.6.6 - Document confidentiality"
* group[=].element[=].target.code = #Composition.confidentiality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Degree of confidentiality of the document (and its contents)."

* group[=].element[+].code = #Header.metadata.language
* group[=].element[=].display = "A.1.6.7 - Document language"
* group[=].element[=].target.code = #Composition.language
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Language of the document."

* group[=].element[+].code = #Header.metadata.autoManual
* group[=].element[=].display = "A.1.6.8 - Document generation type"
* group[=].element[=].target.code = #Composition.extension:generationType
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Indicates whether the document was created manually, automatically, or through a hybrid approach"

//TODO?
// jak zakódovat tuto položku a kam ji mapovat v FHIR?
// A.1.6.8	
// Povaha souhrnu	
// Zda byl dokument vytvořen ručně, automaticky nebo kombinovaně


