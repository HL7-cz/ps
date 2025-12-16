Instance: healthIssues2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/healthIssues2FHIR-cz-ps"
* name = "HealthIssues2FHIR-cz-ps"
* title = "ConceptMap: Health Issues to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Health Issues Model to this guide mapping"

//// ---------------- A.2.4 Zdravotní problémy -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHealthIssuesCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.4.1 Aktuální zdravotní problémy -> Composition.section:sectionProblems.entry.ofType(CZ_ConditionPs)
* group[=].element[+].code = #problems
* group[=].element[=].display = "A.2.4 - Current health problems"
* group[=].element[=].target[+].code = #Composition.section:sectionProblems.entry
* group[=].element[=].target[=].display = "Composition.section:sectionProblems.entry.ofType(CZ_ConditionPs)"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.2 Výkony -> Composition.section:sectionProcedures.entry.ofType(CZ_ProcedurePs)
* group[=].element[+].code = #procedure
* group[=].element[=].display = "A.2.4 - Procedures"
* group[=].element[=].target[+].code = #Composition.section:sectionProceduresHx.entry
* group[=].element[=].target[=].display = "Composition.section:sectionProceduresHx.entry.ofType(CZ_ProcedurePs)"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.3 Lékařské přístroje a implantáty -> Composition.section:sectionMedicalDevices.entry.ofType(Device)
* group[=].element[+].code = #device
* group[=].element[=].display = "A.2.4 - Medical devices and implants"
* group[=].element[=].target[+].code = #Composition.section:sectionMedicalDevices.entry
* group[=].element[=].target[=].display = "Composition.section:sectionMedicalDevices.entry.ofType(CZ_MedicalDevice)"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.4 Funkční stav -> Composition.section:sectionFunctionalStatus.entry()
* group[=].element[+].code = #functionalStatus
* group[=].element[=].display = "A.2.4 - Functional status"
* group[=].element[=].target[+].code = #Composition.section:sectionFunctionalStatus.entry
* group[=].element[=].target[=].display = "Composition.section:sectionFunctionalStatus.entry.ofType(CZ_FunctionalStatusPs)"
* group[=].element[=].target[=].equivalence = #equivalent

