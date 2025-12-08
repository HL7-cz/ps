Profile: CZ_CompositionPs
Parent: Composition
Id: cz-composition-ps
Title: "Composition (CZ PS) - dle EU"
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
* author ^definition = "CZ Practitioner Core, CZ Practitioner Role Core, CZ Medical Device, or CZ Organization Core profile representing the author(s) of the composition."

* attester.party only Reference( CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore) //or CZ_PatientCore or CZ_RelatedPersonCore

* custodian only Reference(CZ_OrganizationCore)

* insert SectionSliceComRules (Sections composing the Patient Summary,
        The root of the sections that make up the Patient Summary composition.)

//pokus
* text ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:populate-if-known
* text ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"


* section contains
  sectionpresentedForm 1..1 and
  sectionAdvanceDirectives 0..1 and
  sectionTravelHx 0..1 and
  sectionAllergies 0..1 and
  sectionAlert 0..1 and //má význam? eu je https://build.fhir.org/ig/hl7-eu/eps/StructureDefinition-composition-eu-eps.html
  sectionAlerts 0..1 and 
// poznámka z chatGPT
// Minimalistická interpretace (doporučená)
// Z hlediska implementace:
// ✔ sectionAllergies = alergie
// ✔ sectionAlerts = obecné varování (popisné, administrativní, situační)
// ✔ sectionAlert = klinická urgentní rizika (např. významné varování)  
  sectionImmunizations 0..1 and
  sectionPastProblems 0..1 and
  sectionPatientStory 0..1 and
  sectionProblems 0..1 and
  sectionProceduresHx 0..1 and
  sectionMedicalDevices 0..1 and
  sectionFunctionalStatus 0..1 and
  sectionMedications 0..1 and
  sectionSocialHistory 0..1 and
  sectionPregnancyHx 0..1 and
  sectionResults 0..1 and
  sectionPlanOfCare 0..1 and
  sectionAttachments 0..1 and
  sectionVitalSigns 0..1 and
  
  sectionPatientHx 0..1
  

