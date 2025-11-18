// -------------------------------------------------------------------------------					
//  Concept Model. File: 					problem-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: problem2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Problem2Fhir"					
* title = "eHN Problem to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Problem Model to this guide Map"					
* purpose = "It shows how the Problem data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Problem"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Condition-ps-xpandh"					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Problem"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Condition-ps-xpandh"					
					
* group[=].element[+].code = #Problem.description					
* group[=].element[=].display = "A.2.3.1.1 Problem / diagnosis description"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Problem.onsetDate					
* group[=].element[=].display = "A.2.3.1.2 Onset date"					
* group[=].element[=].target.code = #Condition.onsetDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Problem.assertionStatus					
* group[=].element[=].display = "A.2.3.1.3 Diagnosis assertion status"					
* group[=].element[=].target.code = #Condition.verificationStatus					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					