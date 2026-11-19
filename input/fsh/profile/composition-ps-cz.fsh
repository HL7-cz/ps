Profile: CZ_CompositionPs
Parent: Composition
Id: cz-composition-ps
Title: "Composition (CZ PS)"
Description: "Clinical document used to represent a Patient Summary for the scope of this guide."

//* insert ImposeProfile ( $Composition-eu, 0 )

* . ^short = "Composition: Patient Summary (CZ)"
* . ^definition = "Electronic document representing a Patient Summary as defined in the Czech National Implementation Guide for Patient Summaries."

* extension contains $event-basedOn named basedOn 0..*
* extension[basedOn].valueReference only Reference (Resource or ServiceRequest) /// add profile

* extension contains DocumentPresentedForm named presentedForm 1..*
* extension[presentedForm] ^short = "Presented form"
* extension[presentedForm].valueAttachment
  * contentType
    * ^example[0].label = "pdf"
    * ^example[0].valueCode  = $mime#application/pdf
  * data ^short = "B64 in-line data"
  * url ^short = "URL of the document"

* type 1..1 MS
* type from $MedicalDocumentType (preferred)
* type ^short = "Kind of composition (\"Pacientský souhrn\")"
* type ^definition = "Specifies that this composition refers to Patient Summary."
* type = $loinc#60591-5 //Pacientský souhrn

* category 0..* MS
* category from $DocumentCategory (preferred)
* category ^short = "Category of composition (\"Lékařské záznamy\")"
* category = $loinc#11503-0	//Lékařské záznamy



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


* section contains

  sectionProblems 0..1 and
  sectionAllergies 0..1 and
  sectionMedications 0..1 and
  sectionImmunizations 0..1 and
  sectionResults 0..1 and
  sectionProceduresHx 0..1 and
  sectionMedicalDevices 0..1 and
  sectionAdvanceDirectives 0..1 and
  sectionAlert 0..1 and 
  sectionFunctionalStatus 0..1 and
  sectionPregnancyHx 0..1 and
  sectionPatientStory 0..1 and
  sectionPlanOfCare 0..1 and
  sectionSocialHistory 0..1 and
  sectionVitalSigns 0..1 and
  sectionTravelHx 0..1 and
  sectionPatientHx 0..1 and 
  sectionAttachments 0..1

///////////////////////////////// Údaje poskytnuté pacientem SECTION ///////////////////////////////////////

