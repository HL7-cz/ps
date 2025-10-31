Profile: CZ_CompositionPs
Parent: Composition
Id: cz-composition-ps
Title: "Composition: Patient Summary (CZ)"
Description: "Clinical document used to represent a Patient Summary for the scope of this guide."

* . ^short = "Composition: Patient Summary (CZ)"
* . ^definition = "Electronic document representing a Patient Summary as defined in the Czech National Implementation Guide for Patient Summaries."

* extension contains $event-basedOn named basedOn 0..*
* extension[basedOn].valueReference only Reference (Resource or ServiceRequest) /// add profile

* type = $loinc#60591-5 "Patient summary document"

* subject only Reference(CZ_PatientCore)
* subject 1..1
* subject ^definition = "CZ Patient Core profile representing the patient who is the subject of the composition."

* author only Reference( CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_MedicalDevice or CZ_OrganizationCore) //or CZ_PatientCore or CZ_RelatedPersonCore 
* author 1..*

* attester.party only Reference( CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore) //or CZ_PatientCore or CZ_RelatedPersonCore

* custodian only Reference(CZ_OrganizationCore)

* insert SectionSliceComRules (Sections composing the Patient Summary,
        The root of the sections that make up the Patient Summary composition.)


* section contains
  presentedForm 1..1 and
  advanceDirectives 0..1 and
  travelHistory 0..1 and
  allergy 0..1 and
  alert 0..1 and
  immunizations 0..1 and
  pastIllnessHistory 0..1 and
  patientHistory 0..1 and
  medicationSummary 0..1 and
  alcoholUse 0..1 and
  tobaccoUse 0..1 and
  drugUse 0..1 and
  otherAddictions 0..1 and
  currentPregnancy 0..1 and
  pregnancyHistory 0..1 and
  results 0..1 and 
  carePlan 0..1 and
  attachments 0..1

