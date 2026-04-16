Instance: pregnancyHistory2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/ps/ConceptMap/pregnancyHistory2FHIR-cz-ps"
* name = "PregnancyHistory2FHIRCzPs"
* title = "ConceptMap: Pregnancy History to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Pregnancy History Model to this guide mapping"
// ---------------------------------------------------------
// Pregnancy History -> CZ Composition (PS) section mapping
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPregnancyHistoryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.7 Pregnancy History -> Composition.section slice
* group[=].element[+].code = #pregnancyHistory
* group[=].element[=].display = "A.2.7 - Pregnancy History"
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx
* group[=].element[=].target.display = "Composition.section:sectionPregnancyHx"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""
// A.2.7.1 Current pregnancy -> entry slice (Observation)
* group[=].element[+].code = #currentPregnancy
* group[=].element[=].display = "A.2.7.1 - Current pregnancy"
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyStatus.ofType(Observation)
* group[=].element[=].target.display = "Composition.section:sectionPregnancyHx.entry:pregnancyStatus.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment =  ""
// A.2.7.2 History of previous pregnancies -> entry slice (Observation)
* group[=].element[+].code = #previousPregnanciesHistory
* group[=].element[=].display = "A.2.7.2 - History of previous pregnancies"
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyOutcome.ofType(Observation)
* group[=].element[=].target.display = "Composition.section:sectionPregnancyHx.entry:pregnancyOutcome.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

// ---------------------------------------------------------
// A.2.7.1 Current pregnancy -> IPS Pregnancy Status Observation
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPregnancyHistoryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-observation-pregnancyStatus-ps"

// A.2.7.1 Current pregnancy -> Observation (instance referenced from Composition entry slice)
* group[=].element[+].code = #currentPregnancy
* group[=].element[=].display = "A.2.7.1 - Current pregnancy"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "Observation (Pregnancy Status - IPS)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""

// A.2.7.1.1 Record date -> Observation.effective[x]
* group[=].element[+].code = #currentPregnancy.recordDate
* group[=].element[=].display = "A.2.7.1.1 - Record date"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = "Observation.effective[x]"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

// A.2.7.1.2 Status -> Observation.valueCodeableConcept
* group[=].element[+].code = #currentPregnancy.status
* group[=].element[=].display = "A.2.7.1.2 - Status"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

// A.2.7.1.3 Expected date of delivery -> prefer IPS-native component/extension; fallback note
* group[=].element[+].code = #currentPregnancy.expectedDeliveryDate
* group[=].element[=].display = "A.2.7.1.3 - Expected date of delivery"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""

// A.2.7.1.4 Method of estimating the due date -> prefer IPS-native component/extension; fallback note
* group[=].element[+].code = #currentPregnancy.estimatedDueDateMethod
* group[=].element[=].display = "A.2.7.1.4 - Method of estimating the due date"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""

// ---------------------------------------------------------
// A.2.7.2 Previous pregnancies history -> IPS Pregnancy Outcome Observation
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPregnancyHistoryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-observation-pregnancyOutcome-ps"

// A.2.7.2 History of previous pregnancies -> Observation (instance referenced from Composition entry slice)
* group[=].element[+].code = #previousPregnanciesHistory
* group[=].element[=].display = "A.2.7.2 - History of previous pregnancies"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "Observation (Pregnancy Outcome - IPS)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""

// A.2.7.2.1 Previous pregnancy status -> Observation.valueCodeableConcept (SNOMED CT)
* group[=].element[+].code = #previousPregnanciesHistory.status
* group[=].element[=].display = "A.2.7.2.1 - Previous pregnancy status"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

// A.2.7.2.2 Description of previous pregnancies -> container for per-pregnancy details
// A.2.7.2.2 Description of previous pregnancies -> Observation.note (narrative summary)
* group[=].element[+].code = #previousPregnanciesHistory.description
* group[=].element[=].display = "A.2.7.2.2 - Description of previous pregnancies"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""

// A.2.7.2.2.1 Outcome date -> Observation.effective[x]
* group[=].element[+].code = #previousPregnanciesHistory.description.outcomeDate
* group[=].element[=].display = "A.2.7.2.2.1 - Outcome date"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = "Observation.effective[x]"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

// A.2.7.2.2.2 Outcome -> Observation.valueCodeableConcept
* group[=].element[+].code = #previousPregnanciesHistory.description.outcome
* group[=].element[=].display = "A.2.7.2.2.2 - Outcome"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

// A.2.7.2.2.3 Number of children -> prefer IPS-native component/extension; fallback note
* group[=].element[+].code = #previousPregnanciesHistory.description.numberOfChildren
* group[=].element[=].display = "A.2.7.2.2.3 - Number of children"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""
