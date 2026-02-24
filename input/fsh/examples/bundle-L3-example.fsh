/// Bundle ///
Instance: PatientSummary-Mracena-L3
InstanceOf: CZ_BundlePs
Description: "Example Bundle for Patient Summary Report for patient Mrakomorová Mračena - L3"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e7ad5e98-3f99-477c-8d6b-0a82495c0ab4"
* type = #document
* timestamp = "2026-01-29T09:50:08+01:00"

* entry[composition][0].fullUrl = "urn:uuid:d7a30c93-ab33-48c1-844b-d8c2174d6147"
* entry[composition][=].resource = PatientSummaryComposition-Mracena-L3

* entry[patient][+].fullUrl = "urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590"
* entry[patient][=].resource = Patient-Mracena-L3

* entry[practitioner][+].fullUrl = "urn:uuid:77fa78d2-154c-4d38-824e-3c38b39c6a42"
* entry[practitioner][=].resource = Practitioner-Jansky

// Sekce Dříve vyslovaná přání
* entry[consent][+].fullUrl = "urn:uuid:64054bb3-093f-4b94-aa58-17940bc4d3ad"
* entry[consent][=].resource = AdvanceDirective-Mracena-L3
// Sekce Alergie a intolerance
* entry[allergyintolerance][+].fullUrl = "urn:uuid:ad596f22-799b-4cdb-b8f2-6198a6d0a53c"
* entry[allergyintolerance][=].resource = AllergyIntolerance-Penicilin
* entry[allergyintolerance][+].fullUrl = "urn:uuid:a1de206e-b7dc-4d63-9efc-6b3d4913822f"
* entry[allergyintolerance][=].resource = AllergyIntolerance-Latex
* entry[allergyintolerance][+].fullUrl = "urn:uuid:0711ad77-bbd4-4242-9e82-4d612a8cfda8"
* entry[allergyintolerance][=].resource = AllergyIntolerance-Nuts
// Sekce Varování
* entry[flag][+].fullUrl = "urn:uuid:90482ba4-9384-428a-a384-5b09f1293a0e"
* entry[flag][=].resource = Alert-Anticoagulation
// Sekce Problems
* entry[condition][+].fullUrl = "urn:uuid:problem1"
* entry[condition][=].resource = Condition-AtrialFibrillation
* entry[condition][+].fullUrl = "urn:uuid:problem2"
* entry[condition][=].resource = Condition-Hypertension
* entry[condition][+].fullUrl = "urn:uuid:problem3"
* entry[condition][=].resource = Condition-AsthmaBronchiale
// Sekce Past Illnes
* entry[condition][+].fullUrl = "urn:uuid:pastillnes0"
* entry[condition][=].resource = Condition-Hypertension-past
* entry[condition][+].fullUrl = "urn:uuid:pastillnes1"
* entry[condition][=].resource = Condition-AtrialFibrillation-past
* entry[condition][+].fullUrl = "urn:uuid:pastillnes2"
* entry[condition][=].resource = Condition-Astma
// Sekce Medical Devices
* entry[device][+].fullUrl = "urn:uuid:medicaldevice1"
* entry[device][=].resource = Device-CardiacPacemaker
// Sekce Očkování
* entry[immunization][+].fullUrl = "urn:uuid:immunization1"
* entry[immunization][=].resource = Immunization-Influenza
* entry[immunization][+].fullUrl = "urn:uuid:immunization2"
* entry[immunization][=].resource = Immunization-Pneumococcal
* entry[immunization][+].fullUrl = "urn:uuid:immunization3"
* entry[immunization][=].resource = Immunization-COVID19
// Sekce Medikace
* entry[medication][+].fullUrl = "urn:uuid:medication1"
* entry[medication][=].resource = Medication-Warfarin
* entry[medication][+].fullUrl = "urn:uuid:medication2"
* entry[medication][=].resource = Medication-Metoprolol
* entry[medication][+].fullUrl = "urn:uuid:medication3"
* entry[medication][=].resource = Medication-Salbutamol
// Sekce Procedures
* entry[procedure][+].fullUrl = "urn:uuid:procedureHx1"
* entry[procedure][=].resource = Procedure-CardiacPacemakerImplantation
// Sekce Results
* entry[observation][+].fullUrl = "urn:uuid:observation1"
* entry[observation][=].resource = Observation-NTproBNP
* entry[observation][+].fullUrl = "urn:uuid:observation2"
* entry[observation][=].resource = Observation-ArterialBloodGas





