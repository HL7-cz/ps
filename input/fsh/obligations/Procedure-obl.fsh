Profile: CZ_ProcedureObligationsPs
Parent: CZ_ProcedurePs
Id: cz-procedure-obl-ps
Title:    "Procedure: Obligations"
Description: "This profile defines obligations for a procedure in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

// TEST OBLIGATIONS  ====>
// Creator Obligations L3 ============>
* code insert OblCreator(#SHALL:populate-if-known,L3)
* text insert OblCreator(#SHALL:able-to-populate,L3)
* performedDateTime insert OblCreator(#SHALL:able-to-populate,L3)
* reasonCode insert OblCreator(#SHALL:able-to-populate,L3)
* reasonReference insert OblCreator(#SHALL:able-to-populate,L3)
* outcome insert OblCreator(#SHALL:populate-if-known,L3)
* focalDevice insert OblCreator(#SHALL:populate-if-known,L3)
* complication insert OblCreator(#SHALL:populate-if-known,L3)
* complicationDetail insert OblCreator(#SHALL:populate-if-known,L3)

// Consumer obligations L3
* code insert OblConsumer(#SHALL:display,L3)
* text insert OblConsumer(#SHALL:display,L3)
* performedDateTime insert OblConsumer(#SHALL:display,L3)
* reasonCode insert OblConsumer(#SHALL:display,L3)
* reasonReference insert OblConsumer(#SHALL:display,L3)
* outcome insert OblConsumer(#SHALL:display,L3)
* focalDevice insert OblConsumer(#SHALL:display,L3)
* complication insert OblConsumer(#SHALL:display,L3)
* complicationDetail insert OblConsumer(#SHALL:display,L3)