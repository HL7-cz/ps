Instance: healthStatusInfo2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/healthStatusInfo2FHIR-cz-ps"
* name = "HealthStatusInfo2FHIR-cz-ps"
* title = "ConceptMap: Health Status Information to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Health Status Information Model to this guide mapping"

* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHealthStatusInfoCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"
// A.2.3.1 Očkování
* group[=].element[+].code = #immunization
* group[=].element[=].display = "A.2.3.1 - Immunization"
* group[=].element[=].target.code = #Composition.section:sectionImmunizations.entry
* group[=].element[=].target.display = "Composition.section:sectionImmunizations.entry.ofType(Immunization (HDR CZ) | ImmunizationRecommendation (CZ HDR))"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.2 Historie zdravotních problémů
* group[=].element[+].code = #pastHealthProblems
* group[=].element[=].display = "A.2.3.2 - History of health problems"
* group[=].element[=].target.code = #Composition.section:sectionPastProblems.entry
* group[=].element[=].target.display = "Composition.section:sectionPastProblems.entry.ofType(Condition)"
* group[=].element[=].target.equivalence = #equivalent

// A.2.3.3 Všeobecná anamnéza
* group[=].element[+].code = #generalAnamnesis
* group[=].element[=].display = "A.2.3.3 - General anamnesis"
* group[=].element[=].target.code = #Composition.section:sectionPatientStory.entry
* group[=].element[=].target.display = "Composition.section:sectionPatientStory.entry.ofType() - ???"
* group[=].element[=].target.equivalence = #equivalent

//// ---------------- Očkování -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHealthStatusInfoCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-immunization-ps"
// A.2.3.1.1 Onemocnění nebo činitel
* group[=].element[+].code = #immunization.diseaseOrAgent
* group[=].element[=].display = "A.2.3.1.1 - Disease or agent"
* group[=].element[=].target.code = #Immunization.protocolApplied.targetDisease
* group[=].element[=].target.display = "Immunization.protocolApplied.targetDisease"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.1.2 - Typ vakcíny
* group[=].element[+].code = #immunization.vaccineType
* group[=].element[=].display = "A.2.3.1.2 - Vaccine type"
* group[=].element[=].target.code = #Immunization.vaccineCode.coding[]
* group[=].element[=].target.display = "Immunization.vaccineCode.coding[]"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.1.3 - Kód SÚKL
* group[=].element[+].code = #immunization.suklCode
* group[=].element[=].display = "A.2.3.1.3 - SÚKL code"
* group[=].element[=].target.code = #Immunization.vaccineCode.coding[]
* group[=].element[=].target.display = "Immunization.vaccineCode.coding[]"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.1.4 - Produkt vakcíny
* group[=].element[+].code = #immunization.vaccineProduct
* group[=].element[=].display = "A.2.3.1.4 - Vaccine product"
* group[=].element[=].target.code = #Immunization.vaccineCode.text
* group[=].element[=].target.display = "Immunization.vaccineCode.text"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.1.5 - Držitel rozhodnutí o registraci
* group[=].element[+].code = #immunization.marketingAuthorizationHolder
* group[=].element[=].display = "A.2.3.1.5 - Marketing authorization holder"
* group[=].element[=].target.code = #Immunization.manufacturer
* group[=].element[=].target.display = "Immunization.manufacturer"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.1.6 - Pořadové číslo dávky
* group[=].element[+].code = #immunization.doseSequenceNumber
* group[=].element[=].display = "A.2.3.1.6 - Dose sequence number"
* group[=].element[=].target.code = #Immunization.protocolApplied.doseNumber[x]
* group[=].element[=].target.display = "Immunization.protocolApplied.doseNumber[x] - positiveInt or string"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.1.7 - Datum a čas podání
* group[=].element[+].code = #immunization.administrationDateTime
* group[=].element[=].display = "A.2.3.1.7 - Administration date and time"
* group[=].element[=].target.code = #Immunization.occurrence[x]
* group[=].element[=].target.display = "Immunization.occurrence[x] - occurrenceDateTime"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.1.8 - Datum dalšího očkování v jiném profilu - ImmunizationRecommendation
// A.2.3.1.9 - Číslo šarže
* group[=].element[+].code = #immunization.lotNumber
* group[=].element[=].display = "A.2.3.1.9 - Lot number"
* group[=].element[=].target.code = #Immunization.lotNumber
* group[=].element[=].target.display = "Immunization.lotNumber"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.1.10 - Očkovací centrum
* group[=].element[+].code = #immunization.administeringCenter
* group[=].element[=].display = "A.2.3.1.10 - Administering center"
* group[=].element[=].target.code = #Immunization.location
* group[=].element[=].target.display = "Immunization.location"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.1.11 - Identifikace zdravotnického pracovníka
* group[=].element[+].code = #immunization.healthcareProfessional
* group[=].element[=].display = "A.2.3.1.11 - Healthcare professional identification"
* group[=].element[=].target.code = #Immunization.performer.actor
* group[=].element[=].target.display = "Immunization.performer.actor"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.1.12 - Země očkování
* group[=].element[+].code = #immunization.vaccinationCountry
* group[=].element[=].display = "A.2.3.1.12 - Vaccination country"
* group[=].element[=].target.code = #Immunization.location.address.country
* group[=].element[=].target.display = "Immunization.location.address.country"
* group[=].element[=].target.equivalence = #equivalent

