// -------------------------------------------------------------------------------					
//  Concept Model. File: 					functionalStatus-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: functionalStatus2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "FunctionalStatus2Fhir"					
* title = "eHN Recipient to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Medical Devices Model to this guide Map"					
* purpose = "It shows how theMedical Devices Recipient data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/FunctionalStatus"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Composition-ps-xpandh"					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/FunctionalStatus"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Composition-ps-xpandh"					
					
* group[=].element[+].code = #FunctionalStatus.description					
* group[=].element[=].display = "A.2.3.4.1 Description"					
* group[=].element[=].target.code = #Composition.section.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "where section.code = 'http://loinc.org#47420-5' "					
* group[=].element[+].code = #FunctionalStatus.onsetDate					
* group[=].element[=].display = "A.2.3.4.2 Onset Date"					
* group[=].element[=].target.code = #Composition.section.entry.onset[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "where section.code = 'http://loinc.org#47420-5'  and entry of type Condition"					
* group[=].element[+].code = #FunctionalStatus.code					
* group[=].element[=].display = "A.2.3.4.3 Functional assessment description"					
* group[=].element[=].target.code = #Composition.section.entry.description					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "where section.code = 'http://loinc.org#47420-5'  and entry of type ClinicalImpression"					
* group[=].element[+].code = #FunctionalStatus.date					
* group[=].element[=].display = "A.2.3.4.4 Functional assessment date"					
* group[=].element[=].target.code = #Composition.section.entry.effective[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "where section.code = 'http://loinc.org#47420-5'  and entry of type ClinicalImpression"					
* group[=].element[+].code = #FunctionalStatus.result					
* group[=].element[=].display = "A.2.3.4.5 Functional assessment result"					
* group[=].element[=].target.code = #Composition.section.entry.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "where section.code = 'http://loinc.org#47420-5'  and entry of type Condition.Considering the result as indication of the disability"					
* group[=].element[+].code = #FunctionalStatus.result					
* group[=].element[=].display = "A.2.3.4.5 Functional assessment result"					
* group[=].element[=].target.code = #Composition.section.entry.finding					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "where section.code = 'http://loinc.org#47420-5'  and entry of type ClinicalImpression"					