* section[sectionAdvanceDirectives]
  * insert SectionComRules (
    Advance Directives Section,
    The advance directives section contains a narrative description of patient's advance directive.,
    $loinc#42348-3 )
  * entry only Reference(Consent or DocumentReference)
  * insert SectionEntrySliceComRules(Advance directives, Advance directives)
  * insert SectionEntrySliceDefRules (advanceDirectivesConsent, 0..*,
     Narrative description of the patient's advance directive.,
     Contains a narrative description or a Consent entry with information about the patient's advance directive. ,     
     CZ_ConsentPs)

* section[sectionTravelHx]
  * insert SectionComRules (
        Travel History Section,
        This Section describes the travel history relevant for the Patient Summary\, e.g.recent travel in a region of high prevalence of a specific infectious disease like Malaria,
        $loinc#10182-4 )
  * entry only Reference(Observation or DocumentReference)
  * insert SectionEntrySliceComRules(Travel history observation,
      Relevant information about the patient's recent travel history\, for one visit)
  * insert SectionEntrySliceDefRules (travelObservation,
    0..*,
    Travel history observation, 
    Relevant information about the patient's recent travel history\, for one visit,
    CZ_ObservationTravelPs)

///////////////////////////////// Urgentní informace SECTION ///////////////////////////////////////
* section[sectionAllergies]
  * insert SectionComRules (
      Allergies and Intolerances Section,
      This section documents the relevant allergies or intolerances (conditions\) for that patient\, describing the kind of reaction (e.g. rash\, anaphylaxis\,..\); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum\, it should list currently active and any relevant historical allergies and adverse reactions.\r\nIf no information about allergies is available\, or if no allergies are known this should be clearly documented in the section.,
      $loinc#48765-2 )
  * entry only Reference(AllergyIntolerance or DocumentReference)  
  * insert SectionEntrySliceComRules(allergyOrIntolerance, allergyOrIntolerance)
  // entry slices
  * insert SectionEntrySliceDefRules (allergyOrIntolerance, 0..* , 
  Relevant allergies or intolerances for that patient.,
  It lists the relevant allergies or intolerances for that patient\, describing the kind of reaction - e.g. rash\, anaphylaxis\,.. - preferably the agents that cause it; and optionally the criticality and the certainty of the allergy. At a minimum\, it should list currently active and any relevant historical allergies and adverse reactions. If no information about allergies is available\, or if no allergies are known this should be clearly documented in the section., 
  CZ_AllergyIntolerance) 
 
* section[sectionAlert]
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
  * entry only Reference(Flag or DocumentReference)
  * insert SectionEntrySliceComRules(EPS Alerts entry, EPS Alerts entry slice)
  // entry slices
  * insert SectionEntrySliceDefRules (flag, 0..*, 
  Alert information , 
  Contains alert information to be communicated. May optionally reference other resources in IPS.lags,
  CZ_FlagPatientCore)

///////////////////////////////// Informace o zdravotním stavu  SECTION ///////////////////////////////////////
* section[sectionImmunizations]
  * insert SectionComRules (
    Immunizations Section,
      The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nThe section includes current immunization status\, and may contain the entire immunization history that is relevant to the period of time being summarized.
      , $loinc#11369-6 )   // CODE "History of Immunization Narrative"
  * entry only Reference(Immunization or DocumentReference)
 
  * insert SectionEntrySliceComRules(Patient's immunization status and pertinent history., It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known.)

  * insert SectionEntrySliceDefRules (immunization,  0..*, 
    Patient's immunization status and pertinent history.,
    It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known. , 
    CZ_ImmunizationCore) 

* section[sectionPatientHx]
  * insert SectionComRules (
      Patient History Section,
      Narrative patient history.,
      http://loinc.org#11329-0
    )

* section[sectionPatientStory]
  * insert SectionComRules (
    Patient Story Section,
    The patient story section contains a narrative description of the patient’s symptoms\, the development of the illness\, or other subjective information as provided by the patient.,
    $loinc#10164-2 )   
  * entry ^short = "Patient Story resources."
  * entry ^definition = "Contains resources to support the Patient Story. Instances of DocumentReference or any other suitable resource type may be used."

///////////////////////////////// Zdravotní problémy  SECTION ///////////////////////////////////////

* section[sectionProblems]
  * insert SectionComRules (
    Problem list Section,
    Problem list Reported,
    $loinc#11450-4 ) 
  * entry only Reference(Condition or DocumentReference)
  * insert SectionEntrySliceComRules(Clinical problems or conditions currently being monitored for the patient., It lists and describes clinical problems or conditions currently being monitored for the patient. This entry shall be used to document that no information about problems is available\, or that no relevant problems are known.)
  // entry slices
  * insert SectionEntrySliceDefRules (problem, 0..* ,
      Clinical problems or conditions currently being monitored for the patient. ,
      It lists and describes clinical problems or conditions currently being monitored for the patient.  This entry shall be used to document that no information about problems is available\, or that no relevant problems are known. ,
      CZ_ConditionCore)

* section[sectionProceduresHx]
  * insert SectionComRules (
    History of procedures Section,
    This section defines all interventional\, surgical\, diagnostic\, or therapeutic procedures or treatments pertinent to the patient historically and at the time the document is generated.,
    $loinc#47519-4)

  * entry only Reference(Procedure or DocumentReference)

  * insert SectionEntrySliceComRules(Slice on procedure, Slice on procedure)
  // entry slices
  * insert SectionEntrySliceDefRules (procedure, 0..*,
     Patient past procedures pertinent to the scope of this document. ,  	
     It lists the patient past procedures that are pertinent to the scope of this document. Procedures may refer for example to:\r\n
      1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section\)\r\n
      2. Therapeutic procedure: e.g. dialysis;\r\n
      3. Surgical procedure: e.g. appendectomy\r\n,
      CZ_ProcedurePs)

* section[sectionMedicalDevices]
  * insert SectionComRules (
    History of medical device use Section,
    History of medical device use defines a patient's implanted and external medical devices and equipment that their health status depends on\, as well as any pertinent equipment or device history. This term is also used to itemize any pertinent current or historical durable medical equipment used to help maintain the patient's health status. All pertinent equipment relevant to the diagnosis\, care\, and treatment of a patient should be included.,
    $loinc#46264-8)
  * entry only Reference(DeviceUseStatement or DocumentReference)

  * insert SectionEntrySliceComRules(EPS Medical Device entry, EPS Medical Devices entry slice)

  * insert SectionEntrySliceDefRules (deviceStatement, 0..*, 
    Patient history of medical device use, 
    It describes the patient history of medical device use. This entry shall be used to document that no information about medical device use is available\, or that no relevant medical device use is known. , 
    CZ_DeviceUseStatementCore)

* section[sectionFunctionalStatus]
  * insert SectionComRules (
    Functional status assessment note Section,
    Functional status assessment describes the patient's status of normal functioning at the time a care record was created. Functional statuses include information regarding the patient relative to ambulatory ability\, mental status or competency\, activities of daily living\, home/living situation having an effect on the health status of the patient\, ability to care for self\, social activity\, occupation activity\, housework or volunteering\, family and home responsibilities or activities related to home and family\, communication ability\, and perception\, including sight\, hearing\, taste\, skin sensation\, kinesthetic sense\, proprioception or balance.,
    $loinc#47420-5)
  * entry only Reference(Condition or ClinicalImpression or DocumentReference)

  * insert SectionEntrySliceComRules(Optional entry used to represent disabilities and functional assessments,  	
      It describes capabilities of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments. Profiles to express disabilities and functional assessments will be specified by future versions of this guide.)
  * insert SectionEntrySliceDefRules (disability, 0..*, 
      Optional slice used to represent disabilities,  	
      It describes capabilities of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments. Profiles to express disabilities and functional assessments will be specified by future versions of this guide.,
      CZ_ConditionCore)
  * insert SectionEntrySliceDefRules (functionalAssessment, 0..*, 
      Optional slice used to represent functional assessments,  	
      It describes capabilities of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments. Profiles to express disabilities and functional assessments will be specified by future versions of this guide.,
      ClinicalImpression)

///////////////////////////////// Souhn medikace SECTION ///////////////////////////////////////
* section[sectionMedications]
  * insert SectionComRules (
    Medication Summary Section,
    History of medication use defines a patient's current medications and history of pertinent medications. This term may also include a patient's prescription and dispense history.,
    $loinc#10160-0 )
  * entry only Reference  (CZ_MedicationStatementCore or CZ_MedicationRequestCore or CZ_MedicationAdministrationCore or CZ_MedicationDispenseCore or DocumentReference) 
  * insert SectionEntrySliceComRules(medicationStatementOrRequest, medicationStatementOrRequest)
  // entry slices
  * insert SectionEntrySliceDefRules (medicationStatementOrRequest, 0..* ,
  Medications relevant for the scope of the patient summary ,
  This list the medications relevant for the scope of the patient summary or it is used to indicate that the subject is known not to be on any relevant medication; either that no information is available about medications. ,
  CZ_MedicationStatementCore)

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
      drugUse 0..*

  * entry[alcoholUse] ^short = "Alcohol use observations"
  * entry[alcoholUse] ^definition = "Observations describing alcohol use or abuse (e.g. LOINC 11331-6)."
  * entry[alcoholUse] only Reference(CZ_ObservationAlcoholUsePs)

  * entry[tobaccoUse] ^short = "Tobacco use observations"
  * entry[tobaccoUse] ^definition = "Observations describing tobacco use or abuse (e.g. LOINC 11367-0)."
  * entry[tobaccoUse] only Reference(CZ_ObservationTobaccoUsePs)

  * entry[drugUse] ^short = "Drug use observations"
  * entry[drugUse] ^definition = "Observations describing use or abuse of other drugs (e.g. LOINC 11343-1)."
  * entry[drugUse] only Reference(CZ_ObservationDrugUsePs)

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
  * insert SectionEntrySliceProfileComRules(Current pregnancy status and\, optionally\, information about the outcome of earlier pregnancies,
     It contains information about whether the patient is currently pregnant or not. It may contain addition summarizing information about the outcome of earlier pregnancies.)
  * insert SectionEntrySliceDefRules (pregnancyStatus, 0..*,
    Current pregnancy status , Current pregnancy status ,
    ObservationPregnancyStatusUvIps)
/*   * insert SectionEntrySliceDefRules (previousPregnanciesStatus, 0..*,
    Overall status of previous pregnancies , Overall status of previous pregnancies ,
    ObservationPreviousPregnanciesStatusEuEps) */
  * insert SectionEntrySliceDefRules (pregnancyOutcome, 0..*, Information about the outcome of earlier pregnancies ,
    Information about the outcome of earlier pregnancies,
    ObservationPregnancyOutcomeUvIps)
  * insert SectionEntrySliceDefRules (gestationalAge, 0..*, Information about the gestational age of the pregnancy ,
    Information about the gestational age of the pregnancy,
    CZ_ObservationPregnancyGestationalAgePs)

///////////////////////////////// Výsledky SECTION ///////////////////////////////////////
* section[sectionResults]
  * insert SectionComRules (
    Results Section,
    This section assembles relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results\, others may be anatomic pathology results\, others\, radiology results\, and others\, clinical results.,
    $loinc#30954-2 )
  * entry only Reference(Observation or DiagnosticReport or DocumentReference)
  * insert SectionEntrySliceComRules(EPS Results entry, EPS Results entry slice)
  // Review the slice definiton
  * insert SectionEntrySliceDefRules (results-medicalTestResult, 0..*, 
      Medical test results, 
       Results collected on the patient or produced on in-vitro biologic specimens., 
       CZ_MedicalTestResultCore)
  * insert SectionEntrySliceDefRules (results-diagnosticReport, 0..*, 
      EPS DiagnosticReport, 
       DiagnosticReport resource to represent diagnostic test and procedure reports in a patient summary,
       CZ_DiagnosticReportCore)

* section[sectionVitalSigns]
  * insert SectionComRules (
    Vital Signs Section,
    The vital signs section contains a narrative description of the patient's vital signs. It includes entries for vital sign measurements as described in related profiles,
    $loinc#8716-3 )
    * entry only Reference(Observation or DocumentReference)
  * insert SectionEntrySliceComRules(Vital Signs, 
      Notable vital signs or physical findings as: blood pressure\, body temperature\, heart rate\, and respiratory rate. It may also include other clinical findings\, such as height\, weight\, body mass index\, head circumference\, and pulse oximetry. In particular\, notable vital signs or physical findings such as the most recent\, maximum and/or minimum\, baseline\, or relevant trends may be included)
  * insert SectionEntrySliceDefRules (vitalSign, 0..*, 
      Notable vital signs or physical findings. ,
      Notable vital signs or physical findings as: blood pressure\, body temperature\, heart rate\, and respiratory rate. It may also include other clinical findings\, such as height\, weight\, body mass index\, head circumference\, and pulse oximetry. In particular\, notable vital signs or physical findings such as the most recent\, maximum and/or minimum\, baseline\, or relevant trends may be included,
      $vitalsigns)
///////////////////////////////// Plán péče SECTION ///////////////////////////////////////
* section[sectionPlanOfCare]
  * insert SectionComRules (
    Care Plan Section,
    The Care Plan Section contains a narrative description and coded entries of the patient's care plan including goals\, interventions\, and outcomes.,
    $loinc#18776-5 )

  * entry only Reference(CarePlan or ImmunizationRecommendation or DocumentReference)

  * insert SectionEntrySliceComRules(Optional entry used to represent structured care plans,  	
      Dynamic\, personalized plan including identified needed healthcare activity\, health objectives and healthcare goals\, relating to one or more specified health issues in a healthcare process [Source EN ISO 13940])
  
  * insert SectionEntrySliceDefRules (carePlan, 0..*, 
      Optional slice used to represent care plans,  	
      Dynamic\, personalized plan including identified needed healthcare activity\, health objectives and healthcare goals\, relating to one or more specified health issues in a healthcare process [Source EN ISO 13940],
      CarePlan)

  * insert SectionEntrySliceDefRules (immunizationRecommendation, 0..*, 
      Optional slice used to represent immunization recommendations,  	
      A patient's point-in-time set of recommendations (i.e. forecasting\) according to a published schedule with optional supporting justification.,
      ImmunizationRecommendation)


///////////////////////////////// Přílohy SECTION ///////////////////////////////////////
* section[sectionAttachments]
  * insert SectionComRules (
    Attachments Section,
    The Attachments Section contains additional documents or media related to the patient's care that are not included elsewhere in the document.,
    $loinc#77599-9 )
  * entry 0..*
  * entry only Reference(DocumentReference)