///-------------------------------------------------------///
/// Composition ///
Instance: PatientSummaryComposition-Mracena-L3
InstanceOf: CZ_CompositionPs
Description: "Example Composition for Patient Summary Report for patient Mrakomorová Mračena - L3"
Usage: #example
* id = "d7a30c93-ab33-48c1-844b-d8c2174d6147"
* status = #final
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #60591-5
* type.coding[0].display = "Patient summary Document"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* date = "2026-01-29T09:50:08+01:00"
* author[+] = Reference(urn:uuid:77fa78d2-154c-4d38-824e-3c38b39c6a42) // Reference to Practitioner-Janský
* title = "Pacientský souhrn - L3 composition"

// sectionProblems
* section[sectionProblems].title = "Aktuální problémy"
* section[sectionProblems].code.coding[0].system = $loinc
* section[sectionProblems].code.coding[0].code = #11450-4
* section[sectionProblems].code.coding[0].display = "Problem list - Reported"
* section[sectionProblems].text.status = #additional
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">1. Fibrilace síní<br/>2. Hypertenze<br/>3. Astma bronchiale</div>"
* section[sectionProblems].entry[0] = Reference(urn:uuid:problem1) // Reference to Condition resource for atrial fibrillation
* section[sectionProblems].entry[1] = Reference(urn:uuid:problem2) // Reference to Condition resource for hypertension
* section[sectionProblems].entry[2] = Reference(urn:uuid:problem3) // Reference to Condition resource for asthma bronchiale

// sectionAllergies
* section[sectionAllergies].title = "Alergie a intolerance"
* section[sectionAllergies].code.coding[0].system = $loinc
* section[sectionAllergies].code.coding[0].code = #48765-2 // Allergies and adverse reactions
* section[sectionAllergies].code.coding[0].display = "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #additional
* section[sectionAllergies].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <ul>
    <li>Penicilin – anafylaktická reakce (2018)</li>
    <li>Latex – kontaktní dermatitida</li>
    <li>Ořechy – kopřivka, otok rtů (dětský věk)</li>
  </ul>