///////////////////////////////// Údaje poskytnuté pacientem SECTION ///////////////////////////////////////
* section[sectionpresentedForm]
  * insert SectionComRules (
    Presented Form Section,
    The Presented Form Section contains the document or media presented to the patient or patient representative as part of the Patient Summary.,
    $loinc#60591-5 )
  * entry 1..1
  * entry only Reference(CZ_Presented_Form)


///////////////////////////////// Údaje poskytnuté pacientem SECTION ///////////////////////////////////////

* section[sectionAdvanceDirectives]
  * insert SectionComRules (
    Advance Directives Section,
    The advance directives section contains a narrative description of patient's advance directive.,
    $loinc#42348-3 )
  * entry only Reference(CZ_ConsentHdr or DocumentReference)

* section[sectionTravelHx]
  * insert SectionComRules (
        Travel History Section,
        This Section describes the travel history relevant for the Patient Summary\, e.g.recent travel in a region of high prevalence of a specific infectious disease like Malaria,
        $loinc#10182-4 )
  * entry only Reference(CZ_ObservationSdohHdr)

///////////////////////////////// Urgentní informace SECTION ///////////////////////////////////////
* section[sectionAllergies]
  * insert SectionComRules (
      Allergies and Intolerances Section,
      This section documents the relevant allergies or intolerances (conditions\) for that patient\, describing the kind of reaction (e.g. rash\, anaphylaxis\,..\); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum\, it should list currently active and any relevant historical allergies and adverse reactions.\r\nIf no information about allergies is available\, or if no allergies are known this should be clearly documented in the section.,
      $loinc#48765-2 )
  * entry 1..
  * entry only Reference(CZ_AllergyIntolerance) 
 
* section[sectionAlerts]
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
      http://loinc.org#104605-1 )
  * entry 0..
  * entry only Reference(Flag)

///////////////////////////////// Informace o zdravotním stavu  SECTION ///////////////////////////////////////
* section[sectionImmunizations]
  * insert SectionComRules (
    Immunizations Section,
      The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nThe section includes current immunization status\, and may contain the entire immunization history that is relevant to the period of time being summarized.
      , $loinc#11369-6 )   // CODE "History of Immunization Narrative"
  * entry 1..
  * entry only Reference(CZ_ImmunizationHdr  or CZ_ImmunizationRecommendationHdr)
  * insert SectionEntrySliceComRules ( Patient's immunization status and pertinent history.
    , It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\n It may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known. ) //'

* section[sectionPastProblems]
  * insert SectionComRules (
    Past Problems Section,
    The past problems section contains a narrative description of the patient's past problems. It includes entries for problems as described in related profiles,
    $loinc#8716-3 )   
  * entry 0..*
  * entry only Reference(Condition)

* section[sectionPatientStory]
  * insert SectionComRules (
    Patient Story Section,
    The patient story section contains a narrative description of the patient’s symptoms\, the development of the illness\, or other subjective information as provided by the patient.,
    $loinc#10164-2 )   

///////////////////////////////// Zdravotní problémy  SECTION ///////////////////////////////////////

* section[sectionProblems]
  * insert SectionComRules (
    Problem list Section,
    Problem list Reported,
    $loinc#11450-4 ) 
  * entry 0..*
  * entry only Reference(Condition)  

* section[sectionProceduresHx]
  * insert SectionComRules (
    History of procedures Section,
    This section defines all interventional\, surgical\, diagnostic\, or therapeutic procedures or treatments pertinent to the patient historically and at the time the document is generated.,
    $loinc#47519-4)
  * entry 0..*
  * entry only Reference(Procedure) 

* section[sectionMedicalDevices]
  * insert SectionComRules (
    History of medical device use Section,
    History of medical device use defines a patient's implanted and external medical devices and equipment that their health status depends on\, as well as any pertinent equipment or device history. This term is also used to itemize any pertinent current or historical durable medical equipment used to help maintain the patient's health status. All pertinent equipment relevant to the diagnosis\, care\, and treatment of a patient should be included.,
    $loinc#46264-8)
  * entry 0..*
  * entry only Reference(CZ_MedicalDevice) 

* section[sectionFunctionalStatus]
  * insert SectionComRules (
    Functional status assessment note Section,
    Functional status assessment describes the patient's status of normal functioning at the time a care record was created. Functional statuses include information regarding the patient relative to ambulatory ability\, mental status or competency\, activities of daily living\, home/living situation having an effect on the health status of the patient\, ability to care for self\, social activity\, occupation activity\, housework or volunteering\, family and home responsibilities or activities related to home and family\, communication ability\, and perception\, including sight\, hearing\, taste\, skin sensation\, kinesthetic sense\, proprioception or balance.,
    $loinc#47420-5)

///////////////////////////////// Souhn medikace SECTION ///////////////////////////////////////
* section[sectionMedications]
  * insert SectionComRules (
    Medication Summary Section,
    History of medication use defines a patient's current medications and history of pertinent medications. This term may also include a patient's prescription and dispense history.,
    $loinc#10160-0 )
  * entry 1..
  * entry only Reference(CZ_MedicationStatementPs or CZ_MedicationRequestPs or MedicationAdministration	or 	MedicationDispense) //TODO MedicationAdministration, MedicationDispense?

///////////////////////////////// Sociální anamnéza SECTION ///////////////////////////////////////
* section[sectionSocialHistory]
  * insert SectionComRules (
    Social history Section,
    The Social history section contains information on regular smoking\, alcohol consumption\, and the use of substitute products\, including details on quantity and duration of exposure\, as well as information on the use of other addictive substances.,
    $loinc#29762-2  )
  * entry 0..*
  * entry only Reference(Observation or Condition)
  // ---- SLICING entry ----
  * entry ^slicing.discriminator.type = #profile
  * entry ^slicing.discriminator.path = "resolve()"
  * entry ^slicing.rules = #open

  * entry contains
      alcoholUse 0..* and
      tobaccoUse 0..* and
      drugUse 0..* and
      otherAddictions 0..*

  * entry[alcoholUse] ^short = "Alcohol use observations"
  * entry[alcoholUse] ^definition = "Observations describing alcohol use or abuse (e.g. LOINC 11331-6)."
  * entry[alcoholUse] only Reference(Observation)

  * entry[tobaccoUse] ^short = "Tobacco use observations"
  * entry[tobaccoUse] ^definition = "Observations describing tobacco use or abuse (e.g. LOINC 11367-0)."
  * entry[tobaccoUse] only Reference(Observation)

  * entry[drugUse] ^short = "Drug use observations"
  * entry[drugUse] ^definition = "Observations describing use or abuse of other drugs (e.g. LOINC 11343-1)."
  * entry[drugUse] only Reference(Observation)

  * entry[otherAddictions] ^short = "Other addictions Section"
  * entry[otherAddictions] ^definition = "The section contains non-substance addictions"
  * entry[otherAddictions] only Reference(Observation or Condition)

// hint z chatGPT 
//4.1 Diagnostické závislosti → Condition
// patologické závislosti (např. F63.0 – pathological gambling, F55 – misuse of non-dependent drugs…)
// cokoliv, co má diagnózu (MKN-10, SNOMED disorder)
// To je jasně Condition.
// 4.2 Nezávažné, ne-diagnostické formy → Observation
// „závislost na sociálních sítích“
// „závislost na hrách“
// „závislost na práci“ (workaholismus)
// volný text, kdy není diagnóza
// obecné subjektivní vyjádření pacienta
// Tyto údaje logicky spadají pod Observation s textovým obsahem

///////////////////////////////// Historie těhotenství SECTION ///////////////////////////////////////
* section[sectionPregnancyHx]
  * insert SectionComRules (
    History of pregnancies Section,
    The pregnancy history section contains a narrative description of the patient's pregnancy history. It includes entries for pregnancy history as described in related profiles,
    $loinc#10162-6 )
  * entry 0..*
  * entry only Reference(Observation)

  // --- Slices for entry: pregnancy status & outcomes ---
  * entry ^slicing.discriminator.type = #profile
  * entry ^slicing.discriminator.path = "resolve()"
  * entry ^slicing.rules = #open
  * entry ^slicing.ordered = false

  * entry contains
      pregnancyStatus 0..1 and
      pregnancyOutcome 0..1

  * entry[pregnancyStatus] ^short = "Pregnancy status"
  * entry[pregnancyStatus] ^definition = "Current pregnancy status (IPS Pregnancy Status profile)."
  * entry[pregnancyStatus] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips)

  * entry[pregnancyOutcome] ^short = "Pregnancy outcomes"
  * entry[pregnancyOutcome] ^definition = "Historical pregnancy outcomes (IPS Pregnancy Outcome profile)."
  * entry[pregnancyOutcome] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips)

///////////////////////////////// Výsledky SECTION ///////////////////////////////////////
* section[sectionResults]
  * insert SectionComRules (
    Results Section,
    This section assembles relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results\, others may be anatomic pathology results\, others\, radiology results\, and others\, clinical results.,
    $loinc#30954-2 )
  * entry 0..
  * entry only Reference(Observation or DiagnosticReport) 

* section[sectionVitalSigns]
  * insert SectionComRules (
    Vital Signs Section,
    The vital signs section contains a narrative description of the patient's vital signs. It includes entries for vital sign measurements as described in related profiles,
    $loinc#8716-3 )
  * entry 0..*
  * entry only Reference(Observation)

///////////////////////////////// Plán péče SECTION ///////////////////////////////////////
* section[sectionPlanOfCare]
  * insert SectionComRules (
    Care Plan Section,
    The Care Plan Section contains a narrative description and coded entries of the patient's care plan including goals\, interventions\, and outcomes.,
    $loinc#18776-5 )
  * entry 0..*
  * entry only Reference(CarePlan or ImmunizationRecommendation)

///////////////////////////////// Přílohy SECTION ///////////////////////////////////////
* section[sectionAttachments]
  * insert SectionComRules (
    Attachments Section,
    The Attachments Section contains additional documents or media related to the patient's care that are not included elsewhere in the document.,
    $loinc#77599-9 )
  * entry 0..*
  * entry only Reference(DocumentReference)

