Instance: socialHistory2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/socialHistory2FHIR-cz-ps"
* name = "SocialHistory2FHIR-cz-ps"
* title = "ConceptMap: Social History to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Social History Model to this guide mapping"

///////////////////////////////////////////////////////////////
// --- SECTION LEVEL (Composition.section:sectionSocialHistory)
///////////////////////////////////////////////////////////////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCzSocialHistoryEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.6.1 Substance use
* group[=].element[+].code = #substanceUse
* group[=].element[=].display = "A.2.6.1 - Substance use"
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory
* group[=].element[=].target.display = "Composition.section:sectionSocialHistory"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6.1.1 Alcohol -> entry slice
* group[=].element[+].code = #substanceUse.alcoholUse
* group[=].element[=].display = "A.2.6.1.1 - Alcohol"
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory.entry:alcoholUse
* group[=].element[=].target.display = "Composition.section:sectionSocialHistory.entry:alcoholUse.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6.1.2 Tobacco use -> entry slice
* group[=].element[+].code = #substanceUse.tobaccoUse
* group[=].element[=].display = "A.2.6.1.2 - Tobacco use"
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory.entry:tobaccoUse
* group[=].element[=].target.display = "Composition.section:sectionSocialHistory.entry:tobaccoUse.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6.1.3 Drugs -> entry slice
* group[=].element[+].code = #substanceUse.drugUse
* group[=].element[=].display = "A.2.6.1.3 - Drugs"
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory.entry:drugUse
* group[=].element[=].target.display = "Composition.section:sectionSocialHistory.entry:drugUse.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6.1.4 Other addictions -> entry slice (Observation)
* group[=].element[+].code = #substanceUse.otherAddictions
* group[=].element[=].display = "A.2.6.1.4 - Other addictions"
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory.entry:otherAddictions
* group[=].element[=].target.display = "Composition.section:sectionSocialHistory.entry:otherAddictions.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

///////////////////////////////////////////////////////////////
// --- ALCOHOL USE (Observation profile)
///////////////////////////////////////////////////////////////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCzSocialHistoryEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-observation-alcoholUse-ps"

// A.2.6.1.1.1 Status
* group[=].element[+].code = #substanceUse.alcoholUse.status
* group[=].element[=].display = "A.2.6.1.1.1 - Status"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6.1.1.2 Period and quantity (period)
* group[=].element[+].code = #substanceUse.alcoholUse.periodAndQuantity
* group[=].element[=].display = "A.2.6.1.1.2 - Period and quantity"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = "Observation.effectivePeriod"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""

// A.2.6.1.1.3 Comment
* group[=].element[+].code = #substanceUse.alcoholUse.comment
* group[=].element[=].display = "A.2.6.1.1.3 - Comment"
* group[=].element[=].target.code = #Observation.note.text
* group[=].element[=].target.display = "Observation.note.text"
* group[=].element[=].target.equivalence = #equivalent

///////////////////////////////////////////////////////////////
// --- TOBACCO USE (Observation profile)
///////////////////////////////////////////////////////////////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCzSocialHistoryEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-observation-tobaccoUse-ps"

// A.2.6.1.2.1 Status
* group[=].element[+].code = #substanceUse.tobaccoUse.status
* group[=].element[=].display = "A.2.6.1.2.1 - Status"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

// A.2.6.1.2.2 Period and quantity (period)
* group[=].element[+].code = #substanceUse.tobaccoUse.periodAndQuantity
* group[=].element[=].display = "A.2.6.1.2.2 - Period and quantity"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = "Observation.effectivePeriod"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment =""

// A.2.6.1.2.3 Comment
* group[=].element[+].code = #substanceUse.tobaccoUse.comment
* group[=].element[=].display = "A.2.6.1.2.3 - Comment"
* group[=].element[=].target.code = #Observation.note.text
* group[=].element[=].target.display = "Observation.note.text"
* group[=].element[=].target.equivalence = #equivalent

///////////////////////////////////////////////////////////////
// --- DRUG USE (Observation profile)
///////////////////////////////////////////////////////////////
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCzSocialHistoryEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-observation-drugUse-ps"

// A.2.6.1.3.1 Status
* group[=].element[+].code = #substanceUse.drugUse.status
* group[=].element[=].display = "A.2.6.1.3.1 - Status"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6.1.3.2 Period and quantity
* group[=].element[+].code = #substanceUse.drugUse.periodAndQuantity
* group[=].element[=].display = "A.2.6.1.3.2 - Period and quantity"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = "Observation.effectivePeriod"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""

// A.2.6.1.3.3 Substance type
* group[=].element[+].code = #substanceUse.drugUse.substanceType
* group[=].element[=].display = "A.2.6.1.3.3 - Substance type"
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.display = "Observation.code"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""

// A.2.6.1.3.4 Route of administration
* group[=].element[+].code = #substanceUse.drugUse.routeOfAdministration
* group[=].element[=].display = "A.2.6.1.3.4 - Route of administration"
* group[=].element[=].target.code = #Observation.method
* group[=].element[=].target.display = "Observation.method"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "EROUTADM"

// A.2.6.1.3.5 Comment
* group[=].element[+].code = #substanceUse.drugUse.comment
* group[=].element[=].display = "A.2.6.1.3.5 - Comment"
* group[=].element[=].target.code = #Observation.note.text
* group[=].element[=].target.display = "Observation.note.text"
* group[=].element[=].target.equivalence = #equivalent

// --- OTHER ADDICTIONS (preferred as Observation in Social History)
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogCzSocialHistoryEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-observation-otherAddictions-ps"

// value as ICD-10 code when provided
* group[=].element[+].code = #substanceUse.otherAddictions.code
* group[=].element[=].display = "A.2.6.1.4 - ICD-10 code (if present)"
* group[=].element[=].target.code = #Observation.valueCodeableConcept.coding[]
* group[=].element[=].target.display = "Observation.valueCodeableConcept.coding[]"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""

// free text fallback
* group[=].element[+].code = #substanceUse.otherAddictions.text
* group[=].element[=].display = "A.2.6.1.4 - Free text"
* group[=].element[=].target.code = #Observation.valueString
* group[=].element[=].target.display = "Observation.valueString"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""
