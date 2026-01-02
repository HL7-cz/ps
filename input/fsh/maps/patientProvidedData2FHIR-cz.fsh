Instance: patientProvidedData2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/ps/ConceptMap/patientProvidedData2FHIR-cz-ps"
* name = "PatientProvidedData2FHIRCzPs"
* title = "ConceptMap: Patient Provided Data to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Patient Provided Data Model to this guide mapping"


* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPatientProvidedDataCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"
// A.2.1.1	Dříve vyslovené přání	Záznam dříve vysloveného přání - Kromě dříve vyslovených přání podle §36 ZZS zařazujeme do tohoto bloku i nesouhlas s dárcovstvím orgánů a tkání k transplantacích a také poskytnutí těla pro účely vědy, výzkumu a vzdělávání a výukovým účelům ve zdravotnictví (§81 ZZS)
* group[=].element[+].code = #dataProvidedByPatient.advanceDirectives
* group[=].element[=].display = "A.2.1.1 - Advance Directives"
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives.entry
* group[=].element[=].target.display = "Composition.section:sectionAdvanceDirectives.entry.ofType(Consent)"
* group[=].element[=].target.equivalence = #equivalent
// A.2.1.2	Cestovatelská anamnéza
* group[=].element[+].code = #dataProvidedByPatient.travelHistory
* group[=].element[=].display = "A.2.1.2 - Travel history"
* group[=].element[=].target.code = #Composition.section:sectionTravelHx.entry
* group[=].element[=].target.display = "Composition.section:sectionTravelHx.entry.ofType(Observation: travel history (HDR CZ))"
* group[=].element[=].target.equivalence = #equivalent

//// ---------------- Dříve vyslovená přání -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPatientProvidedDataCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-consent-ps"
// A.2.1.1.1	Datum a čas	Datum a čas vyjádřeného přání pacienta
* group[=].element[+].code = #advanceDirectives.dateTime
* group[=].element[=].display = "A.2.1.1.1 - Date and time"
* group[=].element[=].target.code = #Consent.dateTime
* group[=].element[=].target.display = "Consent.dateTime"
* group[=].element[=].target.equivalence = #equivalent
// A.2.1.1.2	Typ přání	Typ přání kódem nebo textem
* group[=].element[+].code = #advanceDirectives.type
* group[=].element[=].display = "A.2.1.1.2 - Type"
* group[=].element[=].target.code = #Consent.category
* group[=].element[=].target.display = "Consent.category"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""
// A.2.1.1.3	Komentář	Komentář k projevenému přání pacienta
* group[=].element[+].code = #advanceDirectives.comment
* group[=].element[=].display = "A.2.1.1.3 - Comment"
* group[=].element[=].target.code = #Consent.extension[note]
* group[=].element[=].target.display = "Consent.extension[note]"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""
// A.2.1.1.4	Dotčený stav	Stav na který se přání vztahuje. Přání může být vztaženo pouze k určitému zdravotnímu problému či množině problémů.
* group[=].element[+].code = #advanceDirectives.affectedCondition
* group[=].element[=].display = "A.2.1.1.4 - Related conditions"
* group[=].element[=].target.equivalence = ##unmatched
* group[=].element[=].target.comment = ""
// A.2.1.1.5	Dokument	Fotokopie dokumentu či elektronický dokument s projeveným přáním pacienta mající náležitosti požadované zákonem
* group[=].element[+].code = #advanceDirectives.document
* group[=].element[=].display = "A.2.1.1.5 - Advance Directive document"
* group[=].element[=].target.code = #Consent.source[x]:sourceAttachment
* group[=].element[=].target.display = "Consent.source[x]:sourceAttachment"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

//// ---------------- Cestovatelská anamnéza -------------------////
// PS observation travel 
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPatientProvidedDataCzEn"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-observation-travel-hdr"
// A.2.1.2.1	Země	Země, které pacient navštívil
* group[=].element[+].code = #travelHistory.country
* group[=].element[=].display = "A.2.1.2.1 - Country"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = "Observation.value[x]"
* group[=].element[=].target.equivalence = #equivalent
// A.2.1.2.2	Období	Datum vstupu a odjezdu
* group[=].element[+].code = #travelHistory.period
* group[=].element[=].display = "A.2.1.2.2 - Period"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = "Observation.effective[x]"
* group[=].element[=].target.equivalence = #equivalent
// A.2.1.2.3	Komentář	Poznámky k pobytu.
* group[=].element[+].code = #travelHistory.comment
* group[=].element[=].display = "A.2.1.2.3 - Comment"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #equivalent