</div>
"""
* section[sectionAllergies].entry[0] = Reference(urn:uuid:ad596f22-799b-4cdb-b8f2-6198a6d0a53c)
* section[sectionAllergies].entry[1] = Reference(urn:uuid:a1de206e-b7dc-4d63-9efc-6b3d4913822f)
* section[sectionAllergies].entry[2] = Reference(urn:uuid:0711ad77-bbd4-4242-9e82-4d612a8cfda8)

// sectionMedications 
* section[sectionMedications].title = "Souhrn medikace"
* section[sectionMedications].code.coding[0].system = $loinc
* section[sectionMedications].code.coding[0].code = #10160-0
* section[sectionMedications].code.coding[0].display = "History of Medication use Narrative"
* section[sectionMedications].text.status = #additional
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient užívá následující medikaci: Warfarin 5 mg denně, Metoprolol 50 mg denně, Salbutamol inhalátor podle potřeby.</div>" 
* section[sectionMedications].entry[0] = Reference(urn:uuid:medication1) 
* section[sectionMedications].entry[1] = Reference(urn:uuid:medication2)
* section[sectionMedications].entry[2] = Reference(urn:uuid:medication3)

// sectionImmunizations 
* section[sectionImmunizations].title = "Historie očkování"
* section[sectionImmunizations].code.coding[0].system = $loinc
* section[sectionImmunizations].code.coding[0].code = #11369-6
* section[sectionImmunizations].code.coding[0].display = "History of Immunization note"
* section[sectionImmunizations].text.status = #additional
* section[sectionImmunizations].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient je očkován proti chřipce, pneumokokům a COVID-19.</div>"
* section[sectionImmunizations].entry[0] = Reference(urn:uuid:immunization1)
* section[sectionImmunizations].entry[1] = Reference(urn:uuid:immunization2)
* section[sectionImmunizations].entry[2] = Reference(urn:uuid:immunization3)

// sectionResults 
* section[sectionResults].title = "Výsledky vyšetření"
* section[sectionResults].code.coding[0].system = $loinc
* section[sectionResults].code.coding[0].code = #30954-2
* section[sectionResults].code.coding[0].display = "Relevant diagnostic tests/laboratory data note"
* section[sectionResults].text.status = #additional
* section[sectionResults].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Laboratorní výsledky ukazují zvýšené hodnoty NT-proBNP, což je konzistentní s dekompenzací srdečního selhání. Dále jsou přítomny známky hypoxémie v arteriální krevní plynů.</div>"
* section[sectionResults].entry[0] = Reference(urn:uuid:observation1) // Reference to Observation resource for NT-proBNP result
* section[sectionResults].entry[1] = Reference(urn:uuid:observation2) // Reference to Observation resource for arterial blood gas results

// sectionProceduresHx 
* section[sectionProceduresHx].title = "Historie výkonů"
* section[sectionProceduresHx].code.coding[0].system = $loinc
* section[sectionProceduresHx].code.coding[0].code = #47519-4
* section[sectionProceduresHx].code.coding[0].display = "History of Procedures Document"
* section[sectionProceduresHx].text.status = #additional
* section[sectionProceduresHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient prodělal v minulosti několik kardiologických výkonů, včetně implantace kardiostimulátoru a katetrizačního vyšetření koronárních tepen.</div>"
* section[sectionProceduresHx].entry[0] = Reference(urn:uuid:procedureHx1) // Reference to Procedure resource for cardiac pacemaker implantation


// sectionMedicalDevices 
* section[sectionMedicalDevices].title = "Historie zdravotnických prostředků"
* section[sectionMedicalDevices].code.coding[0].system = $loinc
* section[sectionMedicalDevices].code.coding[0].code = #46264-8
* section[sectionMedicalDevices].code.coding[0].display = "History of medical device use"
* section[sectionMedicalDevices].text.status = #additional
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má v anamnéze implantaci kardiostimulátoru pro fibrilaci síní.</div>"
* section[sectionMedicalDevices].entry[0] = Reference(urn:uuid:medicaldevice1)

// sectionAdvanceDirectives 
* section[sectionAdvanceDirectives].title = "Dříve vyslovaná přání"
* section[sectionAdvanceDirectives].code.coding[0].system = $loinc
* section[sectionAdvanceDirectives].code.coding[0].code = #42348-3 // Advance directives
* section[sectionAdvanceDirectives].code.coding[0].display = "Advance healthcare directives"
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient si nepřeje být resuscitován.</div>"
* section[sectionAdvanceDirectives].text.status = #additional
* section[sectionAdvanceDirectives].entry[0] = Reference(urn:uuid:64054bb3-093f-4b94-aa58-17940bc4d3ad) // Reference to AdvanceDirective instance

// sectionAlerts 
* section[sectionAlerts].title = "Varování"
* section[sectionAlerts].code.coding[0].system = $loinc
* section[sectionAlerts].code.coding[0].code = #104605-1 // Alert
* section[sectionAlerts].code.coding[0].display = "Alert"
* section[sectionAlerts].text.status = #additional
* section[sectionAlerts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient na dlouhodobé antikoagulační léčbě.</div>"
* section[sectionAlerts].entry[0] = Reference(urn:uuid:90482ba4-9384-428a-a384-5b09f1293a0e) // Reference to Flag instance

// sectionFunctionalStatus //TODO


// sectionPregnancyHx //TODO


// sectionPatientStory //TODO


// sectionPlanOfCare //TODO


// sectionSocialHistory //TODO


// sectionVitalSigns //TODO


// sectionTravelHx //TODO


// sectionPatientHx //TODO


// sectionPastProblems //TODO 
* section[sectionPastProblems].title = "Historie zdravotních problémů"
* section[sectionPastProblems].code.coding[0].system = $loinc
* section[sectionPastProblems].code.coding[0].code = #11348-0
* section[sectionPastProblems].code.coding[0].display = "History of Past illness note"
* section[sectionPastProblems].text.status = #additional
* section[sectionPastProblems].text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <ul>
    <li>Hypertenze</li>
    <li>Fibrilace síní</li>
    <li>Astma bronchiale</li>
  </ul>
</div>
"""
* section[sectionPastProblems].entry[0] = Reference(urn:uuid:pastillnes0) 
* section[sectionPastProblems].entry[1] = Reference(urn:uuid:pastillnes1) 
* section[sectionPastProblems].entry[2] = Reference(urn:uuid:pastillnes2) 

