Instance: socialHistory2FHIR-cz-ps
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/Ps/ConceptMap/socialHistory2FHIR-cz-ps"
* name = "SocialHistory2FHIR-cz-ps"
* title = "ConceptMap: Social History to FHIR Patient Summary (CZ)"
* status = #draft
* experimental = true
* description = "PS Social History Model to this guide mapping"

* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogSocialHistoryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-composition-ps"

// A.2.6.1 -> Social History
* group[=].element[+].code = #substanceUse
* group[=].element[=].display = "A.2.7 - Social History"
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory
* group[=].element[=].target.display = "Composition.section:sectionSocialHistory"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6.1.1 -> entry:alcoholUse
* group[=].element[+].code = #substanceUse.alcoholUse
* group[=].element[=].display = "A.2.6.1.1 Alcohol"
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory.entry:entry:alcoholUse.ofType(Observation)
* group[=].element[=].target.display = "Composition.section:sectionSocialHistory.entry:entry:alcoholUse.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6.1.2 -> entry:tobaccoUse
* group[=].element[+].code = #substanceUse.tobaccoUse
* group[=].element[=].display = "A.2.6.1.2 Tobacco use"
* group[=].element[=].target.code = #Composition.section:substanceUse.entry:tobaccoUse.ofType(Observation)
* group[=].element[=].target.display = "Composition.section:substanceUse.entry:tobaccoUse.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6.1.3 -> entry:drugUse
* group[=].element[+].code = #substanceUse.drugUse
* group[=].element[=].display = "A.2.6.1.3 Drugs"
* group[=].element[=].target.code = #Composition.section:substanceUse.entry:drugUse.ofType(Observation)
* group[=].element[=].target.display = "Composition.section:substanceUse.entry:drugUse.ofType(Observation)"
* group[=].element[=].target.equivalence = #equivalent



// A.2.6.1.1 Alcohol
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogSocialHistoryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-observation-alcoholUse-ps"

* group[=].element[+].code = #alcoholUse.status
* group[=].element[=].display = "A.2.6.1.1.1 Status"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.comment = "Use valueCodeableConcept to represent the current alcohol use status (e.g., current/former/never)."

* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #alcoholUse.periodAndQuantity
* group[=].element[=].display = "A.2.6.1.1.2 Period and quantity"
* group[=].element[=].target.code = #Observation.effectivePeriod
* group[=].element[=].target.display = "Observation.effectivePeriod"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use effectivePeriod to capture the time interval the reported alcohol use applies to."

* group[=].element[+].code = #alcoholUse.periodAndQuantity
* group[=].element[=].display = "A.2.6.1.1.2 Period and quantity"
* group[=].element[=].target.code = #Observation.component[x].valueQuantity
* group[=].element[=].target.display = "Observation.component[x].valueQuantity"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Represent amount/frequency as component(s). Each component SHALL have component.code defining what is measured (e.g., units/week, drinks/day) and valueQuantity with UCUM units where possible. Multiple components may be used."

* group[=].element[+].code = #alcoholUse.comment
* group[=].element[=].display = "A.2.6.1.1.3 Comment"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6.1.2 Tobacco use
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogSocialHistoryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-observation-tobaccoUse-ps"

// Status
* group[=].element[+].code = #tobaccoUse.status
* group[=].element[=].display = "A.2.6.1.2.1 Status"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Smoking status as a coded value (e.g., current/former/never)."

// Period (část periodAndQuantity)
* group[=].element[+].code = #tobaccoUse.periodAndQuantity.period
* group[=].element[=].display = "A.2.6.1.2.2 Period and quantity - period"
* group[=].element[=].target.code = #Observation.effectivePeriod
* group[=].element[=].target.display = "Observation.effectivePeriod"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Time interval the reported tobacco use applies to."

// Quantity (část periodAndQuantity)
* group[=].element[+].code = #tobaccoUse.periodAndQuantity.quantity
* group[=].element[=].display = "A.2.6.1.2.2 Period and quantity - quantity"
* group[=].element[=].target.code = #Observation.component.valueQuantity
* group[=].element[=].target.display = "Observation.component.valueQuantity"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Average amount as component(s); each component SHALL define component.code (e.g., cigarettes/day) and use UCUM where possible."

// Comment
* group[=].element[+].code = #tobaccoUse.comment
* group[=].element[=].display = "A.2.6.1.2.3 Comment"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6.1.3 Drugs
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogSocialHistoryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-observation-drugUse-ps"

// Status
* group[=].element[+].code = #drugUse.status
* group[=].element[=].display = "A.2.6.1.3.1 Status"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Current status of drug use/dependence as coded value (e.g., current/former/never)."

// Period (část periodAndQuantity)
* group[=].element[+].code = #drugUse.periodAndQuantity.period
* group[=].element[=].display = "A.2.6.1.3.2 Period and quantity - period"
* group[=].element[=].target.code = #Observation.effectivePeriod
* group[=].element[=].target.display = "Observation.effectivePeriod"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Time interval the reported drug use applies to."

// Quantity / dose quantification (část periodAndQuantity)
* group[=].element[+].code = #drugUse.periodAndQuantity.quantity
* group[=].element[=].display = "A.2.6.1.3.2 Period and quantity - quantity"
* group[=].element[=].target.code = #Observation.component.valueQuantity
* group[=].element[=].target.display = "Observation.component.valueQuantity"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Represent administered amount/average quantity as component(s). Each component SHALL carry component.code (what is quantified) and valueQuantity with UCUM units where possible."

// Substance type
* group[=].element[+].code = #drugUse.substanceType
* group[=].element[=].display = "A.2.6.1.3.3 Substance type"
* group[=].element[=].target.code = #Observation.component.valueCodeableConcept
* group[=].element[=].target.display = "Observation.component.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Record the substance type as a component (component.code identifies 'substance'; valueCodeableConcept contains the substance code, e.g., ICD-10/SNOMED CT)."

// Route of administration
* group[=].element[+].code = #drugUse.routeOfAdministration
* group[=].element[=].display = "A.2.6.1.3.4 Route of administration"
* group[=].element[=].target.code = #Observation.component.valueCodeableConcept
* group[=].element[=].target.display = "Observation.component.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Route(s) of administration as component(s) (repeatable). component.code identifies 'route'; valueCodeableConcept holds the route code."

// Comment
* group[=].element[+].code = #drugUse.comment
* group[=].element[=].display = "A.2.6.1.3.5 Comment"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = "Observation.note"
* group[=].element[=].target.equivalence = #equivalent

// A.2.6.1.4 Other addictions
* group[+].source = "https://hl7.cz/fhir/ps/StructureDefinition/LogSocialHistoryCzEn"
* group[=].target = "https://hl7.cz/fhir/ps/StructureDefinition/cz-observation-otherAddictions-ps"

* group[=].element[+].code = #otherAddictions
* group[=].element[=].display = "A.2.6.1.4 Other addictions"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Create one Observation per entry. Use valueCodeableConcept for ICD-10/SNOMED coding; if only free text is available, populate CodeableConcept.text (and optionally Observation.note)."