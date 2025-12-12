Instance: cz-example-bundle-ps
InstanceOf: CZ_BundlePs
Usage: #example
Title: "Bundle example for Patient Summary"
Description: "An example bundle containing a Patient resource for testing purposes."
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:0be8f7b6-49e4-4201-a952-e82372d99fa5"
* type = #document
* timestamp = "2024-01-01T12:00:00Z"

* entry[composition].fullUrl = "urn:uuid:a082a2ac-7cd0-4444-8819-73580dd1b120"
* entry[composition].resource = cz-example-composition-ps

* entry[patient].fullUrl = "urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57"
* entry[patient].resource = cz-example-patient

// // // Author
* entry[practitionerrole].fullUrl = "urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e"
* entry[practitionerrole].resource = cz-example-practitioner-role
* entry[practitioner].fullUrl = "urn:uuid:2e877c76-633d-479b-a6d4-c6d95942de3f"
* entry[practitioner].resource = cz-example-practitioner
* entry[organization][+].fullUrl = "urn:uuid:e206d37b-cfd4-4f10-ad09-ba78038847ca"
* entry[organization][=].resource = cz-organizationAuthor-example

// Presented Form
* entry[sectionpresentedForm].fullUrl = "urn:uuid:fe437ba4-9e0b-4d45-8db3-228c7c05abc0"
* entry[sectionpresentedForm].resource = cz-pdf-example

// Patient Provided Data - Advance Directives
* entry[consent].fullUrl = "urn:uuid:054899d6-4868-40cb-a9cc-a52f93e2d22f"
* entry[consent].resource = cz-advance-directive-example

// Patient Provided Data - Travel History
* entry[sectionTravelHx].fullUrl = "urn:uuid:4eceb19d-d67b-4520-badf-9bbf20cd6046"
* entry[sectionTravelHx].resource = cz-observation-travel-hdr-example

Instance: cz-example-composition-ps
InstanceOf: CZ_CompositionPs
Usage: #example
Title: "Composition example for Patient Summary"
Description: "An example Composition resource for testing purposes."
* id = "a082a2ac-7cd0-4444-8819-73580dd1b120"
* status = #final
* type = $loinc#60591-5 "Patient summary document"
* title = "PS pacienta - Karel Budějovský"
* date = "2024-01-01T12:00:00Z"
* type = $loinc#60591-5 "Patient summary document"
* confidentiality = #N
* language = #cs
// recordTarget
* subject = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)
// author
* author = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)
// custodian
* custodian = Reference(urn:uuid:e206d37b-cfd4-4f10-ad09-ba78038847ca)

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Patient summary - Mračena Mrakomorová</h2><p>Pacientský sourhn Karel Budějovický</p></div>"

* section[sectionpresentedForm].title = "Prezented Form Section"
* section[sectionpresentedForm].code = $loinc#60591-5 "Patient summary document"
* section[sectionpresentedForm].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Prezented Form Section obsahující PDF dokument</div>"
* section[sectionpresentedForm].text.status = #additional
* section[sectionpresentedForm].entry[0] = Reference(urn:uuid:fe437ba4-9e0b-4d45-8db3-228c7c05abc0)

* section[sectionAdvanceDirectives].title = "Advance Directives Section"
* section[sectionAdvanceDirectives].code = $loinc#42348-3 "Advance directives"
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Nesouhlas s posmrtným dárcovstvím orgánů a tkání k transplantačním účelům</div>"
* section[sectionAdvanceDirectives].text.status = #additional
* section[sectionAdvanceDirectives].entry[0] = Reference(urn:uuid:054899d6-4868-40cb-a9cc-a52f93e2d22f) //TODO