// sectionAttachments //TODO






///-------------------------------------------------------------------------///
///// Other resources /////
/// Patient ///
Instance: Patient-Mracena-L3
InstanceOf: CZ_PatientCore
Usage: #inline
Description: "Patient, contact information and practitioner - L3"
* id = "f21b91f9-5e7a-47b9-a884-cbc720257590"
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "2066425387"
* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "Mračena"
* birthDate = "1971-11-26"
* gender = #female

/// Practitioner ///
Instance: Practitioner-Jansky
InstanceOf: CZ_PractitionerCore
Usage: #inline
Description: "Practitioner - L3"
* id = "77fa78d2-154c-4d38-824e-3c38b39c6a42"
* name.use = #usual
* name.prefix = "Prof. MUDr."
* name.family = "Jan"
* name.given = "Janský"

/// Advance Directive ///
Instance: AdvanceDirective-Mracena-L3
InstanceOf: CZ_ConsentHdr
Usage: #inline
Description: "Advance Directive for patient Mrakomorová Mračena - L3"
* id = "64054bb3-093f-4b94-aa58-17940bc4d3ad"
* status = #active

* scope.coding[0].system = $consentscope
* scope.coding[0].code = #adr
* scope.coding[0].display = "Advanced Care Directive"

* category.coding[0].system = $consentcategory
* category.coding[0].code = #dnr
* category.coding[0].display = "Do Not Resuscitate"

* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* dateTime = "2025-12-01T10:00:00+01:00"

/// AllergyIntolerance - Penicilin ///
Instance: AllergyIntolerance-Penicilin
InstanceOf: CZ_AllergyIntolerancePs
Usage: #inline
Description: "AllergyIntolerance resource for allergy to Penicilin for patient Mrakomorová Mračena - L3"
* id = "ad596f22-799b-4cdb-b8f2-6198a6d0a53c"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-penicilin-001"
// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má alergii na penicilin.</div>"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* code.coding[0].system = $sct
* code.coding[0].code = #91936005 "Allergy to penicillin"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3

/// AllergyIntolerance - Latex ///
Instance: AllergyIntolerance-Latex
InstanceOf: CZ_AllergyIntolerancePs
Usage: #inline
Description: "AllergyIntolerance resource for intolerance to Latex for patient Mrakomorová Mračena - L3"
* id = "a1de206e-b7dc-4d63-9efc-6b3d4913822f"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "intolerance-latex-001"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má intoleranci na latex.</div>"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #intolerance
* code = $sct#111088007 "latex"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3

/// AllergyIntolerance - Nuts ///
Instance: AllergyIntolerance-Nuts
InstanceOf: CZ_AllergyIntolerancePs
Usage: #inline
Description: "AllergyIntolerance resource for allergy to Nuts for patient Mrakomorová Mračena - L3"
* id = "0711ad77-bbd4-4242-9e82-4d612a8cfda8"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-nuts-001"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má alergii na ořechy.</div>"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* code.coding[0].system = $sct
* code.coding[0].code = #91934008 "Allergy to nut"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3

