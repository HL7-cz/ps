Logical: LogCzPatientProvidedDataEn
Id: LogPatientProvidedDataCzEn
Title: "A.2.1 Patient Provided Data"
Description: """Logical model for patient provided data in the Patient Summary."""

* dataProvidedByPatient 0..1 Base "A.2.1 Data provided by the patient" """Data provided by the patient"""

  * advanceDirectives 0..1 Base "A.2.1.1 - Advance Directives" """Advance Directives"""
    * dateTime 1..1 dateTime "A.2.1.1.1 - Date and time" """Date and time when the patient’s wish was expressed"""
    * type 1..1 CodeableConcept "A.2.1.1.2 - Type" """Type of a living will, e.g. Do not resuscitate, donorship statement, power of attorney etc."""
    * comment 0..1 string "A.2.1.1.3 - Comment" """Comment on the patient’s expressed wish"""
    * affectedCondition 0..1 CodeableConcept "A.2.1.1.4 - Affected condition" """Condition to which the wish relates. The wish may be limited to a specific health problem or a set of problems."""
    * document 1..1 Attachment "A.2.1.1.5 - Document" """Copy of the document or an electronic document containing the patient’s expressed wish that meets the legal requirements"""

  * travelHistory 0..1 Base "A.2.1.2 - Travel history" """Travel history"""
    * country 1..* CodeableConcept "A.2.1.2.1 - Country" """Country where the patient stayed"""
    * period 0..1 Period "A.2.1.2.2 - Period" """Period of stay in the given country"""
    * comment 0..1 string "A.2.1.2.3 - Comment" """Comment on the stay in the given country"""
