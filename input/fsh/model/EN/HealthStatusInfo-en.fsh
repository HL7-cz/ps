Logical: LogCzHealthStatusInfoEn
Id: LogHealthStatusInfoCzEn
Title: "A.2.3 Health Status Information"
Description: """Logical model for health status information in the Patient Summary"""

* immunization 0..* Base "A.2.3.1 - Immunization" """List of administered immunizations"""
  * diseaseOrAgent 0..* CodeableConcept "A.2.3.1.1 - Disease or agent" """Disease or causative agent against which the immunization provides protection"""
  * vaccineType 1..1 CodeableConcept "A.2.3.1.2 - Vaccine type" """Type of vaccine expressed as a code"""
  * suklCode 0..1 CodeableConcept "A.2.3.1.3 - SÚKL code" """Vaccine code according to the SÚKL database"""
  * vaccineProduct 0..1 string "A.2.3.1.4 - Vaccine product" """Registered name of the administered vaccine according to the SÚKL medicinal products database (DLP)."""
  * marketingAuthorizationHolder 0..1 string "A.2.3.1.5 - Marketing authorization holder" """Vaccine manufacturer or marketing authorization holder"""
  * doseSequenceNumber 0..1 string "A.2.3.1.6 - Dose sequence number" """Sequence number of the administered dose"""
  * administrationDateTime 1..1 dateTime "A.2.3.1.7 - Administration date and time" """Date (and time) when the vaccine dose was administered"""
  * nextVaccinationDate 0..1 dateTime "A.2.3.1.8 - Next vaccination date" """Date of the recommended booster or next dose"""
  * lotNumber 0..1 identifier "A.2.3.1.9 - Lot number" """Lot identifier"""
  * administeringCenter 0..1 Base "A.2.3.1.10 - Administering center" """Name or code of the vaccination center"""
  * healthcareProfessional 0..1 Base "A.2.3.1.11 - Healthcare professional identification" """Name or identifier of the healthcare professional"""
    * name 0..1 HumanName "Healthcare professional name"
    * identifier 0..* identifier "Healthcare professional identifier"
  * vaccinationCountry 0..1 CodeableConcept "A.2.3.1.12 - Vaccination country" """Country where the immunization was administered"""

* pastHealthProblems 0..* Base "A.2.3.2 - History of health problems" """List of significant health problems experienced by the patient in the past that may affect the current health status"""
  * problemDescription 1..1 string "A.2.3.2.1 - Problem description" """Textual description of the health problem"""
  * code 0..* CodeableConcept "A.2.3.2.2 - Code" """Formal coded representation of the health problem (classification)."""
  * onsetDate 1..1 dateTime "A.2.3.2.3 - Date of onset" """Date, partial date, or age category of disease onset"""
    * date 0..1 dateTime "Date of onset - date" """Date of disease onset"""
    * code 0..1 CodeableConcept "Date of onset - code" """Coded expression of disease onset (e.g., age group)."""
  * resolutionOrRemissionDate 0..1 dateTime "A.2.3.2.4 - Date of resolution or remission" """Date, partial date, or age category when the problem was resolved or went into remission.
    Problems with an 'active' clinical status do not have this element populated."""
    * date 0..1 dateTime "Date of resolution or remission - date" """Date of disease resolution"""
    * code 0..1 CodeableConcept "Date of resolution or remission - code" """Coded expression of disease resolution (e.g., age group)."""
  * clinicalStatus 0..1 CodeableConcept "A.2.3.2.5 - Clinical status" """Clinical status of the health problem (active, resolved)."""
  * resolutionCircumstances 0..1 string "A.2.3.2.6 - Circumstances of resolution" """Reason why the problem status changed to inactive (e.g., surgical procedure, medical treatment).
    This free-text field is used only if the circumstances are not documented elsewhere in the Patient Summary
    (procedures, implants, etc.)."""
  * severity 0..1 string "A.2.3.2.7 - Severity" """Clinician’s subjective assessment of the severity of the problem."""
  * diseaseStage 0..1 CodeableConcept "A.2.3.2.8 - Disease stage" """Stage or grading of the disease expressed as text and/or code according to the selected scale"""
    * description 0..1 string "Disease stage - description" """Textual description of the disease stage"""
    * code 0..1 CodeableConcept "Disease stage - code" """Coded disease stage according to the selected scale"""

* generalAnamnesis 0..1 Base "A.2.3.3 - General anamnesis" """General patient anamnesis that may influence the health status"""
  * generalAnamnesis 1..1 string "A.2.3.3.1 - General anamnesis" """Summary of disease development or other supplementary narrative information provided by the patient"""