/// Alert - Flag ///
Instance: Alert-Anticoagulation
InstanceOf: CZ_FlagPs
Usage: #inline
Description: "Flag resource for alert about long-term anticoagulation treatment for patient Mrakomorová Mračena - L3"
* id = "90482ba4-9384-428a-a384-5b09f1293a0e"
* identifier[+].system = "http://example.org/hospital/flags"
* identifier[=].value = "flag-anticoagulation-001"
* status = #active
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient na dlouhodobé antikoagulační léčbě.</div>"
* code.coding[0].system = $sct 
* code.coding[0].code = #49436004 "Atrial fibrillation (disorder)"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* period.start = "2020-01-01"
* extension[flagPriorityExt].valueCodeableConcept.coding[0].system = $flagPriority
* extension[flagPriorityExt].valueCodeableConcept.coding[0].code = #PH 
* extension[flagPriorityExt].valueCodeableConcept.coding[0].display = "High priority"      

Instance: Condition-Hypertension-past
InstanceOf: CZ_ConditionPs
Usage: #inline
Description: "Condition resource for past illness history - Hypertenze for patient Mrakomorová Mračena - L3"
* id = "pastillnes0"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #38341003 "Hypertension (disorder)"

Instance: Condition-AtrialFibrillation-past
InstanceOf: CZ_ConditionPs
Usage: #inline
Description: "Condition resource for past illness history - Fibrilace síní for patient Mrakomorová Mračena - L3"
* id = "pastillnes1"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #49436004 "Atrial fibrillation (disorder)"

Instance: Condition-Astma
InstanceOf: CZ_ConditionPs
Usage: #inline
Description: "Condition resource for past illness history - Astma bronchiale for patient Mrakomorová Mračena - L3"
* id = "pastillnes2"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #195967001 "Asthma (disorder)"

Instance: Device-CardiacPacemaker
InstanceOf: CZ_MedicalDevice
Usage: #inline
Description: "MedicalDevice resource for cardiac pacemaker for patient Mrakomorová Mračena - L3"
* id = "medicaldevice1"
* identifier[+].system = "http://example.org/medical-devices"
* identifier[=].value = "device-001"
* manufacturer = "Medtronic"
* modelNumber = "W1DR01"
* type = $sct#14106009 "Cardiac pacemaker"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3

Instance: Immunization-Influenza
InstanceOf: CZ_ImmunizationPs
Usage: #inline
Description: "Immunization resource for influenza vaccination for patient Mrakomorová Mračena - L3"
* id = "immunization1"
* status = #completed
* vaccineCode.coding[0].system = $sct
* vaccineCode.coding[0].code = #1181000221105 "Vaccine product containing only influenza virus antigen (medicinal product)"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* occurrenceDateTime = "2025-10-01T10:00:00+01:00"

Instance: Immunization-Pneumococcal
InstanceOf: CZ_ImmunizationPs
Usage: #inline
Description: "Immunization resource for pneumococcal vaccination for patient Mrakomorová Mračena - L3"
* id = "immunization2"
* status = #completed
* vaccineCode.coding[0].system = $sct
* vaccineCode.coding[0].code = #981000221107 "Vaccine product containing only Streptococcus pneumoniae antigen (medicinal product)"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* occurrenceDateTime = "2024-05-01T10:00:00+01:00"

Instance: Immunization-COVID19
InstanceOf: CZ_ImmunizationPs
Usage: #inline
Description: "Immunization resource for COVID-19 vaccination for patient Mrakomorová Mračena - L3"
* id = "immunization3"
* status = #completed
* vaccineCode.coding[0].system = $sct
* vaccineCode.coding[0].code = #1156257007 "Administration of vaccine product against severe acute respiratory syndrome coronavirus 2 (procedure)"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* occurrenceDateTime = "2021-03-01T10:00:00+01:00"

Instance: Medication-Warfarin
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Warfarin for patient Mrakomorová Mračena - L3"
* id = "medication1"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-001"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0094113
* code.coding[0].display = "WARFARIN ORION 3MG TBL NOB 100"

Instance: Medication-Metoprolol
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Metoprolol for patient Mrakomorová Mračena - L3"
* id = "medication2"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-002"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0246762
* code.coding[0].display = "METOPROLOL MEDREG 100MG TBL FLM 50"

Instance: Medication-Salbutamol
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Salbutamol for patient Mrakomorová Mračena - L3"
* id = "medication3"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-003"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0269356
* code.coding[0].display = "SALBUTAMOL POLPHARMA 2MG TBL NOB 30"