///////////////////////////////// Údaje poskytnuté pacientem SECTION ///////////////////////////////////////
* section[presentedForm]
  * insert SectionComRules (
    Presented Form Section,
    The Presented Form Section contains the document or media presented to the patient or patient representative as part of the Patient Summary.,
    $loinc#60591-5 )   // Document, summary, or note presented to patient
  * entry 1..1
  * entry only Reference(CZ_Presented_Form) //TODO


///////////////////////////////// Údaje poskytnuté pacientem SECTION ///////////////////////////////////////

* section[advanceDirectives]
  * insert SectionComRules (
    Advance Directives Section,
    The advance directives section contains a narrative description of patient's advance directive.,
    $loinc#42348-3 )  // 	Advance directives
  * entry only Reference(Consent or DocumentReference) //TODO

* section[travelHistory]
  * insert SectionComRules (
        Travel History Section,
        This Section describes the travel history relevant for the Patient Summary\, e.g.recent travel in a region of high prevalence of a specific infectious disease like Malaria,
        $loinc#10182-4 )   // Travel history
  * entry only Reference(Observation) //TODO

///////////////////////////////// Urgentní informace SECTION ///////////////////////////////////////
* section[allergy]
  * insert SectionComRules (
      Allergies and Intolerances Section,
      This section documents the relevant allergies or intolerances (conditions\) for that patient\, describing the kind of reaction (e.g. rash\, anaphylaxis\,..\); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum\, it should list currently active and any relevant historical allergies and adverse reactions.\r\nIf no information about allergies is available\, or if no allergies are known this should be clearly documented in the section.,
      $loinc#48765-2 )   // CODE
  * entry 1..
  * entry only Reference(AllergyIntolerance) //TODO
 
* section[alert]
  * insert SectionComRules (
    Alert Section, // SHORT
    A warning\, other than included in allergies.
    The warning can be entered in code there are codes for frequently used alerts but seeing the dynamic nature of the warnings\, these alerts will often be entered as free text.
    Any clinical information that is imperative to know so that the life or health of the patient does not come under threat. 
    Example 1: the patient has a rare disease that requires special treatment 
    Example 2: Airway Alert / Difficult Intubation
    Example 3: Diagnoses such as malignant hyperthermia\, porphyria\, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices. 
    Example 4: transplanted organs illustrate other information that has to be taken into account in a healthcare contact. 
    Example 5: participation in a clinical trial that has to be taken into account in a healthcare contact. , // DESC
      http://loinc.org#104605-1 )   // CODE
  * entry 0..
  * entry only Reference(Flag) //TODO

///////////////////////////////// Informace o zdravotním stavu  SECTION ///////////////////////////////////////
* section[immunizations]
  * insert SectionComRules (
    Immunizations Section,
      The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nThe section includes current immunization status\, and may contain the entire immunization history that is relevant to the period of time being summarized.
      , $loinc#11369-6 )   // CODE "History of Immunization Narrative"
  * entry 1..
  * entry only Reference(Immunization  or ImmunizationRecommendation) //TODO
  * insert SectionEntrySliceComRules ( Patient's immunization status and pertinent history.
    , It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\n It may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known. ) //'

///////////////////////////////// Zdravotní problémy  SECTION ///////////////////////////////////////

* section[pastIllnessHistory]
  * insert SectionComRules (
    History of Past Illness Section,
    The History of Past Illness section contains a narrative description and coded entries of the conditions the patient suffered in the past.,
    $loinc#11348-0 )   // History of Past Illness
//TODO

* section[patientHistory]
  * insert SectionComRules (
    Patient History Section,
    This Section describes all aspects of the medical history of the patient even if not pertinent to the current procedure\, and may include chief complaint\, past medical history\, social history\, family history\, surgical or procedure history\, medication history\, and other history information. The history may be limited to information pertinent to the current procedure or may be more comprehensive. The history may be reported as a collection of random clinical statements or it may be reported categorically. Categorical report formats may be divided into multiple subsections including Past Medical History\, Social History.,
    $loinc#35090-0 )   // Patient history
//TODO

///////////////////////////////// Souhn medikace SECTION ///////////////////////////////////////
* section[medicationSummary]
  * insert SectionComRules (
    Medication Summary Section,
    This Section contains a summary of the patient's medications including current and past medications. The section may include medication orders\, medication statements\, or both. The section may also include information about medication allergies and adverse reactions if not documented elsewhere in the document.,
    $loinc#10160-0 )   // Medication summary
  * entry 1..
  * entry only Reference(Medication or DocumentReference or MedicationStatement or MedicationRequest) //TODO

///////////////////////////////// Sociální anamnéza SECTION ///////////////////////////////////////
* section[alcoholUse]
  * insert SectionComRules (
    Alcohol use Section,
    The Alcohol use Section contains a description of the use abuse of alcohol,
    $loinc#11331-6  )   // History of Alcohol use
  * entry 0..*
  * entry only Reference(Observation)

* section[tobaccoUse]
  * insert SectionComRules (
    Tobacco use Section,
    The Tobacco use Section contains a description of the use abuse of tobacco,
    $loinc#11367-0  )   // History of Tobacco use
  * entry 0..*
  * entry only Reference(Observation)

* section[drugUse]
  * insert SectionComRules (
    Drug use Section,
    The Drug use Section contains a description of the use abuse of drugs,
    $loinc#11343-1  )   // History of Other nonmedical drug use
  * entry 0..*
  * entry only Reference(Observation)

* section[otherAddictions]
  * insert SectionComRules (
    Other addictions Section,
    The section contains non-substance addictions,
    $loinc#29762-2 )   // Social history Narrative
  * entry 0..*
  * entry only Reference(Condition or Observation)

///////////////////////////////// Historie těhotenství SECTION ///////////////////////////////////////
* section[currentPregnancy]
  * insert SectionComRules (
    Current Pregnancy Section,
    The Current Pregnancy Section contains a description of the patient's current pregnancy including details such as gestational age\, expected date of delivery\, complications\, and other relevant information.,
    $loinc#82810-3 )   // Current pregnancy
  * entry 0..*
  * entry only Reference(Observation or Condition)

* section[pregnancyHistory]
  * insert SectionComRules (
    Pregnancy History Section,
    The Pregnancy History Section contains a description of the patient's pregnancy history including details such as number of pregnancies\, outcomes\, complications\, and other relevant information.,
    $loinc#56833-7 )   // Pregnancy history
  * entry 0..*
  * entry only Reference(Observation or Condition)

///////////////////////////////// Výsledky SECTION ///////////////////////////////////////
* section[results]
  * insert SectionComRules (
    Results Section,
    The Results Section contains a narrative description and coded entries of the results of diagnostic tests and procedures performed on the patient.,
    $loinc#30954-2 )   // Results
  * entry 1..
  * entry only Reference(Observation) //TODO

///////////////////////////////// Plán péče SECTION ///////////////////////////////////////
* section[carePlan]
  * insert SectionComRules (
    Care Plan Section,
    The Care Plan Section contains a narrative description and coded entries of the patient's care plan including goals\, interventions\, and outcomes.,
    $loinc#18776-5 )   // Care plan
  * entry 0..*
  * entry only Reference(CarePlan) //TODO

///////////////////////////////// Přílohy SECTION ///////////////////////////////////////
* section[attachments]
  * insert SectionComRules (
    Attachments Section,
    The Attachments Section contains additional documents or media related to the patient's care that are not included elsewhere in the document.,
    $loinc#77599-9 )   // Attachments
  * entry 0..*
  * entry only Reference(DocumentReference) //TODO

