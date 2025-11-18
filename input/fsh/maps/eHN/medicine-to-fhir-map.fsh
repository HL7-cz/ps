// -------------------------------------------------------------------------------					
//  Concept Model. File: 					medicine-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: medicine2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Medicine2Fhir"					
* title = "eHN Medicine to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Medicine Model to this guide Map"					
* purpose = "It shows how the Medicine  data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Medicine"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/MedicationStatement-ps-xpandh"					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Medicine"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/MedicationStatement-ps-xpandh"					
					
* group[=].element[+].code = #Medicine.reason					
* group[=].element[=].display = "A.2.4.1.1 Medication reason"					
* group[=].element[=].target.code = #MedicationStatement.reasonCode					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "if only a code is provided"					
* group[=].element[+].code = #Medicine.reason					
* group[=].element[=].display = "A.2.4.1.1 Medication reason"					
* group[=].element[=].target.code = #MedicationStatement.reasonReference					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "if provided as a reference to a Condition"					
* group[=].element[+].code = #Medicine.intendedUse					
* group[=].element[=].display = "A.2.4.1.2 Intended use"					
* group[=].element[=].target.code = #MedicationStatement.category					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "this map adopts  the definition given in R5"					
* group[=].element[+].code = #Medicine.productName					
* group[=].element[=].display = "A.2.4.1.3 Brand name"					
* group[=].element[=].target.code = #MedicationStatement.medication[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see group 2"					
* group[=].element[+].code = #Medicine.activeIngredient					
* group[=].element[=].display = "A.2.4.1.4 Active ingredient lists"					
* group[=].element[=].target.code = #MedicationStatement.medication[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see group 2"					
* group[=].element[+].code = #Medicine.strength					
* group[=].element[=].display = "A.2.4.1.5 Strength"					
* group[=].element[=].target.code = #MedicationStatement.medication[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see group 2"					
* group[=].element[+].code = #Medicine.doseForm					
* group[=].element[=].display = "A.2.4.1.6 Pharmaceutical dose form"					
* group[=].element[=].target.code = #MedicationStatement.medication[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "see group 2"					
* group[=].element[+].code = #Medicine.dosageRegimen					
* group[=].element[=].display = "A.2.4.1.7 Dosage Regimen"					
* group[=].element[=].target.code = #MedicationStatement.dosage					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Medicine.route					
* group[=].element[=].display = "A.2.4.1.8 Route of administration"					
* group[=].element[=].target.code = #MedicationStatement.dosage.route					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Medicine.onsetDate					
* group[=].element[=].display = "A.2.4.1.9 Date of onset of treatment"					
* group[=].element[=].target.code = #MedicationStatement.effectivePeriod.start					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Medicine"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/Medication-ps-xpandh"					
					
* group[=].element[+].code = #Medicine.productName					
* group[=].element[=].display = "A.2.4.1.3 Brand name"					
* group[=].element[=].target.code = #Medication.code.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Medicine.activeIngredient					
* group[=].element[=].display = "A.2.4.1.4 Active ingredient lists"					
* group[=].element[=].target.code = #Medication.ingredient.itemCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where ingredient.isActive = true"					
* group[=].element[+].code = #Medicine.strength					
* group[=].element[=].display = "A.2.4.1.5 Strength"					
* group[=].element[=].target.code = #Medication.ingredient.strength					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where ingredient.isActive = true"					
* group[=].element[+].code = #Medicine.doseForm					
* group[=].element[=].display = "A.2.4.1.6 Pharmaceutical dose form"					
* group[=].element[=].target.code = #Medication.form					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					