// -------------------------------------------------------------------------------					
//  Concept Model. File: 					devices-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: medicalDevice2FHIR-eu-ps					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "MedicalDevice2Fhir"					
* title = "eHN Recipient to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Medical Devices Model to this guide Map"					
* purpose = "It shows how theMedical Devices Recipient data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/MedicalDevice"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/DeviceUseStatement-ps-xpandh"					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/MedicalDevice"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/ps/StructureDefinition/DeviceUseStatement-ps-xpandh"					
					
* group[=].element[+].code = #MedicalDevice.description					
* group[=].element[=].display = "A.2.3.2.1 Device and implant description"					
* group[=].element[=].target.code = #DeviceUseStatement.device.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #MedicalDevice.identifier					
* group[=].element[=].display = "A.2.3.2.2 Device ID"					
* group[=].element[=].target.code = #DeviceUseStatement.device.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If it is a generic identifier"					
* group[=].element[+].code = #MedicalDevice.identifier					
* group[=].element[=].display = "A.2.3.2.2 Device ID"					
* group[=].element[=].target.code = #DeviceUseStatement.device.udiCarrier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If it is an UDI"					
* group[=].element[+].code = #MedicalDevice.implantDate					
* group[=].element[=].display = "A.2.3.2.3 Implant date"					
* group[=].element[=].target.code = #DeviceUseStatement.timingPeriod.start					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #MedicalDevice.endDate					
* group[=].element[=].display = "A.2.3.2.4 End date"					
* group[=].element[=].target.code = #DeviceUseStatement.timingPeriod.end					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
