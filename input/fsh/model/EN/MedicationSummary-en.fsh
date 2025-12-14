Logical: LogCzMedicationSummaryEn
Id: LogMedicationSummaryCzEn
Title: "A.2.5 Medication Summary"
Description: """A.2.5 Medication Summary - Logical model for medication summary in the Patient Summary."""

* medication 0..* Base "A.2.5.1 Medication" """List of medicinal products used by the patient, exceptionally also dietary supplements.
  Includes prescribed medicines whose treatment period has not yet ended, regardless of dispensing,
  as well as medicines affecting the current health status or important for ongoing care."""

  * indication 0..1 CodeableConcept "A.2.5.1.1 Indication"
    """Reason for the medication. The reason may be described as free text or by reference to a clinical reason
    (a health problem listed in the problem list)."""
  * suklCode 1..1 CodeableConcept "A.2.5.1.2 SÚKL code"
    """Medicinal product code according to the SÚKL database."""
  * medicinalProductName 1..1 string "A.2.5.1.3 Medicinal product name"
    """Registered name of the medicinal product according to the medicinal products database."""
  * activeSubstances 0..* CodeableConcept "A.2.5.1.4 Active substances"
    """List of active substances contained in the medicinal product, derived from the HVLP or IVLP record
    in the SÚKL medicinal products database (DLP). Active substances are specified by name and optionally
    by ATC code or IDMP identifier according to the Substance Registration System (SRS)."""
  * strength 0..1 CodeableConcept "A.2.5.1.5 Strength"
    """Strength of the active substance contained in the medicinal product.
    The strength is expressed in relation to the unit of administration, e.g., 500 mg per tablet."""
  * doseForm 0..1 CodeableConcept "A.2.5.1.6 Pharmaceutical dose form"
    """Pharmaceutical dose form contained in the package, expressed as a code (e.g., syrup, tablet)."""
  * dosage 0..* CodeableConcept "A.2.5.1.7 Dosage"
    """Frequency and number of units per administration, expressed as free text or in a structured form."""
  * routeOfAdministration 0..1 CodeableConcept "A.2.5.1.8 Route of administration"
    """Route of administration."""
  * administrationPeriod 0..1 Period "A.2.5.1.9 Administration period"
    """Time interval during which the medication was or was not administered to the patient."""
  * recommendedDurationOfUse 0..1 string "A.2.5.1.10 Recommended duration of use"
    """For some medicinal products the duration of use is limited, while for many long-term or lifelong use
    is assumed. For certain medicines, the duration of use is strictly limited."""
  * intendedUse 0..* Base "A.2.5.1.11 Intended use"
    """Purpose of use: prevention or treatment (prophylaxis, treatment, diagnostics, anesthesia, care of medical devices)."""

