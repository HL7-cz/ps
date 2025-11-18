// -------------------------------------------------------------------------------	
//  Concept Model. File: 	pregnancy-to-fhir-map.fsh
// -------------------------------------------------------------------------------	
Instance: pregnancy2FHIR-eu-ps	
InstanceOf: ConceptMap	
Usage: #definition	
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"	
* name = "Pregnancy2Fhir"	
* title = "eHN Recipient to this guide Map"	
* status = #draft	
* experimental = true	
* description = "eHN Medical Devices Model to this guide Map"	
* purpose = "It shows how theMedical Devices Recipient data set defined by the EU eHN guidelines is mapped into this guide"	
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Pregnancy"	
* targetUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Composition-ps-xpandh"	
	
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Pregnancy"	
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Composition-ps-xpandh"	
	
* group[=].element[+].code = #Pregnancy.pregnancyStatus	
* group[=].element[=].display = "A.2.6.1 Current pregnancy status"	
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyStatus	
* group[=].element[=].target.display = ""	
* group[=].element[=].target.equivalence = #relatedto	
	
* group[=].element[+].code = #Pregnancy.pregnancyStatus.dateOfObservation	
* group[=].element[=].display = "A.2.6.1.1 Date of observation"	
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyStatus.effectiveDateTime	
* group[=].element[=].target.display = ""	
* group[=].element[=].target.equivalence = #equivalent	
	
* group[=].element[+].code = #Pregnancy.pregnancyStatus.status	
* group[=].element[=].display = "A.2.6.1.2 Status"	
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyStatus.valueCodeabelConcept	
* group[=].element[=].target.display = ""	
* group[=].element[=].target.equivalence = #equivalent	
	
* group[=].element[+].code = #Pregnancy.pregnancyStatus.deliveryDate	
* group[=].element[=].display = "A.2.6.1.3 Expected date of delivery"	
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyStatus.hasMember.valueDateTime	
* group[=].element[=].target.display = ""	
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[=].target.comment = "where section:sectionPregnancyHx.entry:pregnancyStatus.hasMember.code IN PregnancyExpectedDeliveryDateMethodUvIps value set"	
* group[=].element[+].code = #Pregnancy.hxPreviousPregnancies	
* group[=].element[=].display = "A.2.6.2 History of previous pregnancies"	
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyOutcomeSummary	
* group[=].element[=].target.display = ""	
* group[=].element[=].target.equivalence = #relatedto	
	
* group[=].element[+].code = #Pregnancy.hxPreviousPregnancies.status	
* group[=].element[=].display = "A.2.6.2.1 Previous pregnancies status"	
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry	
* group[=].element[=].target.display = ""	
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[=].target.comment = "Observation profile to be added"	
* group[=].element[+].code = #Pregnancy.hxPreviousPregnancies.description	
* group[=].element[=].display = "A.2.6.2.2 Previous pregnancies description"	
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyOutcomeSummary	
* group[=].element[=].target.display = ""	
* group[=].element[=].target.equivalence = #relatedto	
	
* group[=].element[+].code = #Pregnancy.hxPreviousPregnancies.description.outcomeDate	
* group[=].element[=].display = "A.2.6.2.2.1 Outcome date"	
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyOutcomeSummary.effectiveDateTime	
* group[=].element[=].target.display = ""	
* group[=].element[=].target.equivalence = #equivalent	
	
* group[=].element[+].code = #Pregnancy.hxPreviousPregnancies.description.outcome	
* group[=].element[=].display = "A.2.6.2.2.2 Outcome"	
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyOutcomeSummary.code	
* group[=].element[=].target.display = ""	
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[=].target.comment = "to be checked"	
* group[=].element[+].code = #Pregnancy.hxPreviousPregnancies.description.numberOfChildren	
* group[=].element[=].display = "A.2.6.2.2.3 Number of children"	
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyOutcomeSummary.valueQuentity	
* group[=].element[=].target.display = ""	
* group[=].element[=].target.equivalence = #equivalent	
