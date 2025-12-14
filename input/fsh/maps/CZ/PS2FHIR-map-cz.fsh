// File: PS2FHIR-map-cz.fsh
Instance: PS2FHIRCZPS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/ps2FHIR-cz-ps"
* name = "Ps2FHIR-cz-ps"
* title = "ConceptMap: Logical PS Model to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true

//// ---------------- A - Pacientský souhrn (CZ) -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCzPSCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.1 Hlavička PS
* group[=].element[+].code = #hlavicka
* group[=].element[=].display = "A.1 - Header"
* group[=].element[=].target.code = #Composition
* group[=].element[=].target.display = "Composition (metadata, subject, author, date, type, etc.)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Header information is mapped to Composition and referenced Patient/Practitioner resources."

// A.2.1 Údaje poskytnuté pacientem
* group[=].element[+].code = #telo.udajePoskytnutePacientem
* group[=].element[=].display = "A.2.1 - Patient-provided data"
* group[=].element[=].target.code = #Composition.section:xxx
* group[=].element[=].target.display = "Composition.section corresponding to patient-provided information"
* group[=].element[=].target.equivalence = #equivalent

// A.2.2 Urgentní informace
* group[=].element[+].code = #telo.urgentniInformace
* group[=].element[=].display = "A.2.2 - Alerts (allergies, warnings)"
* group[=].element[=].target.code = #Composition.section:xxx
* group[=].element[=].target.display = "Composition.section referencing AllergyIntolerance and other warning resources"
* group[=].element[=].target.equivalence = #equivalent

// A.2.3 Informace o zdravotním stavu
* group[=].element[+].code = #telo.informaceOZdravotnimStavu
* group[=].element[=].display = "A.2.3 - Health status information"
* group[=].element[=].target.code = #Composition.section:xxx
* group[=].element[=].target.display = "Composition.section referencing status-related Observations"
* group[=].element[=].target.equivalence = #equivalent

// A.2.4 Zdravotní problémy
* group[=].element[+].code = #telo.zdravotniProblemy
* group[=].element[=].display = "A.2.4 - Health issues"
* group[=].element[=].target.code = #Composition.section:xxx
* group[=].element[=].target.display = "Composition.section referencing Condition resources"
* group[=].element[=].target.equivalence = #equivalent

// A.2.5 Souhrn medikace
* group[=].element[+].code = #telo.souhrnMedikace
* group[=].element[=].display = "A.2.5 - Medication summary"
* group[=].element[=].target.code = #Composition.section:xxx
* group[=].element[=].target.display = "Composition.section referencing MedicationStatement/MedicationRequest"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6 Sociální anamnéza
* group[=].element[+].code = #telo.socialniAnamneza
* group[=].element[=].display = "A.2.6 - Social history"
* group[=].element[=].target.code = #Composition.section:xxx
* group[=].element[=].target.display = "Composition.section referencing social history Observations"
* group[=].element[=].target.equivalence = #equivalent

// A.2.7 Historie těhotenství
* group[=].element[+].code = #telo.historieTehotenstvi
* group[=].element[=].display = "A.2.7 - Pregnancy history"
* group[=].element[=].target.code = #Composition.section:xxx
* group[=].element[=].target.display = "Composition.section referencing pregnancy-related Observations/Conditions"
* group[=].element[=].target.equivalence = #equivalent

// A.2.8 Výsledky
* group[=].element[+].code = #telo.vysledky
* group[=].element[=].display = "A.2.8 - Results"
* group[=].element[=].target.code = #Composition.section:xxx
* group[=].element[=].target.display = "Composition.section referencing DiagnosticReport/Observation"
* group[=].element[=].target.equivalence = #equivalent

// A.2.9 Plán péče
* group[=].element[+].code = #telo.planPece
* group[=].element[=].display = "A.2.9 - Care plan"
* group[=].element[=].target.code = #Composition.section:xxx
* group[=].element[=].target.display = "Composition.section referencing CarePlan"
* group[=].element[=].target.equivalence = #equivalent

// A.2.10 Přílohy
* group[=].element[+].code = #telo.prilohy
* group[=].element[=].display = "A.2.10 - Attachments"
* group[=].element[=].target.code = #Composition.section:xxx
* group[=].element[=].target.display = "Composition.section referencing DocumentReference"
* group[=].element[=].target.equivalence = #equivalent

// A.3 Prezenční forma
* group[=].element[+].code = #prezencniForma
* group[=].element[=].display = "A.3 - Presented form"
* group[=].element[=].target.code = #Composition.presentedForm
* group[=].element[=].target.display = "Composition.presentedForm"
* group[=].element[=].target.equivalence = #equivalent