* section[sectionTravelHx].title = "Travel History Section"
* section[sectionTravelHx].code = $loinc#10182-4 "Travel history"
* section[sectionTravelHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient navštívil Belgii během poslední půl roce.</div>"
* section[sectionTravelHx].text.status = #additional
* section[sectionTravelHx].entry[0] = Reference(urn:uuid:4eceb19d-d67b-4520-badf-9bbf20cd6046) //TODO

* section[sectionAllergies].title = "Allergies Section"
* section[sectionAllergies].code = $loinc#48765-2 "llergies and adverse reactions"
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergies Section obsahující informace o alergiích pacienta</div>"
* section[sectionAllergies].text.status = #additional
* section[sectionAllergies].entry[0] = Reference(urn:uuid:sectionAllergies-example) //TODO

* section[sectionAlerts].title = "Alerts Section"
* section[sectionAlerts].code = $loinc#104605-1 "sectionAlertss"
* section[sectionAlerts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alerts Section obsahující informace o upozorněních pacienta</div>"
* section[sectionAlerts].text.status = #additional
* section[sectionAlerts].entry[0] = Reference(urn:uuid:sectionAlerts-example) //TODO

* section[sectionImmunizations].title = "Immunizations Section"
* section[sectionImmunizations].code = $loinc#11369-6 "sectionImmunizations"
* section[sectionImmunizations].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Immunizations Section obsahující informace o očkováních pacienta</div>"
* section[sectionImmunizations].text.status = #additional
* section[sectionImmunizations].entry[0] = Reference(urn:uuid:immunization-example) //TODO

//TODO - je opravdu Past Illness History Section správně v sectionPastProblems?
* section[sectionPastProblems].title = "Past Illness History Section"
* section[sectionPastProblems].entry[0] = Reference(urn:uuid:past-illness-history-example) //TODO
* section[sectionPastProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Past Illness History Section obsahující informace o minulých onemocněních pacienta</div>"
* section[sectionPastProblems].text.status = #additional

* section[sectionPatientStory].title = "Patient History Section"
* section[sectionPatientStory].entry[0] = Reference(urn:uuid:patient-history-example) //TODO
* section[sectionPatientStory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient History Section obsahující informace o anamnéze pacienta</div>"
* section[sectionPatientStory].text.status = #additional

* section[sectionProblems].title = "Problems Section"
* section[sectionProblems].code = $loinc#11450-4 "Problems"
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Problems Section obsahující informace o problémech pacienta</div>"
* section[sectionProblems].text.status = #additional

* section[sectionProceduresHx].title = "Procedures History Section"
* section[sectionProceduresHx].code = $loinc#47519-4 "Procedures history"
* section[sectionProceduresHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Procedures History Section obsahující informace o provedených výkonech pacienta</div>"
* section[sectionProceduresHx].text.status = #additional

* section[sectionMedicalDevices].title = "Medical Devices Section"
* section[sectionMedicalDevices].code = $loinc#46264-8 "History of medical device use"
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medical Devices Section obsahující informace o lékařských zařízeních používaných pacientem</div>"
* section[sectionMedicalDevices].text.status = #additional

* section[sectionFunctionalStatus].title = "Functional Status Section"
* section[sectionFunctionalStatus].code = $loinc#47420-5 "Functional status"
* section[sectionFunctionalStatus].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Functional Status Section obsahující informace o funkčním stavu pacienta</div>"
* section[sectionFunctionalStatus].text.status = #additional

* section[sectionMedications].title = "Medication Summary Section"
* section[sectionMedications].code = $loinc#10160-0 "Medication summary"
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medication Summary Section obsahující informace o lécích pacienta</div>"
* section[sectionMedications].text.status = #additional
* section[sectionMedications].entry[0] = Reference(urn:uuid:medication-summary-example) //TODO

* section[sectionSocialHistory].title = "Social History Section"
* section[sectionSocialHistory].code = $loinc#29762-2 "Social history"
* section[sectionSocialHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Social History Section obsahující informace o sociálním zázemí pacienta</div>"
* section[sectionSocialHistory].text.status = #additional

* section[sectionSocialHistory].entry[alcoholUse] = Reference(urn:uuid:alcohol-use-example) //TODO

* section[sectionSocialHistory].entry[tobaccoUse] = Reference(urn:uuid:tobacco-use-example) //TODO

* section[sectionSocialHistory].entry[drugUse] = Reference(urn:uuid:drug-use-example) //TODO

* section[sectionSocialHistory].entry[otherAddictions] = Reference(urn:uuid:other-addictions-example) //TODO

* section[sectionPregnancyHx].title = "Pregnancy History Section"
* section[sectionPregnancyHx].code = $loinc#10162-6 "Pregnancy history"
* section[sectionPregnancyHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pregnancy History Section obsahující informace o graviditách pacienta</div>"
* section[sectionPregnancyHx].text.status = #additional

* section[sectionPregnancyHx].entry[pregnancyStatus] = Reference(urn:uuid:current-pregnancy-example) //TODO

* section[sectionPregnancyHx].entry[pregnancyOutcome] = Reference(urn:uuid:pregnancy-history-example) //TODO

* section[sectionResults].title = "Results Section"
* section[sectionResults].code = $loinc#30954-2 "Results"
* section[sectionResults].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results Section obsahující informace o výsledcích vyšetření pacienta</div>"
* section[sectionResults].text.status = #additional
* section[sectionResults].entry[0] = Reference(urn:uuid:results-example) //TODO

* section[sectionVitalSigns].title = "Vital Signs Section"
* section[sectionVitalSigns].code = $loinc#8716-3 "Vital signs"
* section[sectionVitalSigns].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vital Signs Section obsahující informace o vitálních funkcích pacienta</div>"
* section[sectionVitalSigns].text.status = #additional

* section[sectionPlanOfCare].title = "Care Plan Section"
* section[sectionPlanOfCare].code = $loinc#18776-5 "Care plan"
* section[sectionPlanOfCare].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Care Plan Section obsahující informace o plánu péče o pacienta</div>"
* section[sectionPlanOfCare].text.status = #additional
* section[sectionPlanOfCare].entry[0] = Reference(urn:uuid:care-plan-example) //TODO

* section[sectionAttachments].title = "Attachments Section"
* section[sectionAttachments].code = $loinc#77599-9 "Attachments"
* section[sectionAttachments].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Attachments Section obsahující přílohy k pacientskému souhrnu</div>"
* section[sectionAttachments].text.status = #additional
* section[sectionAttachments].entry[0] = Reference(urn:uuid:attachments-example) //TODO

Instance: cz-advance-directive-example
InstanceOf: CZ_ConsentPs
Usage: #example
Title: "Advance Directive example"
Description: "An example Advance Directive resource for testing purposes."
* id = "054899d6-4868-40cb-a9cc-a52f93e2d22f"

// Stav a scope – dříve vyslovené přání k poskytování ZS
* status = #active
* scope = $consentscope#adr "Advance directives"

// Typ přání – living will type (A.2.1.1.2 + EPS)
* category = $consentcategory#acd "Advance Directive"

// Volný narativní popis přání (není povinný, ale hodí se)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dříve vyslovené přání – nesouhlas s posmrtným dárcovstvím orgánů a tkání k transplantačním účelům.</div>"

// Pacient a datum vyjádření přání (A.2.1.1.1 Datum a čas)
* patient = Reference(Patient/cz-example-patient)
* dateTime = "2024-06-15T10:30:00+02:00"

// Lékař, který pacienta poučil dle §36 odst. 2
* performer[0] = Reference(Practitioner/cz-example-practitioner)

// Odkaz na právní rámec (§36 ZZS)
* policyRule.coding[0].system = "https://mzcr.cz/pravni-predpisy"
* policyRule.coding[0].code = #ZZS-372-2011-§36
* policyRule.coding[0].display = "Dříve vyslovené přání dle §36 zákona č. 372/2011 Sb."

// // Vlastní přání
// * provision.type = #deny
// * provision.period.start = "2024-06-15T10:30:00+02:00"

// // Typ přání kódově – vztah k darování orgánů
// * provision.code[0].coding[0].system = "http://snomed.info/sct"
// * provision.code[0].coding[0].code = #182895007
// * provision.code[0].coding[0].display = "Finding related to organ donation (finding)"
// * provision.code[0].text = "Nesouhlas s posmrtným darováním orgánů a tkání k transplantačním účelům"

// Komentář k přání – EPS note extension (A.2.1.1.3)
* extension[note].valueAnnotation.text = "Pacient byl opakovaně poučen dle §36 odst. 2, přání bylo potvrzeno v přítomnosti svědků."

// Dotčený stav (A.2.1.1.4) – EPS relatedCondition na root úrovni
* extension[relatedCondition].valueReference = Reference(Condition/irreversible-coma)

// Dokument s projeveným přáním (A.2.1.1.5 Dokument)
* sourceAttachment.contentType = #application/pdf
* sourceAttachment.url = "Binary/advance-directive-organ-donation"
* sourceAttachment.title = "Dříve vyslovené přání – nesouhlas s dárcovstvím orgánů a tkání"
* sourceAttachment.creation = "2024-06-15T10:30:00+02:00"

Instance: cz-observation-travel-hdr-example
InstanceOf: CZ_ObservationTravelHdr
Usage: #example
Title: "Observation Travel History example"
Description: "An example Observation resource for Travel History for testing purposes."
* id = "4eceb19d-d67b-4520-badf-9bbf20cd6046"
* status = #final
* code = $loinc#94651-7 "Country of travel [Location]"
* subject = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)
* effectiveDateTime = "2025-07-20"
* valueCodeableConcept.coding[0].system = "urn:iso:std:iso:3166"
* valueCodeableConcept.coding[0].code = #BEL
* valueCodeableConcept.coding[0].display = "Belgium"
* valueCodeableConcept.text = "Belgie"
* performer = Reference(urn:uuid:2e877c76-633d-479b-a6d4-c6d95942de3f)
* note[0].text = "Pacient navštívil Belgii během poslední půl roce."