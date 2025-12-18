Profile: CZ_PractitionerRoleObligationsPs
Parent: CZ_PractitionerRoleCore
Id: cz-practitionerrole-obl-ps
Title:    "Practitioner Role: Obligations"
Description: "This profile defines obligations for a practitioner role in FHIR for the purpose of this guide."

* insert SetFmmandStatusRule ( 0, informative)

// L2 Creator Obligations ============>
* identifier insert OblCreator(#SHALL:populate-if-known,L2)
* practitioner insert OblCreator(#SHALL:able-to-populate,L2)
* specialty insert OblCreator(#SHALL:populate-if-known,L2)
* telecom insert OblCreator(#SHALL:able-to-populate,L2)
* organization insert OblCreator(#SHALL:able-to-populate,L2) 

// L2 Consumer Obligations ============>
* identifier insert OblConsumer(#SHALL:display,L2)
* practitioner insert OblConsumer(#SHALL:display,L2)
* specialty insert OblConsumer(#SHALL:display,L2)
* telecom insert OblConsumer(#SHALL:display,L2)
* organization insert OblConsumer(#SHALL:display,L2) 

// L3 Creator Obligations ============>
* identifier insert OblCreator(#SHALL:populate-if-known,L3)
* practitioner insert OblCreator(#SHALL:able-to-populate,L3)
* specialty insert OblCreator(#SHALL:populate-if-known,L3)
* telecom insert OblCreator(#SHALL:able-to-populate,L3)
* organization insert OblCreator(#SHALL:able-to-populate,L3) 

// L3 Consumer Obligations ============>
* identifier insert OblConsumer(#SHALL:display,L3)
* practitioner insert OblConsumer(#SHALL:display,L3)
* specialty insert OblConsumer(#SHALL:display,L3)
* telecom insert OblConsumer(#SHALL:display,L3)
* organization insert OblConsumer(#SHALL:display,L3) 