
Logical: LogCzResultsEn
Id: LogResultsCzEn
Title: "A.2.8 Results"
Description: """A.2.8 Results - Logical model for results in the Patient Summary"""

* results 0..* Base "A.2.8 Results" """List of investigation results relevant to the patient’s health status and future care (measurements, laboratory, pathology, imaging, and other clinical findings)."""
  * examinationDateTime 1..1 dateTime "A.2.8.1 Date" """Date and time of the examination."""
  * examinationType 1..1 CodeableConcept "A.2.8.2 Examination type" """Type of examination results – measurements, laboratory results, pathological findings,
  imaging or other clinical findings (e.g., blood group, laboratory results, imaging examinations,
  vital signs)."""
  * resultDescription 0..1 string "A.2.8.3 Result description" """Narrative (textual) description of the result and findings."""
  * examinationDetail 1..1 CodeableConcept "A.2.8.4 Examination details" """Detailed information including examination code, body structure or specimen,
  and date and time of sample collection."""
  * examinationResult 0..1 CodeableConcept "A.2.8.5 Examination results" """Examination result – numeric or coded, including measurement method,
  reference ranges, and interpretation."""
  * performer 0..* RelatedPerson "A.2.8.6 Performer" """Identification of the person or entity performing or producing the result and its origin."""
  * validatorOrInterpreter 0..* RelatedPerson "A.2.8.7 Validator / Interpreter" """Person responsible for interpretation or validation of the result, if different."""
  * examinationStatus 1..1 CodeableConcept "A.2.8.8 Examination status" """Status of the examination (e.g., ordered, preliminary, final, etc.)."""
