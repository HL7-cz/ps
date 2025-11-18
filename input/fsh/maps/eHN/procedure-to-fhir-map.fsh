// -------------------------------------------------------------------------------					
//  Concept Model. File: 					procedure-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: procedure2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Procedure2Fhir"					
* title = "eHN Recipient to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Medical Devices Model to this guide Map"					
* purpose = "It shows how theMedical Devices Recipient data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/ProcedurePs"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Procedure-ps-xpandh"					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/ProcedurePs"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Procedure-ps-xpandh"					
					
* group[=].element[+].code = #ProcedurePs.description					
* group[=].element[=].display = "A.2.3.3.1 Procedure description"					
* group[=].element[=].target.code = #Procedure.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #ProcedurePs.bodySite					
* group[=].element[=].display = "A.2.3.3.2 Body site"					
* group[=].element[=].target.code = #Procedure.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #ProcedurePs.date					
* group[=].element[=].display = "A.2.3.3.3 Procedure date"					
* group[=].element[=].target.code = #Procedure.performed[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					