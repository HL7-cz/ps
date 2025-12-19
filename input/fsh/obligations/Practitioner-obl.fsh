Profile: CZ_PractitionerObligationsPs
Parent: CZ_PractitionerCore
Id: cz-practitioner-obl-ps
Title:    "Practitioner: Obligations"
Description: "This profile defines obligations for a practitioner in FHIR for the purpose of this guide."

// creator obligations L1 ============>
* identifier[KRZP] insert OblCreator(#SHALL:populate-if-known,L1)
* name insert OblCreator(#SHALL:able-to-populate,L1)
* telecom insert OblCreator(#SHOULD:able-to-populate,L1)
* address insert OblCreator(#SHOULD:able-to-populate,L1)

// consumer obligations L1 ===========>
* identifier[KRZP] insert OblConsumer(#SHALL:process,L1)
* name insert OblConsumer(#SHALL:display,L1)
* telecom insert OblConsumer(#SHOULD:display,L1)
* address insert OblConsumer(#SHOULD:display,L1)

// creator obligations L2 ============>
* identifier[KRZP] insert OblCreator(#SHALL:populate-if-known,L2)
* name insert OblCreator(#SHALL:able-to-populate,L2)
* telecom insert OblCreator(#SHOULD:able-to-populate,L2)
* address insert OblCreator(#SHOULD:able-to-populate,L2)

// consumer obligations L2 ===========>
* identifier[KRZP] insert OblConsumer(#SHALL:process,L2)
* name insert OblConsumer(#SHALL:display,L2)
* telecom insert OblConsumer(#SHOULD:display,L2)
* address insert OblConsumer(#SHOULD:display,L2)

// creator obligations L3 ============>
* identifier[KRZP] insert OblCreator(#SHALL:populate-if-known,L3)
* name insert OblCreator(#SHALL:able-to-populate,L3)
* telecom insert OblCreator(#SHOULD:able-to-populate,L3)
* address insert OblCreator(#SHOULD:able-to-populate,L3)

// consumer obligations L3 ===========>
* identifier[KRZP] insert OblConsumer(#SHALL:process,L3)
* name insert OblConsumer(#SHALL:display,L3)
* telecom insert OblConsumer(#SHOULD:display,L3)
* address insert OblConsumer(#SHOULD:display,L3)