//// ---------------- ImmunizationRecommendation -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHealthStatusInfoCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-immunizationRecommendation-ps"
// A.2.3.1.8 - Datum dalšího očkování - do ImmunizationRecommendation
* group[=].element[+].code = #immunization.nextVaccinationDate
* group[=].element[=].display = "A.2.3.1.8 - Next vaccination date"
* group[=].element[=].target.code = #ImmunizationRecommendation.recommendation.dateCriterion
* group[=].element[=].target.display = "ImmunizationRecommendation.recommendation.dateCriterion"
* group[=].element[=].target.equivalence = #equivalent

//// ---------------- Historie zdravotních problémů -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogHealthStatusInfoCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-condition-ps"
// A.2.3.2.1 - Popis problému
* group[=].element[+].code = #pastHealthProblems.problemDescription
* group[=].element[=].display = "A.2.3.2.1 - Problem description"
* group[=].element[=].target.code = #Condition.code.text
* group[=].element[=].target.display = "Condition.code.text"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.2.2 - Kód
* group[=].element[+].code = #pastHealthProblems.code
* group[=].element[=].display = "A.2.3.2.2 - Code"
* group[=].element[=].target.code = #Condition.code.coding[]
* group[=].element[=].target.display = "Condition.code.coding[]"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.2.3 - Datum nástupu
* group[=].element[+].code = #pastHealthProblems.onsetDate
* group[=].element[=].display = "A.2.3.2.3 - Date of onset"
* group[=].element[=].target.code = #Condition.onset[x]
* group[=].element[=].target.display = "Condition.onset[x] - onsetDateTime or onsetAge or onsetPeriod or onsetRange or onsetString"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.2.4 - Datum vyřešení nebo remise
* group[=].element[+].code = #pastHealthProblems.resolutionOrRemissionDate
* group[=].element[=].display = "A.2.3.2.4 - Date of resolution or remission"
* group[=].element[=].target.code = #Condition.abatement[x]
* group[=].element[=].target.display = "Condition.abatement[x] - abatementDateTime or abatementAge or abatementPeriod or abatementRange or abatementString or abatementBoolean"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.2.5 - Klinický stav
* group[=].element[+].code = #pastHealthProblems.clinicalStatus
* group[=].element[=].display = "A.2.3.2.5 - Clinical status"
* group[=].element[=].target.code = #Condition.clinicalStatus
* group[=].element[=].target.display = "Condition.clinicalStatus"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.2.6 - Okolnosti vyřešení
* group[=].element[+].code = #pastHealthProblems.resolutionCircumstances
* group[=].element[=].display = "A.2.3.2.6 - Circumstances of resolution"
* group[=].element[=].target.code = #Condition.note
* group[=].element[=].target.display = "Condition.note"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.2.7 - Závažnost
* group[=].element[+].code = #pastHealthProblems.severity
* group[=].element[=].display = "A.2.3.2.7 - Severity"
* group[=].element[=].target.code = #Condition.severity
* group[=].element[=].target.display = "Condition.severity"
* group[=].element[=].target.equivalence = #equivalent
// A.2.3.2.8 - Stádium nemoci
* group[=].element[+].code = #pastHealthProblems.diseaseStage
* group[=].element[=].display = "A.2.3.2.8 - Disease stage"
* group[=].element[=].target.code = #Condition.stage
* group[=].element[=].target.display = "Condition.stage - stage.summary or stage.type"
* group[=].element[=].target.equivalence = #equivalent