Instance: pregnancyHistory2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/pregnancyHistory2FHIR-cz-ps"
* name = "PregnancyHistory2FHIR-cz-ps"
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
* group[=].element[=].target.comment = "Current pregnancy is represented as an Observation (IPS Pregnancy Status) referenced from the pregnancyStatus entry slice."
// A.2.7.2 History of previous pregnancies -> entry slice (Observation)
* group[=].element[+].code = #previousPregnanciesHistory
* group[=].element[=].display = "A.2.7.2 - History of previous pregnancies"
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyOutcome.ofType(Observation)
* group[=].element[=].target.display = "Composition.section:sectionPregnancyHx.entry:pregnancyOutcome.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Previous pregnancy history and outcomes are represented as an Observation (IPS Pregnancy Outcome) referenced from the pregnancyOutcome entry slice."

// ---------------------------------------------------------
// A.2.7.1 Current pregnancy -> IPS Pregnancy Status Observation
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPregnancyHistoryCzEn"
* group[=].target = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"

// A.2.7.1 Current pregnancy -> Observation (instance referenced from Composition entry slice)
* group[=].element[+].code = #currentPregnancy
* group[=].element[=].display = "A.2.7.1 - Current pregnancy"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "Observation (Pregnancy Status - IPS)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =
  "Current pregnancy is represented as an IPS Pregnancy Status Observation. The Observation instance is referenced from Composition.section:sectionPregnancyHx.entry:pregnancyStatus."

// A.2.7.1.1 Record date -> Observation.effective[x]
* group[=].element[+].code = #currentPregnancy.recordDate
* group[=].element[=].display = "A.2.7.1.1 - Record date"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = "Observation.effective[x]"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment =
  "Date/time when the pregnancy status was recorded/assessed."

// A.2.7.1.2 Status -> Observation.valueCodeableConcept
* group[=].element[+].code = #currentPregnancy.status
* group[=].element[=].display = "A.2.7.1.2 - Status"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment =
  "Pregnancy status (e.g., pregnant / not pregnant / unknown) captured as coded value."

// A.2.7.1.3 Expected date of delivery -> prefer IPS-native component/extension; fallback note
* group[=].element[+].code = #currentPregnancy.expectedDeliveryDate
* group[=].element[=].display = "A.2.7.1.3 - Expected date of delivery"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =
  "Map to the IPS Pregnancy Status profile’s preferred representation for EDD (component/extension if defined). If not available, record the expected delivery date in Observation.note as narrative."

// A.2.7.1.4 Method of estimating the due date -> prefer IPS-native component/extension; fallback note
* group[=].element[+].code = #currentPregnancy.estimatedDueDateMethod
* group[=].element[=].display = "A.2.7.1.4 - Method of estimating the due date"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =
  "Map to the IPS Pregnancy Status profile’s preferred representation for the estimation method (component/extension if defined). Otherwise, record the method in Observation.note as narrative."

// ---------------------------------------------------------
// A.2.7.2 Previous pregnancies history -> IPS Pregnancy Outcome Observation
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPregnancyHistoryCzEn"
* group[=].target = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips"

// A.2.7.2 History of previous pregnancies -> Observation (instance referenced from Composition entry slice)
* group[=].element[+].code = #previousPregnanciesHistory
* group[=].element[=].display = "A.2.7.2 - History of previous pregnancies"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "Observation (Pregnancy Outcome - IPS)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =
  "Previous pregnancy history is represented as an IPS Pregnancy Outcome Observation. The Observation instance is referenced from Composition.section:sectionPregnancyHx.entry:pregnancyOutcome. If multiple pregnancies must be conveyed while the entry slice is 0..1, aggregate outcomes (e.g., components and/or narrative summary) according to IPS guidance."

// A.2.7.2.1 Previous pregnancy status -> Observation.valueCodeableConcept (SNOMED CT)
* group[=].element[+].code = #previousPregnanciesHistory.status
* group[=].element[=].display = "A.2.7.2.1 - Previous pregnancy status"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment =
  "Coded statement indicating whether the woman has had previous pregnancies, represented using SNOMED CT in Observation.valueCodeableConcept."

// A.2.7.2.2 Description of previous pregnancies -> container for per-pregnancy details
// A.2.7.2.2 Description of previous pregnancies -> Observation.note (narrative summary)
* group[=].element[+].code = #previousPregnanciesHistory.description
* group[=].element[=].display = "A.2.7.2.2 - Description of previous pregnancies"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =
  "Narrative summary of previous pregnancy description can be recorded in Observation.note (e.g., combined textual description if needed). Structured items are mapped in the following elements."

// A.2.7.2.2.1 Outcome date -> Observation.effective[x]
* group[=].element[+].code = #previousPregnanciesHistory.description.outcomeDate
* group[=].element[=].display = "A.2.7.2.2.1 - Outcome date"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = "Observation.effective[x]"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment =
  "Date related to the pregnancy outcome (e.g., delivery date or outcome date)."

// A.2.7.2.2.2 Outcome -> Observation.valueCodeableConcept
* group[=].element[+].code = #previousPregnanciesHistory.description.outcome
* group[=].element[=].display = "A.2.7.2.2.2 - Outcome"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment =
  "Outcome of the previous pregnancy captured as coded value."

// A.2.7.2.2.3 Number of children -> prefer IPS-native component/extension; fallback note
* group[=].element[+].code = #previousPregnanciesHistory.description.numberOfChildren
* group[=].element[=].display = "A.2.7.2.2.3 - Number of children"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =
  "Map number of children/fetuses to a dedicated component if the IPS Pregnancy Outcome profile defines one. Otherwise, record the number in Observation.note as narrative."
