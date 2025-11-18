// -------------------------------------------------------------------------------					
//  Concept Model. File: 					result-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: result2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "PatientSummaryResult2FHIR"					
* title = "eHN Result to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Result Model to this guide Map"					
* purpose = "It shows how the Result data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Result"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Observation-results-xpandh"					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Result"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Observation-results-xpandh"					
					
* group[=].element[+].code = #Result.observation					
* group[=].element[=].display = "A.2.8.1 Result observations"					
* group[=].element[=].target.code = #Observation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.date					
* group[=].element[=].display = "A.2.8.1.1 Date"					
* group[=].element[=].target.code = #Observation.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Whe it represents the date clincally relevant time (e.g. the time of specimen collection for Lab results"					
* group[=].element[+].code = #Result.date					
* group[=].element[=].display = "A.2.8.1.1 Date"					
* group[=].element[=].target.code = #Observation.issued					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "When is the time when this result has been made available"					
* group[=].element[+].code = #Result.type					
* group[=].element[=].display = "A.2.8.1.2 Observation type"					
* group[=].element[=].target.code = #Observation.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.description					
* group[=].element[=].display = "A.2.8.1.3 Result description"					
* group[=].element[=].target.code = #Observation.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "text describing the result"					
* group[=].element[+].code = #Result.details					
* group[=].element[=].display = "A.2.8.1.4 Observation details"					
* group[=].element[=].target.code = #Observation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "details are described by a set of observation elements "					
* group[=].element[+].code = #Result.result					
* group[=].element[=].display = "A.2.8.1.5 Observation results"					
* group[=].element[=].target.code = #Observation.value					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.result					
* group[=].element[=].display = "A.2.8.1.5 Observation results"					
* group[=].element[=].target.code = #Observation.hasMember					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "when the result is provided in a subordinated observation"					
* group[=].element[+].code = #Result.result					
* group[=].element[=].display = "A.2.8.1.5 Observation results"					
* group[=].element[=].target.code = #Observation.component.value					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "when it refers to a component result"					
* group[=].element[+].code = #Result.performer					
* group[=].element[=].display = "A.2.8.1.6 Performer"					
* group[=].element[=].target.code = #Observation.performer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.reporter					
* group[=].element[=].display = "A.2.8.1.7 Reporter"					
* group[=].element[=].target.code = #Observation.performer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "For interpreter: performer.extension:performerFunction = AUT (author)
If the person responsible for validation:  performer.extension:performerFunction = AUTHEN or LA"									