//// ---------------- End of A.2.4 Zdravotní problémy -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHealthIssuesCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-condition-ps"
// A.2.4.1.1 Popis problému
* group[=].element[+].code = #problems.description
* group[=].element[=].display = "A.2.4.1.1 Problem description"
* group[=].element[=].target[+].code = #Condition.code.text
* group[=].element[=].target[=].display = "Condition.code.text"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.1.2 Kód
* group[=].element[+].code = #problems.code
* group[=].element[=].display = "A.2.4.1.2 Code"
* group[=].element[=].target[+].code = #Condition.code.coding
* group[=].element[=].target[=].display = "Condition.code.coding"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.1.3 Datum nástupu
* group[=].element[+].code = #problems.onsetDate
* group[=].element[=].display = "A.2.4.1.3 Date of onset"
* group[=].element[=].target[+].code = #Condition.onset
* group[=].element[=].target[=].display = "Condition.onset dateTime"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.1.4 Datum ústupu nebo remise
* group[=].element[+].code = #problems.abatementDate
* group[=].element[=].display = "A.2.4.1.4 Date of resolution or remission"
* group[=].element[=].target[+].code = #Condition.abatement
* group[=].element[=].target[=].display = "Condition.abatement dateTime"
* group[=].element[=].target[=].comment = "Problems with an active clinical status SHALL NOT have this element populated."
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.1.5 Okolnosti ústupu
* group[=].element[+].code = #problems.abatementReason
* group[=].element[=].display = "A.2.4.1.5 Circumstances of resolution"
* group[=].element[=].target[+].code = #Condition.note
* group[=].element[=].target[=].display = "Condition.note[+].text"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.1.6 Závažnost
* group[=].element[+].code = #problems.severity
* group[=].element[=].display = "A.2.4.1.6 Severity"
* group[=].element[=].target[+].code = #Condition.severity
* group[=].element[=].target[=].display = "Condition.severity"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.1.7 Stádium onemocnění
* group[=].element[+].code = #problems.stage
* group[=].element[=].display = "A.2.4.1.7 Disease stage"
* group[=].element[=].target[+].code = #Condition.stage.summary
* group[=].element[=].target[=].display = "Condition.stage.summary"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.1.8 Stav potvrzení diagnózy
* group[=].element[+].code = #problems.verificationStatus
* group[=].element[=].display = "A.2.4.1.7 Disease stage"
* group[=].element[=].target[+].code = #Condition.verificationStatus
* group[=].element[=].target[=].display = "Condition.verificationStatus"
* group[=].element[=].target[=].equivalence = #equivalent
//// ---------------- End of A.2.4.1 Zdravotní problémy -------------------////
//// ---------------- A.2.4.2 Výkony -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHealthIssuesCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-procedure-ps"
// A.2.4.2.1 Kód výkonu
* group[=].element[+].code = #procedure.code
* group[=].element[=].display = "A.2.4.2.1 Procedure code"
* group[=].element[=].target[+].code = #Procedure.code.coding
* group[=].element[=].target[=].display = "Procedure.code.coding"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.2.2 Popis výkonu
* group[=].element[+].code = #procedure.description
* group[=].element[=].display = "A.2.4.2.2 Procedure description"
* group[=].element[=].target[+].code = #Procedure.code.text
* group[=].element[=].target[=].display = "Procedure.code.text"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.2.3 Místo výkonu
* group[=].element[+].code = #procedure.bodySite
* group[=].element[=].display = "A.2.4.2.3 Body site"
* group[=].element[=].target[+].code = #Procedure.bodySite
* group[=].element[=].target[=].display = "Procedure.bodySite"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.2.4 Datum provedení
* group[=].element[+].code = #procedure.performedDate
* group[=].element[=].display = "A.2.4.2.4 Date performed"
* group[=].element[=].target[+].code = #Procedure.performed[]
* group[=].element[=].target[=].display = "Procedure.performedDateTime"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.2.5 Důvod
* group[=].element[+].code = #procedure.reasonCode
* group[=].element[=].display = "A.2.4.2.5 Reason"
* group[=].element[=].target[+].code = #Procedure.reasonCode
* group[=].element[=].target[=].display = "Procedure.reasonCode"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.2.6 Výsledek
* group[=].element[+].code = #procedure.outcome
* group[=].element[=].display = "A.2.4.2.6 Outcome"
* group[=].element[=].target[+].code = #Procedure.outcome
* group[=].element[=].target[=].display = "Procedure.outcome"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.2.7 Komplikace
* group[=].element[+].code = #procedure.complication
* group[=].element[=].display = "A.2.4.2.7 Complication"
* group[=].element[=].target[+].code = #Procedure.complication
* group[=].element[=].target[=].display = "Procedure.complication"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.2.8 Cílový zdravotnický prostředek
* group[=].element[+].code = #procedure.usedDevice
* group[=].element[=].display = "A.2.4.2.8 Target medical device"
* group[=].element[=].target[+].code = #Procedure.focalDevice.manipulated
* group[=].element[=].target[=].display = "Procedure.focalDevice.manipulated"
* group[=].element[=].target[=].comment = "It is RECOMMENDED to also populate Procedure.focalDevice.action to specify the type of device manipulation."
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.2.9 Počet provedení
* group[=].element[+].code = #procedure.performedQuantity
* group[=].element[=].display = "A.2.4.2.9 Number of occurrences"
* group[=].element[=].target[+].code = #Procedure.performedQuantity
* group[=].element[=].target[=].display = "Procedure.performedQuantity"
* group[=].element[=].target[=].equivalence = #equivalent
//// ---------------- End of A.2.4.2 Výkony -------------------////
//// ---------------- A.2.4.3 Lékařské přístroje a implantáty -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHealthIssuesCzEn"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-medical-device"
// A.2.4.3.1 Lékařský přístroj
* group[=].element[+].code = #device.code
* group[=].element[=].display = "A.2.4.3.1 Medical device"
* group[=].element[=].target[+].code = #Device.type
* group[=].element[=].target[=].display = "Device.type"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.3.2 Identifikátor přístroje
* group[=].element[+].code = #device.identifier
* group[=].element[=].display = "A.2.4.3.2 Device identifier"
* group[=].element[=].target[+].code = #Device.udiCarrier
* group[=].element[=].target[=].display = "Device.udiCarrier"
* group[=].element[=].target[=].equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHealthIssuesCzEn"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-deviceUseStatement-hdr"

