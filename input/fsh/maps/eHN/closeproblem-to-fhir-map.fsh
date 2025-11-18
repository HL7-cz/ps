// -------------------------------------------------------------------------------					
//  Concept Model. File: 					closedproblem-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: closedProblem2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "ClosedProblem2Fhir"					
* title = "eHN ClosedProblem to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN ClosedProblem Model to this guide Map"					
* purpose = "It shows how the ClosedProblem data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/ClosedProblem"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Condition-ps-xpandh"					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/ClosedProblem"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Condition-ps-xpandh"					
					
* group[=].element[+].code = #ClosedProblem.description					
* group[=].element[=].display = "A.2.2.2.1 Problem description"					
* group[=].element[=].target.code = #Condition.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #ClosedProblem.onsetDate					
* group[=].element[=].display = "A.2.2.2.2 Onset date"					
* group[=].element[=].target.code = #Condition.onsetDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #ClosedProblem.endDate					
* group[=].element[=].display = "A.2.2.2.3 End date"					
* group[=].element[=].target.code = #Condition.abatementDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #ClosedProblem.resolution					
* group[=].element[=].display = "A.2.2.2.4 Resolution circumstances"					
* group[=].element[=].target.code = #Condition.extension:statusReason					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
