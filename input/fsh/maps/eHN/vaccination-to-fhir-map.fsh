// -------------------------------------------------------------------------------					
//  Concept Model. File: 					vaccination-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: vaccination2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Vaccination2Fhir"					
* title = "eHN Vaccination to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Vaccination infos to this guide Map"					
* purpose = "It shows how the Vaccination data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Vaccination"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Immunization-ps-xpandh"					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Vaccination"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Immunization-ps-xpandh"					
					
* group[=].element[+].code = #Vaccination.targetDisease					
* group[=].element[=].display = "A.2.2.1.1 Disease or agent targeted"					
* group[=].element[=].target.code = #Immunization.protocolApplied.targetDisease					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Vaccination.vaccine					
* group[=].element[=].display = "A.2.2.1.2 Vaccine/prophylaxis"					
* group[=].element[=].target.code = #Immunization.vaccineCode					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Vaccination.productName					
* group[=].element[=].display = "A.2.2.1.3 Vaccine medicinal product name"					
* group[=].element[=].target.code = #Immunization.extension:administeredProduct.extension[concept].valueCodeableConcept.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Vaccination.productId					
* group[=].element[=].display = "A.2.2.1.3.1 Identifier of the vaccine medicinal product"					
* group[=].element[=].target.code = #Immunization.extension:administeredProduct.extension[concept].valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Vaccination.marketingAuthorisationHolder					
* group[=].element[=].display = "A.2.2.1.4 Marketing Autorisation Holder"					
* group[=].element[=].target.code = #Immunization.manufacturer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Vaccination.numberInSeries					
* group[=].element[=].display = "A.2.2.1.5 Number in a series of vaccinations/doses"					
* group[=].element[=].target.code = #Immunization.protocolApplied.doseNumber[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "It is a combination of doseNumber and SeriesNumber"					
* group[=].element[+].code = #Vaccination.numberInSeries					
* group[=].element[=].display = "A.2.2.1.5 Number in a series of vaccinations/doses"					
* group[=].element[=].target.code = #Immunization.protocolApplied.seriesDoses[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "It is a combination of doseNumber and SeriesNumber"					
* group[=].element[+].code = #Vaccination.batchNumber					
* group[=].element[=].display = "A.2.2.1.6 Batch/lot number"					
* group[=].element[=].target.code = #Immunization.lotNumber					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Vaccination.dateOfVaccination					
* group[=].element[=].display = "A.2.2.1.7 Date of vaccination"					
* group[=].element[=].target.code = #Immunization.occurrenceDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Vaccination.administeringCentre					
* group[=].element[=].display = "A.2.2.1.8 Administering centre"					
* group[=].element[=].target.code = #Immunization.performer.actor:administeringCentre					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "actor of type Organization. 
If it is the organization performing the vaccination"					
* group[=].element[+].code = #Vaccination.administeringCentre					
* group[=].element[=].display = "A.2.2.1.8 Administering centre"					
* group[=].element[=].target.code = #Immunization.location					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If it refer to where the vaccianiton ttok place"					
* group[=].element[+].code = #Vaccination.healthProfessionalId					
* group[=].element[=].display = "A.2.2.1.9 Health Professional identification"					
* group[=].element[=].target.code = #Immunization.performer.actor:administeringHp.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "actor of type PractitonerRole or Practitioner. "					
* group[=].element[+].code = #Vaccination.countryOfVaccination					
* group[=].element[=].display = "A.2.2.1.10 Country of vaccination"					
* group[=].element[=].target.code = #Immunization.location.address.country					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Vaccination.dateOfNextVaccination					
* group[=].element[=].display = "A.2.2.1.11 Next vaccination date"					
* group[=].element[=].target.code = #Immunization.extension:basedOn.recommendation.dateCriterion:nextDose.value					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent									