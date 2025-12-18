Instance: medicationSummary2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/ps/ConceptMap/medicationSummary2FHIR-cz-ps"
* name = "MedicationSummary2FHIRCzPs"
* title = "ConceptMap: Medication Summary to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Medication Summary Model to this guide mapping"


////////////////////////////////////////////////////////////////////////////////
// A) Section mapping: Logical block -> Composition.section:sectionMedications.entry
////////////////////////////////////////////////////////////////////////////////

* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogMedicationSummaryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.5.1 Medication -> sectionMedications.entry (references MedicationStatement | MedicationRequest | MedicationAdministration | MedicationDispense)
* group[=].element[+].code = #medicationSummary.medication
* group[=].element[=].display = "A.2.5.1 - Medication"
* group[=].element[=].target.code = #Composition.section:sectionMedications.entry
* group[=].element[=].target.display = "Composition.section:sectionMedications.entry (MedicationStatement | Medication)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Each logical model item 'medication' SHALL be represented as an entry; primary target is MedicationStatement (CZ PS). Other entry types may be used when the source data is orders/dispenses/administrations."

////////////////////////////////////////////////////////////////////////////////
// B) Item mapping: Medication (logical) -> MedicationStatement (CZ PS)
////////////////////////////////////////////////////////////////////////////////

* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogMedicationSummaryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-medicationstatement-ps"

// A.2.5.1.1 Indication
* group[=].element[+].code = #medication.indication
* group[=].element[=].display = "A.2.5.1.1 - Indication"
* group[=].element[=].target.code = #MedicationStatement.reasonCode
* group[=].element[=].target.display = "MedicationStatement.reasonCode"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If the indication is a reference to a problem/condition, map to MedicationStatement.reasonReference (Condition) instead of/in addition to reasonCode."

// A.2.5.1.2 SÚKL code
* group[=].element[+].code = #medication.suklCode
* group[=].element[=].display = "A.2.5.1.2 - SÚKL code"
* group[=].element[=].target.code = #MedicationStatement.medication[x]:medicationCodeableConcept
* group[=].element[=].target.display = "MedicationStatement.medicationCodeableConcept (coding: SÚKL/DLP)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Preferred: CodeableConcept with SÚKL coding. If your CZ PS profile uses medicationReference -> Medication, map SÚKL code to Medication.code instead."

// A.2.5.1.3 Medicinal product name
* group[=].element[+].code = #medication.medicinalProductName
* group[=].element[=].display = "A.2.5.1.3 - Medicinal product name"
* group[=].element[=].target.code = #MedicationStatement.medication[x]:medicationCodeableConcept.text
* group[=].element[=].target.display = "MedicationStatement.medicationCodeableConcept.text"
* group[=].element[=].target.equivalence = #equivalent

// A.2.5.1.7 Dosage
* group[=].element[+].code = #medication.dosage
* group[=].element[=].display = "A.2.5.1.7 - Dosage"
* group[=].element[=].target.code = #MedicationStatement.dosage.doseAndRate
* group[=].element[=].target.display = "MedicationStatement.dosage.doseAndRate"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

// A.2.5.1.8 Route of administration
* group[=].element[+].code = #medication.routeOfAdministration
* group[=].element[=].display = "A.2.5.1.8 - Route of administration"
* group[=].element[=].target.code = #MedicationStatement.dosage.route
* group[=].element[=].target.display = "MedicationStatement.dosageInstruction.route"
* group[=].element[=].target.equivalence = #equivalent

// A.2.5.1.9 Administration period
* group[=].element[+].code = #medication.administrationPeriod
* group[=].element[=].display = "A.2.5.1.9 - Administration period"
* group[=].element[=].target.code = #MedicationStatement.effective[x]
* group[=].element[=].target.display = "MedicationStatement.effectivePeriod"
* group[=].element[=].target.equivalence = #equivalent

// A.2.5.1.10 Recommended duration of use
* group[=].element[+].code = #medication.recommendedDurationOfUse
* group[=].element[=].display = "A.2.5.1.10 - Recommended duration of use"
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat.bounds[x]
* group[=].element[=].target.display = "MedicationStatement.dosage.timing.repeat.bounds[x]"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Represents the intended duration of therapy using boundsDuration or boundsPeriod. For long-term or indefinite therapy, the bounds element is typically not populated and the duration may be expressed in Dosage.text."

// A.2.5.1.11 Intended use
* group[=].element[+].code = #medication.intendedUse
* group[=].element[=].display = "A.2.5.1.11 - Intended use"
* group[=].element[=].target.code = #MedicationStatement.category
* group[=].element[=].target.display = "MedicationStatement.category"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""

// A.2.5.1 Medication
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogMedicationSummaryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-medication-ps"

* group[=].element[+].code = #medication.activeSubstances
* group[=].element[=].display = "A.2.5.1.4 - Active substances"
* group[=].element[=].target.code = #Medication.ingredient.item[x]
* group[=].element[=].target.display = "Medication.ingredient.itemCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #medication.strength
* group[=].element[=].display = "A.2.5.1.5 - Strength"
* group[=].element[=].target.code = #Medication.ingredient.strength
* group[=].element[=].target.display = "Medication.ingredient.strength (Ratio)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Logical model uses CodeableConcept; FHIR uses Ratio. If you do not want to compute Ratio, keep as text via an extension."

* group[=].element[+].code = #medication.doseForm
* group[=].element[=].display = "A.2.5.1.6 - Pharmaceutical dose form"
* group[=].element[=].target.code = #Medication.form
* group[=].element[=].target.display = "Medication.form"
* group[=].element[=].target.equivalence = #equivalent


