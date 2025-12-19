Profile: CZ_PatientObligationsPs
Parent: CZ_PatientCore
Id: cz-patient-obl-ps
Title:    "Patient: Obligations"
Description: "This profile defines obligations for an human Patient in FHIR for the purpose of this guide."

// TEST OBLIGATIONS  ====>
// Creator Obligations L1 ============>
* identifier insert OblCreator(#SHALL:able-to-populate,L1)
* name.given insert OblCreator(#SHALL:able-to-populate,L1)
* name.family insert OblCreator(#SHALL:able-to-populate,L1)
* name.text insert OblCreator(#SHALL:able-to-populate,L1) //can-send
* telecom insert OblCreator(#SHOULD:able-to-populate,L1) //can-send
* gender insert OblCreator(#SHALL:able-to-populate,L1)
* birthDate insert OblCreator(#SHALL:able-to-populate,L1)
* generalPractitioner insert OblCreator(#SHOULD:able-to-populate,L1) //can-send
* address insert OblCreator(#SHALL:able-to-populate,L1) //can-send

// Consumer obligations L1
* identifier insert OblConsumer(#SHALL:display,L1)
* name.given insert OblConsumer(#SHALL:display,L1)
* name.family insert OblConsumer(#SHALL:display,L1)
* name.text insert OblConsumer(#SHOULD:display,L1)
* telecom insert OblConsumer(#SHALL:display,L1)
* gender insert OblConsumer(#SHALL:display,L1)
* birthDate insert OblConsumer(#SHALL:display,L1)
* generalPractitioner insert OblConsumer(#SHOULD:display,L1)
* address insert OblConsumer(#SHALL:display,L1)

// Creator Obligations L2 ============>
* identifier insert OblCreator(#SHALL:able-to-populate,L2)
* name.given insert OblCreator(#SHALL:able-to-populate,L2)
* name.family insert OblCreator(#SHALL:able-to-populate,L2)
* name.text insert OblCreator(#SHALL:able-to-populate,L2) //can-send
* telecom insert OblCreator(#SHOULD:able-to-populate,L2) //can-send
* gender insert OblCreator(#SHALL:able-to-populate,L2)
* birthDate insert OblCreator(#SHALL:able-to-populate,L2)
* generalPractitioner insert OblCreator(#SHOULD:able-to-populate,L2) //can-send
* address insert OblCreator(#SHALL:able-to-populate,L2) //can-send

// Consumer obligations L2
* identifier insert OblConsumer(#SHALL:display,L2)
* name.given insert OblConsumer(#SHALL:display,L2)
* name.family insert OblConsumer(#SHALL:display,L2)
* name.text insert OblConsumer(#SHOULD:display,L2)
* telecom insert OblConsumer(#SHALL:display,L2)
* gender insert OblConsumer(#SHALL:display,L2)
* birthDate insert OblConsumer(#SHALL:display,L2)
* generalPractitioner insert OblConsumer(#SHOULD:display,L2)
* address insert OblConsumer(#SHALL:display,L2)

// Creator Obligations L3 ============>
* identifier insert OblCreator(#SHALL:able-to-populate,L3)
* name.given insert OblCreator(#SHALL:able-to-populate,L3)
* name.family insert OblCreator(#SHALL:able-to-populate,L3)
* name.text insert OblCreator(#SHALL:able-to-populate,L3) //can-send
* telecom insert OblCreator(#SHOULD:able-to-populate,L3) //can-send
* gender insert OblCreator(#SHALL:able-to-populate,L3)
* birthDate insert OblCreator(#SHALL:able-to-populate,L3)
* generalPractitioner insert OblCreator(#SHOULD:able-to-populate,L3) //can-send
* address insert OblCreator(#SHALL:able-to-populate,L3) //can-send

// Consumer obligations L3
* identifier insert OblConsumer(#SHALL:display,L3)
* name.given insert OblConsumer(#SHALL:display,L3)
* name.family insert OblConsumer(#SHALL:display,L3)
* name.text insert OblConsumer(#SHOULD:display,L3)
* telecom insert OblConsumer(#SHALL:display,L3)
* gender insert OblConsumer(#SHALL:display,L3)
* birthDate insert OblConsumer(#SHALL:display,L3)
* generalPractitioner insert OblConsumer(#SHOULD:display,L3)
* address insert OblConsumer(#SHALL:display,L3)


// Obligations at the element level
// Server obligations
/*
* identifier insert ObligationSet-02_creator-should-able
* identifier.system insert ObligationSet-01_creator-shall-able
* identifier.value insert ObligationSet-01_creator-shall-able
* name.given insert ObligationSet-01_creator-shall-able
* name.family insert ObligationSet-01_creator-shall-able
* birthDate insert ObligationSet-02_creator-should-able
* extension[patient-nationality] insert ObligationSet-04_creator-should-if-known
* gender insert ObligationSet-01_creator-shall-able

* telecom insert ObligationSet-04_creator-should-if-known
* address insert ObligationSet-04_creator-should-if-known

* generalPractitioner.identifier insert ObligationSet-02_creator-should-able
*/
//* generalPractitioner.name insert ObligationSet-02_creator-should-able
//* generalPractitioner.qualification insert ObligationSet-04_creator-should-if-known
//* generalPractitioner.telecom insert ObligationSet-04_creator-should-if-known

//* link.RelatedPersonCore insert ObligationSet-04_creator-should-if-known
//* link.RelatedPersonCore.relationship insert ObligationSet-04_creator-should-if-known
//* link.RelatedPersonCore.telecom insert ObligationSet-04_creator-should-if-known