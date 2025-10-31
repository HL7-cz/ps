Instance: cz-example-bundle-ps
InstanceOf: CZ_BundlePs
Usage: #example
Title: "Bundle example for Patient Summary"
Description: "An example bundle containing a Patient resource for testing purposes."
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:0be8f7b6-49e4-4201-a952-e82372d99fa5"
* type = #document
* timestamp = "2024-01-01T12:00:00Z"

* entry[composition].fullUrl = "urn:uuid:61e87aa9-960a-4a33-a368-2abce592cafc"
* entry[composition].resource = cz-example-composition-ps-L1

* entry[patient].fullUrl = "urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57"
* entry[patient].resource = cz-examplel1-patient

// // // Author
* entry[practitionerrole].fullUrl = "urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e"
* entry[practitionerrole].resource = cz-example-practitioner-role
* entry[practitioner].fullUrl = "urn:uuid:2e877c76-633d-479b-a6d4-c6d95942de3f"
* entry[practitioner].resource = cz-example-practitioner
* entry[organization][+].fullUrl = "urn:uuid:e206d37b-cfd4-4f10-ad09-ba78038847ca"
* entry[organization][=].resource = cz-organizationAuthor-example

// Presented Form
* entry[presentedForm].fullUrl = "urn:uuid:fe437ba4-9e0b-4d45-8db3-228c7c05abc0"
* entry[presentedForm].resource = cz-pdf-example

Instance: cz-example-composition-ps
InstanceOf: CZ_CompositionPs
Usage: #example
Title: "Composition example for Patient Summary"
Description: "An example Composition resource for testing purposes."
* status = #final
* type = $loinc#60591-5 "Patient summary document"
* title = "PS pacienta - Karel Budějovský"
* date = "2024-01-01T12:00:00Z"
* type = $loinc#60591-5 "Patient summary document"
* confidentiality = #N
* language = #cs
// recordTarget
* subject = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57) //TOTO příklad patient - subjekt
// author
* author = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e) //TOTO příklad practitioner - autor
// custodian
* custodian = Reference(urn:uuid:e206d37b-cfd4-4f10-ad09-ba78038847ca) //TOTO příklad organization - správce

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2>Patient summary - Karel Budějovický </h2><p>Pacientský sourhn Karel Budějovický</p></div>"

* section[presentedForm].title = "Prezented Form Section"
* section[presentedForm].code = $loinc#60591-5 "Patient summary document"
* section[presentedForm].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Prezented Form Section obsahující PDF dokument</div>"
* section[presentedForm].text.status = #additional
* section[presentedForm].entry[0] = Reference(urn:uuid:fe437ba4-9e0b-4d45-8db3-228c7c05abc0)

* section[advanceDirectives].title = "Advance Directives Section"
* section[advanceDirectives].code = $loinc#42348-3 "Advance directives"
* section[advanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Advance Directives Section obsahující informace o pokynech pacienta</div>"
* section[advanceDirectives].text.status = #additional
* section[advanceDirectives].entry[0] = Reference(urn:uuid:ad-directive-example) //TODO

* section[travelHistory].title = "Travel History Section"
* section[travelHistory].code = $loinc#10182-4 "Travel history"
* section[travelHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Travel History Section obsahující informace o cestách pacienta</div>"
* section[travelHistory].text.status = #additional
* section[travelHistory].entry[0] = Reference(urn:uuid:travel-history-example) //TODO

* section[allergy].title = "Allergy Section"
* section[allergy].code = $loinc#48765-2 "Allergy and adverse reactions"
* section[allergy].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergy Section obsahující informace o alergiích pacienta</div>"
* section[allergy].text.status = #additional
* section[allergy].entry[0] = Reference(urn:uuid:allergy-example) //TODO

* section[alert].title = "Alert Section"
* section[alert].code = $loinc#104605-1 "Alerts"
* section[alert].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alert Section obsahující informace o upozorněních pacienta</div>"
* section[alert].text.status = #additional
* section[alert].entry[0] = Reference(urn:uuid:alert-example) //TODO

* section[immunizations].title = "Immunizations Section"
* section[immunizations].code = $loinc#11369-6 "Immunizations"
* section[immunizations].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Immunizations Section obsahující informace o očkováních pacienta</div>"
* section[immunizations].text.status = #additional
* section[immunizations].entry[0] = Reference(urn:uuid:immunization-example) //TODO

* section[pastIllnessHistory].title = "Past Illness History Section"
* section[pastIllnessHistory].code = $loinc#11348-0 "Past illness history"
* section[pastIllnessHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Past Illness History Section obsahující informace o minulých onemocněních pacienta</div>"
* section[pastIllnessHistory].text.status = #additional
* section[pastIllnessHistory].entry[0] = Reference(urn:uuid:past-illness-history-example) //TODO

* section[patientHistory].title = "Patient History Section"
* section[patientHistory].code = $loinc#35090-0 "Patient history"
* section[patientHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient History Section obsahující informace o zdravotní historii pacienta</div>"
* section[patientHistory].text.status = #additional
* section[patientHistory].entry[0] = Reference(urn:uuid:patient-history-example) //TODO

* section[medicationSummary].title = "Medication Summary Section"
* section[medicationSummary].code = $loinc#10160-0 "Medication summary"
* section[medicationSummary].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medication Summary Section obsahující informace o lécích pacienta</div>"
* section[medicationSummary].text.status = #additional
* section[medicationSummary].entry[0] = Reference(urn:uuid:medication-summary-example) //TODO

* section[alcoholUse].title = "Alcohol Use Section"
* section[alcoholUse].code = $loinc#11331-6 "Alcohol use"
* section[alcoholUse].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alcohol Use Section obsahující informace o užívání alkoholu pacientem</div>"
* section[alcoholUse].text.status = #additional
* section[alcoholUse].entry[0] = Reference(urn:uuid:alcohol-use-example) //TODO

* section[tobaccoUse].title = "Tobacco Use Section"
* section[tobaccoUse].code = $loinc#11367-0 "Tobacco use"
* section[tobaccoUse].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Tobacco Use Section obsahující informace o užívání tabáku pacientem</div>"
* section[tobaccoUse].text.status = #additional
* section[tobaccoUse].entry[0] = Reference(urn:uuid:tobacco-use-example) //TODO

* section[drugUse].title = "Drug Use Section"
* section[drugUse].code = $loinc#11343-1 "Drug use"
* section[drugUse].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Drug Use Section obsahující informace o užívání drog pacientem</div>"
* section[drugUse].text.status = #additional
* section[drugUse].entry[0] = Reference(urn:uuid:drug-use-example) //TODO

* section[otherAddictions].title = "Other Addictions Section"
* section[otherAddictions].code = $loinc#29762-2 "Other addictions"
* section[otherAddictions].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Other Addictions Section obsahující informace o jiných závislostech pacienta</div>"
* section[otherAddictions].text.status = #additional
* section[otherAddictions].entry[0] = Reference(urn:uuid:other-addictions-example) //TODO

* section[currentPregnancy].title = "Current Pregnancy Section"
* section[currentPregnancy].code = $loinc#82810-3 "Current pregnancy"
* section[currentPregnancy].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Current Pregnancy Section obsahující informace o aktuální graviditě pacienta</div>"
* section[currentPregnancy].text.status = #additional
* section[currentPregnancy].entry[0] = Reference(urn:uuid:current-pregnancy-example) //TODO

* section[pregnancyHistory].title = "Pregnancy History Section"
* section[pregnancyHistory].code = $loinc#56833-7 "Pregnancy history"
* section[pregnancyHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pregnancy History Section obsahující informace o graviditách v minulosti pacienta</div>"
* section[pregnancyHistory].text.status = #additional
* section[pregnancyHistory].entry[0] = Reference(urn:uuid:pregnancy-history-example) //TODO

* section[results].title = "Results Section"
* section[results].code = $loinc#30954-2 "Results"
* section[results].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results Section obsahující informace o výsledcích vyšetření pacienta</div>"
* section[results].text.status = #additional
* section[results].entry[0] = Reference(urn:uuid:results-example) //TODO

* section[carePlan].title = "Care Plan Section"
* section[carePlan].code = $loinc#18776-5 "Care plan"
* section[carePlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Care Plan Section obsahující informace o plánu péče o pacienta</div>"
* section[carePlan].text.status = #additional
* section[carePlan].entry[0] = Reference(urn:uuid:care-plan-example) //TODO

* section[attachments].title = "Attachments Section"
* section[attachments].code = $loinc#77599-9 "Attachments"
* section[attachments].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Attachments Section obsahující přílohy k pacientskému souhrnu</div>"
* section[attachments].text.status = #additional
* section[attachments].entry[0] = Reference(urn:uuid:attachments-example) //TODO