Instance: Procedure-CardiacPacemakerImplantation
InstanceOf: CZ_ProcedurePs
Usage: #inline
Description: "Procedure resource for cardiac pacemaker implantation for patient Mrakomorová Mračena - L3"
* id = "procedureHx1"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #307280005 "Implantation of cardiac pacemaker (procedure)"
* performedDateTime = "2015-06-15T10:00:00+01:00"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient prodělal v roce 2015 implantaci kardiostimulátoru pro léčbu fibrilace síní.</div>"  
* status = #completed

Instance: Condition-AtrialFibrillation
InstanceOf: CZ_ConditionPs
Usage: #inline
Description: "Condition resource for problem list - Atrial fibrillation for patient Mrakomorová Mračena - L3"
* id = "problem1"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #49436004 "Atrial fibrillation (disorder)"

Instance: Condition-Hypertension
InstanceOf: CZ_ConditionPs
Usage: #inline
Description: "Condition resource for problem list - Hypertension for patient Mrakomorová Mračena - L3"
* id = "problem2"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #38341003 "Hypertension (disorder)"

Instance: Condition-AsthmaBronchiale
InstanceOf: CZ_ConditionPs
Usage: #inline
Description: "Condition resource for problem list - Asthma bronchiale for patient Mrakomorová Mračena - L3"
* id = "problem3"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #195967001 "Asthma (disorder)"

Instance: Observation-NTproBNP
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
Description: "Observation resource for NT-proBNP result for patient Mrakomorová Mračena - L3"
* id = "observation1"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code.coding[0].system = $loinc
* code.coding[0].code = #33762-6
* code.coding[0].display = "NT-proBNP [Mass/volume] in Serum or Plasma"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* performer[0] = Reference(urn:uuid:77fa78d2-154c-4d38-824e-3c38b39c6a42) // Reference to Practitioner-Jansky
* effectiveDateTime = "2025-11-01T12:00:00+01:00"
* valueQuantity.value = 1500
* valueQuantity.unit = "pg/mL"
* valueQuantity.system = $ucum
* valueQuantity.code = #pg/mL
// Entry Encounter Summary - Results - Arterial blood gas results
Instance: Observation-ArterialBloodGas
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
Description: "Observation resource for arterial blood gas results for patient Mrakomorová Mračena - L3"
* id = "observation2"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code.coding[0].system = $loinc
* code.coding[0].code = #24336-0
* code.coding[0].display = "Gas panel - Arterial blood"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* performer[0] = Reference(urn:uuid:77fa78d2-154c-4d38-824e-3c38b39c6a42) // Reference to Practitioner-Jansky
* effectiveDateTime = "2025-11-01T12:30:00+01:00"
* component[0].code.coding[0] = $loinc#2744-1 "pH of Arterial blood"
* component[0].valueQuantity.value = 7.30
* component[0].valueQuantity.system = $ucum
* component[0].valueQuantity.code = #1
* component[0].valueQuantity.unit = "1"
* component[0].valueQuantity.system = $ucum

* component[1].code.coding[0].system = $loinc
* component[1].code.coding[0].code = #2019-8
* component[1].code.coding[0].display = "pCO2 of Arterial blood"
* component[1].valueQuantity.value = 50
* component[1].valueQuantity.unit = "mmHg"
* component[1].valueQuantity.system = $ucum
* component[1].valueQuantity.code = #mm[Hg]

* component[2].code.coding[0].system = $loinc
* component[2].code.coding[0].code = #2019-8
* component[2].code.coding[0].display = "pO2 of Arterial blood"
* component[2].valueQuantity.value = 60
* component[2].valueQuantity.unit = "mmHg"
* component[2].valueQuantity.system = $ucum
* component[2].valueQuantity.code = #mm[Hg]

* component[3].code.coding[0].system = $loinc
* component[3].code.coding[0].code = #1960-4
* component[3].code.coding[0].display = "HCO3- of Arterial blood"
* component[3].valueQuantity.value = 22
* component[3].valueQuantity.unit = "mmol/L"
* component[3].valueQuantity.system = $ucum
* component[3].valueQuantity.code = #mmol/L