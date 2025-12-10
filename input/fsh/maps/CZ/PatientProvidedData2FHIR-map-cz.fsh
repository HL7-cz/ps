Instance: PatientProvidedData2FHIRCZPS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/patientProvidedData2FHIR-cz-ps"
* name = "PatientProvidedData2FHIR-cz-ps"
* title = "ConceptMap: Patient-Provided Information to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
//// ---------------- Dříve vyslovená přání -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogPatientProvidedDataCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"
// A.2.1.1	Dříve vyslovené přání	Záznam dříve vysloveného přání - Kromě dříve vyslovených přání podle §36 ZZS zařazujeme do tohoto bloku i nesouhlas s dárcovstvím orgánů a tkání k transplantacích a také poskytnutí těla pro účely vědy, výzkumu a vzdělávání a výukovým účelům ve zdravotnictví (§81 ZZS)
* group[=].element[+].code = #udajePoskytnutePacientem.driveVyslovenaPrani
* group[=].element[=].display = "2.1.1 Advance Directive"
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives.entry
* group[=].element[=].target.display = "Composition.section:sectionAdvanceDirectives.entry.ofType(Consent)"
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCzPatientProvidedDataCz"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Consent"
// A.2.1.1.1	Datum a čas	Datum a čas vyjádřeného přání pacienta
* group[=].element[+].code = #udajePoskytnutePacientem.driveVyslovenaPrani.datumCas
* group[=].element[=].display = "A.2.1.1.1 - Date and time"
* group[=].element[=].target.code = #Consent.dateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.1.1.2	Typ přání	Typ přání kódem nebo textem
* group[=].element[+].code = #udajePoskytnutePacientem.driveVyslovenaPrani.typPrani
* group[=].element[=].display = "A.2.1.1.2 - Type"
* group[=].element[=].target.code = #Consent.category
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""
// A.2.1.1.3	Komentář	Komentář k projevenému přání pacienta
* group[=].element[+].code = #udajePoskytnutePacientem.driveVyslovenaPrani.komentar
* group[=].element[=].display = "A.2.1.1.3 - Comment"
* group[=].element[=].target.code = #Consent.extension[note]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"
// A.2.1.1.4	Dotčený stav	Stav na který se přání vztahuje. Přání může být vztaženo pouze k určitému zdravotnímu problému či množině problémů.
* group[=].element[+].code = #udajePoskytnutePacientem.driveVyslovenaPrani.dotcenyStav
* group[=].element[=].display = "A.2.1.1.4 - Related conditions"
* group[=].element[=].target.code = #Consent.extension[relatedCondition]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""
// A.2.1.1.5	Dokument	Fotokopie dokumentu či elektronický dokument s projeveným přáním pacienta mající náležitosti požadované zákonem
* group[=].element[+].code = #udajePoskytnutePacientem.driveVyslovenaPrani.dokument
* group[=].element[=].display = "A.2.1.1.5 - Advance Directive document"
* group[=].element[=].target.code = #Consent.sourceAttachment
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

//// ---------------- Cestovatelská anamnéza -------------------////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCzPatientProvidedDataCz"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"
// A.2.1.2	Cestovatelská anamnéza
* group[=].element[+].code = #udajePoskytnutePacientem.cestovatelskaAnameza
* group[=].element[=].display = "A.2.1.2 - Travel history"
* group[=].element[=].target.code = #Composition.section:sectionTravelHx.entry
* group[=].element[=].target.display = "Composition.section:sectionTravelHx.entry.ofType(Observation: travel history (HDR CZ))"
* group[=].element[=].target.equivalence = #equivalent

// PS observation travel 
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCzPatientProvidedDataCz"
* group[=].target = "https://hl7.cz/fhir/hdr/StructureDefinition/cz-observation-travel-hdr"
// A.2.1.2.1	Země	Země, které pacient navštívil
* group[=].element[+].code = #udajePoskytnutePacientem.cestovatelskaAnameza.zeme
* group[=].element[=].display = "A.2.1.2.1 - Country"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.1.2.2	Období	Datum vstupu a odjezdu
* group[=].element[+].code = #udajePoskytnutePacientem.cestovatelskaAnameza.obdobi
* group[=].element[=].display = "A.2.1.2.2 - Date of Entry into and Departure from the Country"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
// A.2.1.2.3	Komentář	Poznámky k pobytu.
* group[=].element[+].code = #udajePoskytnutePacientem.cestovatelskaAnameza.komentar
* group[=].element[=].display = "A.2.1.2.3 - Comment"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent