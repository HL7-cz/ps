Instance: medicationSummary2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/medicationSummary2FHIR-cz-ps"
* name = "MedicationSummary2FHIR-cz-ps"
* title = "ConceptMap: Medication Summary to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Medication Summary Model to this guide mapping"


////////////////////////////////////////////////////////////////////////////////
// A) Section mapping: Logical block -> Composition.section:sectionMedications.entry
////////////////////////////////////////////////////////////////////////////////

* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCzMedicationSummaryEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.5.1 Medication -> sectionMedications.entry (references MedicationStatement | MedicationRequest | MedicationAdministration | MedicationDispense)
* group[=].element[+].code = #medicationSummary.medication
* group[=].element[=].display = "A.2.5.1 - Medication"
* group[=].element[=].target.code = #Composition.section:sectionMedications.entry
* group[=].element[=].target.display = "Composition.section:sectionMedications.entry (1..* Reference(MedicationStatement | MedicationRequest | MedicationAdministration | MedicationDispense))"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Each logical model item 'medication' SHALL be represented as an entry; primary target is MedicationStatement (CZ PS). Other entry types may be used when the source data is orders/dispenses/administrations."

////////////////////////////////////////////////////////////////////////////////
// B) Item mapping: Medication (logical) -> MedicationStatement (CZ PS)
////////////////////////////////////////////////////////////////////////////////

* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogMedicationSummaryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-medicationStatement-ps"

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
* group[=].element[=].target.code = #MedicationStatement.dosage
* group[=].element[=].target.display = "MedicationStatement.dosage"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If dosage is provided as free text, map to MedicationStatement.dosage.text. If structured, map dosage.timing + dosage.doseAndRate."

// A.2.5.1.8 Route of administration
* group[=].element[+].code = #medication.routeOfAdministration
* group[=].element[=].display = "A.2.5.1.8 - Route of administration"
* group[=].element[=].target.code = #MedicationStatement.dosage.route
* group[=].element[=].target.display = "MedicationStatement.dosage.route"
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
* group[=].element[=].target.code = #MedicationStatement.dosage.text
* group[=].element[=].target.display = "MedicationStatement.dosage.text"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "FHIR R4 does not provide a universal element for 'recommended duration'. Use dosage.text or a CZ-specific extension (preferred if you want computability)."

// A.2.5.1.11 Intended use
* group[=].element[+].code = #medication.intendedUse
* group[=].element[=].display = "A.2.5.1.11 - Intended use"
* group[=].element[=].target.code = #MedicationStatement.category
* group[=].element[=].target.display = "MedicationStatement.category"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If you maintain a specific CZ code system for intendedUse (prophylaxis/treatment/diagnostics/...), map it here; otherwise define a dedicated extension."

////////////////////////////////////////////////////////////////////////////////
// C) Details that belong more naturally to Medication (optional, if your model carries them)
//    NOTE: these do not have a clean home on MedicationStatement in R4 without either
//    medicationReference->Medication or extensions.
////////////////////////////////////////////////////////////////////////////////

// Active substances, strength, dose form are typically part of Medication resource.
// If your implementation uses MedicationStatement.medicationReference -> Medication, map these to Medication accordingly.
// Otherwise consider CZ-specific extensions on MedicationStatement.medicationCodeableConcept or MedicationStatement itself.


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


