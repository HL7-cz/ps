// -------------------------------------------------------------------------------					
//  Concept Model. File: 					allergy-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: allergy2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Allergy2FHIR"					
* title = "eHN Allergy to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Allergy Model to this guide Map"					
* purpose = "It shows how the Patient Summary Allergy data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Allergy"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/AllergyIntolerance-ps-xpandh"					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Allergy"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/AllergyIntolerance-ps-xpandh"					
					
* group[=].element[+].code = #Allergy.description					
* group[=].element[=].display = "A.2.1.1.1 Allergy description"					
* group[=].element[=].target.code = #AllergyIntolerance.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Allergy.type					
* group[=].element[=].display = "A.2.1.1.2 Type of propensity"					
* group[=].element[=].target.code = #AllergyIntolerance.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Allergy.manifestation					
* group[=].element[=].display = "A.2.1.1.3 Allergy manifestation"					
* group[=].element[=].target.code = #AllergyIntolerance.reaction					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "general information"					
* group[=].element[+].code = #Allergy.manifestation					
* group[=].element[=].display = "A.2.1.1.3 Allergy manifestation"					
* group[=].element[=].target.code = #AllergyIntolerance.reaction.manifestation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "coded manifestation"					
* group[=].element[+].code = #Allergy.severity					
* group[=].element[=].display = "A.2.1.1.4 Severity"					
* group[=].element[=].target.code = #AllergyIntolerance.reaction.severity					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Allergy.criticality					
* group[=].element[=].display = "A.2.1.1.5 Criticality"					
* group[=].element[=].target.code = #AllergyIntolerance.criticality					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Allergy.onsetDate					
* group[=].element[=].display = "A.2.1.1.6 Onset date"					
* group[=].element[=].target.code = #AllergyIntolerance.onsetDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Allergy.endDate					
* group[=].element[=].display = "A.2.1.1.7 End Date"					
* group[=].element[=].target.code = #AllergyIntolerance.extension:abatement-datetime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Allergy.status					
* group[=].element[=].display = "A.2.1.1.8 Status"					
* group[=].element[=].target.code = #AllergyIntolerance.clinicalStatus					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Allergy.certainty					
* group[=].element[=].display = "A.2.1.1.9 Certainty"					
* group[=].element[=].target.code = #AllergyIntolerance.verificationStatus					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Allergy.agent					
* group[=].element[=].display = "A.2.1.1.10 Agent or Allergen"					
* group[=].element[=].target.code = #AllergyIntolerance.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent									