Instance: results2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/results2FHIR-cz-ps"
* name = "Results2FHIR-cz-ps"
* title = "ConceptMap: Results to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Results logical model to this guide mapping (Composition.section:sectionResults)."

// ---------------------------------------------------------
// Group 1: Results -> CZ Composition (PS) section mapping
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogResultsCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.8 Results -> sectionResults
* group[=].element[+].code = #results
* group[=].element[=].display = "A.2.8 - Results"
* group[=].element[=].target.code = #Composition.section:sectionResults.entry:result.ofType(Observation)
* group[=].element[=].target.display = "Composition.section:sectionResults.entry:result.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment =
  "Default mapping: repeatable, one Observation per result item for measurements, laboratory results, vital signs, and other discrete findings."

* group[=].element[+].code = #results
* group[=].element[=].display = "A.2.8 - Results (imaging/pathology)"
* group[=].element[=].target.code = #Composition.section:sectionResults.entry:resultReport.ofType(DiagnosticReport)
* group[=].element[=].target.display = "Composition.section:sectionResults.entry:resultReport.ofType(DiagnosticReport)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =
  "Alternative mapping for imaging and pathology results, where DiagnosticReport is the preferred carrier (e.g., with resultsInterpreter and presentedForm)."


// ---------------------------------------------------------
// Group 2: Results item -> Observation (default)
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogResultsCzEn"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Observation"

// A.2.8.1 Date -> Observation.effectiveDateTime
* group[=].element[+].code = #results.examinationDateTime
* group[=].element[=].display = "A.2.8.1 - Date"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = "Observation.effectiveDateTime"
* group[=].element[=].target.equivalence = #equivalent

// A.2.8.2 Examination type -> Observation.category (and/or code); primary as category
* group[=].element[+].code = #results.examinationType
* group[=].element[=].display = "A.2.8.2 - Examination type"
* group[=].element[=].target.code = #Observation.category
* group[=].element[=].target.display = "Observation.category"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =
  "Type of examination (lab / imaging / pathology / vital signs / other) should be represented in Observation.category (and may also influence profile selection)."

// A.2.8.3 Result description -> Observation.note
* group[=].element[+].code = #results.resultDescription
* group[=].element[=].display = "A.2.8.3 - Result description"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #equivalent

// A.2.8.4 Examination details -> Observation.code (main test/exam code)
* group[=].element[+].code = #results.examinationDetail
* group[=].element[=].display = "A.2.8.4 - Examination details"
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.display = "Observation.code"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment =
  "Use Observation.code for the detailed exam/test code; specimen/body structure and sample collection time should be represented using specimen/bodySite and/or extensions as available."

// A.2.8.5 Examination results -> Observation.value[x]
* group[=].element[+].code = #results.examinationResult
* group[=].element[=].display = "A.2.8.5 - Examination results"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = "Observation.value[x]"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment =
  "Numeric or coded result should be represented using Observation.value[x] (and optionally interpretation/referenceRange/method when available)."

// A.2.8.6 Performer -> Observation.performer
* group[=].element[+].code = #results.performer
* group[=].element[=].display = "A.2.8.6 - Performer"
* group[=].element[=].target.code = #Observation.performer
* group[=].element[=].target.display = "Observation.performer"
* group[=].element[=].target.equivalence = #equivalent

// A.2.8.7 Validator / Interpreter -> Observation.performer (fallback)
* group[=].element[+].code = #results.validatorOrInterpreter
* group[=].element[=].display = "A.2.8.7 - Validator / Interpreter"
* group[=].element[=].target.code = #Observation.performer
* group[=].element[=].target.display = "Observation.performer"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =
  "Observation has no dedicated 'resultsInterpreter' element in R4; if needed, represent validator/interpreter as performer and/or include details in note. For imaging/pathology, DiagnosticReport.resultsInterpreter is preferred."

// A.2.8.8 Examination status -> Observation.status
* group[=].element[+].code = #results.examinationStatus
* group[=].element[=].display = "A.2.8.8 - Examination status"
* group[=].element[=].target.code = #Observation.status
* group[=].element[=].target.display = "Observation.status"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment =
  "Map to Observation.status (registered/preliminary/final/amended/corrected/cancelled/entered-in-error/unknown)."

// ---------------------------------------------------------
// Group 3: Results item -> DiagnosticReport (for imaging/pathology) [optional path]
// ---------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogResultsCzEn"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"

// A.2.8 Results (imaging/pathology) -> sectionResults entry (DiagnosticReport)
* group[=].element[+].code = #results
* group[=].element[=].display = "A.2.8 - Results (imaging/pathology alternative)"
* group[=].element[=].target.code = #Composition.section:sectionResults.entry:resultReport.ofType(DiagnosticReport)
* group[=].element[=].target.display = "Composition.section:sectionResults.entry:resultReport.ofType(DiagnosticReport)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =
  "For imaging and pathology results, DiagnosticReport is often a better carrier (with resultsInterpreter)."

// Date/time -> DiagnosticReport.issued
* group[=].element[+].code = #results.examinationDateTime
* group[=].element[=].display = "A.2.8.1 - Date"
* group[=].element[=].target.code = #DiagnosticReport.issued
* group[=].element[=].target.display = "DiagnosticReport.issued"
* group[=].element[=].target.equivalence = #equivalent

// Examination type/detail -> DiagnosticReport.code
* group[=].element[+].code = #results.examinationDetail
* group[=].element[=].display = "A.2.8.4 - Examination details"
* group[=].element[=].target.code = #DiagnosticReport.code
* group[=].element[=].target.display = "DiagnosticReport.code"
* group[=].element[=].target.equivalence = #equivalent

// Result description -> DiagnosticReport.conclusion (or presentedForm); default to conclusion
* group[=].element[+].code = #results.resultDescription
* group[=].element[=].display = "A.2.8.3 - Result description"
* group[=].element[=].target.code = #DiagnosticReport.conclusion
* group[=].element[=].target.display = "DiagnosticReport.conclusion"
* group[=].element[=].target.equivalence = #relatedto

// Performer -> DiagnosticReport.performer
* group[=].element[+].code = #results.performer
* group[=].element[=].display = "A.2.8.6 - Performer"
* group[=].element[=].target.code = #DiagnosticReport.performer
* group[=].element[=].target.display = "DiagnosticReport.performer"
* group[=].element[=].target.equivalence = #equivalent

// Validator/Interpreter -> DiagnosticReport.resultsInterpreter
* group[=].element[+].code = #results.validatorOrInterpreter
* group[=].element[=].display = "A.2.8.7 - Validator / Interpreter"
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter
* group[=].element[=].target.display = "DiagnosticReport.resultsInterpreter"
* group[=].element[=].target.equivalence = #equivalent

// Status -> DiagnosticReport.status
* group[=].element[+].code = #results.examinationStatus
* group[=].element[=].display = "A.2.8.8 - Examination status"
* group[=].element[=].target.code = #DiagnosticReport.status
* group[=].element[=].target.display = "DiagnosticReport.status"
* group[=].element[=].target.equivalence = #equivalent
