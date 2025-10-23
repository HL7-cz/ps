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
* group[=].element[+].code = #pacient
* group[=].element[=].display = "A.1.1 - Identification of the Patient/subject"
* group[=].element[=].target.code = #Composition.subject
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Header.author
* group[=].element[=].display = "A.1.4 - Author of the document"
* group[=].element[=].target.code = #Composition.author
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Header.overil
* group[=].element[=].display = "A.1.5 - Attester of the document"
* group[=].element[=].target.code = #Composition.attester
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Header.spravce
* group[=].element[=].display = "A.1.6 - Custodian of the document"
* group[=].element[=].target.code = #Composition.custodian
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent





//Patient core
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHeaderPSCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* group[=].element[+].code = #Header.subject
* group[=].element[=].display = "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject"
* group[=].element[=].target.code = #Patient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.subject.ofType(Patient).conformsTo('https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core')"
* group[=].element[+].code = #Header.payer.insuranceNumber
* group[=].element[=].display = "A.1.3.3 - Health insurance number"
* group[=].element[=].target.code = #Patient.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If treated as one of the Patient identifiers; this applies in some jurisdictions."




