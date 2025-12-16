Instance: socialHistory2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/socialHistory2FHIR-cz-ps"
* name = "SocialHistory2FHIR-cz-ps"
* title = "ConceptMap: Social History to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Social History Model to this guide mapping"

* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPregnancyHistoryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.7 -> sectionPregnancyHx
* group[=].element[+].code = #pregnancyHistory
* group[=].element[=].display = "A.2.7 - Pregnancy History"
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx
* group[=].element[=].target.display = "Composition.section:sectionPregnancyHx"
* group[=].element[=].target.equivalence = #equivalent

// A.2.7.1 -> entry:pregnancyStatus (single Observation)
* group[=].element[+].code = #currentPregnancy
* group[=].element[=].display = "A.2.7.1 - Current pregnancy"
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyStatus.ofType(Observation)
* group[=].element[=].target.display = "Composition.section:sectionPregnancyHx.entry:pregnancyStatus.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent

// A.2.7.2 (0..*) -> entry:pregnancyOutcome (repeatable Observations)
* group[=].element[+].code = #previousPregnanciesHistory
* group[=].element[=].display = "A.2.7.2 - History of previous pregnancies"
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx.entry:pregnancyOutcome.ofType(Observation)
* group[=].element[=].target.display = "Composition.section:sectionPregnancyHx.entry:pregnancyOutcome.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment =
  "Repeatable: one Pregnancy Outcome Observation per previousPregnanciesHistory occurrence."

// A.2.7.1 Current pregnancy
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPregnancyHistoryCzEn"
* group[=].target = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"

// A.2.7.1.1 recordDate -> effectiveDateTime
* group[=].element[+].code = #currentPregnancy.recordDate
* group[=].element[=].display = "A.2.7.1.1 - Record date"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = "Observation.effectiveDateTime"
* group[=].element[=].target.equivalence = #equivalent

// A.2.7.1.2 status -> valueCodeableConcept
* group[=].element[+].code = #currentPregnancy.status
* group[=].element[=].display = "A.2.7.1.2 - Status"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent

// A.2.7.1.3 expectedDeliveryDate -> note (narrative)
* group[=].element[+].code = #currentPregnancy.expectedDeliveryDate
* group[=].element[=].display = "A.2.7.1.3 - Expected date of delivery"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =
  "EDD recorded as narrative (e.g. 'Expected delivery date: 2026-03-10')."

// A.2.7.1.4 estimatedDueDateMethod -> note (narrative)
* group[=].element[+].code = #currentPregnancy.estimatedDueDateMethod
* group[=].element[=].display = "A.2.7.1.4 - Method of estimating the due date"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =
  "Method recorded as narrative (e.g. 'EDD method: ultrasound')."

// ---------------------------------------------------------
// A.2.7.2 Previous pregnancies history -> IPS Pregnancy Outcome Observation (repeatable)
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPregnancyHistoryCzEn"
* group[=].target = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips"

// A.2.7.2 (0..*) -> one Outcome Observation per occurrence (entry slice already handled in composition group)
* group[=].element[+].code = #previousPregnanciesHistory
* group[=].element[=].display = "A.2.7.2 - History of previous pregnancies"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "Observation (Pregnancy Outcome - IPS)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

// A.2.7.2.1 status
* group[=].element[+].code = #previousPregnanciesHistory.status
* group[=].element[=].display = "A.2.7.2.1 - Previous pregnancy status"
* group[=].element[=].target.code = #Observation.component[status].valueCodeableConcept
* group[=].element[=].target.display = "Observation.component[status].valueCodeableConcept"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""

// A.2.7.2.2 Description
* group[=].element[+].code = #previousPregnanciesHistory.description
* group[=].element[=].display = "A.2.7.2.2 - Description of previous pregnancies"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

// A.2.7.2.2.1 outcomeDate
* group[=].element[+].code = #previousPregnanciesHistory.description.outcomeDate
* group[=].element[=].display = "A.2.7.2.2.1 - Outcome date"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = "Observation.effectiveDateTime"
* group[=].element[=].target.equivalence = #equivalent

// A.2.7.2.2.2 outcome
* group[=].element[+].code = #previousPregnanciesHistory.description.outcome
* group[=].element[=].display = "A.2.7.2.2.2 - Outcome"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

// A.2.7.2.2.3 numberOfChildren
* group[=].element[+].code = #previousPregnanciesHistory.description.numberOfChildren
* group[=].element[=].display = "A.2.7.2.2.3 - Number of children"
* group[=].element[=].target.code = #Observation.component[numberOfChildren].valueInteger
* group[=].element[=].target.display = "Observation.component[numberOfChildren].valueInteger"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Number of children/fetuses in the given pregnancy (e.g., twins = 2)."