// A.2.4.3.3 Datum zavedeni
* group[=].element[+].code = #device.useStartDate
* group[=].element[=].display = "A.2.4.3.3 Implantation / start of use date"
* group[=].element[=].target[+].code = #DeviceUseStatement.timingPeriod.start
* group[=].element[=].target[=].display = "DeviceUseStatement.timingPeriod.start"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.3.4 Datum odstranění
* group[=].element[+].code = #device.useEndDate
* group[=].element[=].display = "A.2.4.3.4 Explantation / end of use date"
* group[=].element[=].target[+].code = #DeviceUseStatement.timingPeriod.end
* group[=].element[=].target[=].display = "DeviceUseStatement.timingPeriod.end"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.3.5 Důvod použití
* group[=].element[+].code = #device.reasonCode
* group[=].element[=].display = "A.2.4.3.5 Reason"
* group[=].element[=].target[+].code = #DeviceUseStatement.reasonCode
* group[=].element[=].target[=].display = "DeviceUseStatement.reasonCode"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #device.reasonCode
* group[=].element[=].display = "A.2.4.3.5 Reason"
* group[=].element[=].target[+].code = #DeviceUseStatement.reasonReference
* group[=].element[=].target[=].display = "DeviceUseStatement.reasonReference"
* group[=].element[=].target[=].equivalence = #equivalent


//  A.2.4.4 Funkční stav
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHealthIssuesCzEn"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-observation-ps"
// A.2.4.4.1 Datum a čas
* group[=].element[+].code = #functionalStatus.effectiveDateTime
* group[=].element[=].display = "A.2.4.4.1 Date and time"
* group[=].element[=].target[+].code = #Observation.effective[x]
* group[=].element[=].target[=].display = "Observation.effectiveDateTime"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.4.2 Provedl
* group[=].element[+].code = #functionalStatus.performer
* group[=].element[=].display = "A.2.4.4.2 Assessed by"
* group[=].element[=].target[+].code = #Observation.perform
* group[=].element[=].target[=].display = "Observation.perform"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.4.3 Popis
* group[=].element[+].code = #functionalStatus.note
* group[=].element[=].display = "A.2.4.4.3 Description"
* group[=].element[=].target[+].code = #Observation.value[x]
* group[=].element[=].target[=].display = "Observation.valueString"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.4.4 Hodnocení formalizované
* group[=].element[+].code = #functionalStatus.assessment
* group[=].element[=].display = "A.2.4.4.4 Formal assessment"
* group[=].element[=].target[+].code = #Observation.hasMember
* group[=].element[=].target[=].display = "Observation.hasMember"
* group[=].element[=].target[=].comment = "Contains references to individual formalized functional status assessment Observations."
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.4.4.1 Datum vzniku
* group[=].element[+].code = #functionalStatus.assessment.onsetDate
* group[=].element[=].display = "A.2.4.4.4.1 Date of onset"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "The onset date of functional limitation is currently not mapped in the CZ Patient Summary. This decision reflects the absence of harmonized guidance in the European Patient Summary Implementation Guide. The mapping will be revisited once a standardized approach is defined at the European level."  
// A.2.4.4.4.2 Výsledek vyšetření textem
* group[=].element[+].code = #functionalStatus.assessment.valueText
* group[=].element[=].display = "A.2.4.4.4.2 Assessment result (text)"
* group[=].element[=].target[+].code = #Observation.valueCodeableConcept.text
* group[=].element[=].target[=].display = "Observation.valueCodeableConcept.text"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.4.4.3 Popis vyšetření
* group[=].element[+].code = #functionalStatus.assessment
* group[=].element[=].display = "A.2.4.4.4.3 Assessment description"
* group[=].element[=].target[+].code = #Observation.code
* group[=].element[=].target[=].display = "Observation.code"
* group[=].element[=].target[=].equivalence = #equivalent
// A.2.4.4.4.4 Výsledek vyšetření formalizovaný
* group[=].element[+].code = #functionalStatus.assessment.valueCodeableConcept
* group[=].element[=].display = "A.2.4.4.4.4 Assessment result (coded)"
* group[=].element[=].target[+].code = #Observation.valueCodeableConcept.code
* group[=].element[=].target[=].display = "Observation.valueCodeableConcept.code"
* group[=].element[=].target[=].equivalence = #equivalent
