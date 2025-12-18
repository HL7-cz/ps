Profile: CZ_MedicalDeviceObligationsPS
Parent: CZ_MedicalDevice
Id: cz-medicaldevice-obl-ps
Title:    "Medical Device: Obligations"
Description: "This profile defines obligations for a medical device result in FHIR for the purpose of this guide."

* insert SetFmmandStatusRule ( 0, informative)

// Creator Obligations L2 ============>
* type insert OblCreator(#SHOULD:able-to-populate,L2)
* deviceName.name insert OblCreator(#SHOULD:able-to-populate,L2)
* modelNumber insert OblCreator(#SHOULD:able-to-populate,L2)
* identifier insert OblCreator(#SHOULD:able-to-populate,L2)
* note insert OblCreator(#SHOULD:able-to-populate,L2)
* manufacturer insert OblCreator(#SHOULD:able-to-populate,L2)
* udiCarrier insert OblCreator(#SHOULD:able-to-populate,L2)

// Consumer obligations L2 ===========>
* type insert OblConsumer(#SHOULD:display,L2)
* deviceName.name insert OblConsumer(#SHOULD:display,L2)
* modelNumber insert OblConsumer(#SHOULD:display,L2)
* identifier insert OblConsumer(#SHOULD:display,L2)
* note insert OblConsumer(#SHOULD:display,L2)
* manufacturer insert OblConsumer(#SHOULD:display,L2)
* udiCarrier insert OblConsumer(#SHOULD:display,L2)

// Creator Obligations L3 ============>
* type insert OblCreator(#SHALL:able-to-populate,L3)
* deviceName.name insert OblCreator(#SHALL:able-to-populate,L3)
* modelNumber insert OblCreator(#SHALL:able-to-populate,L3)
* identifier insert OblCreator(#SHALL:able-to-populate,L3)
* note insert OblCreator(#SHALL:able-to-populate,L3)
* manufacturer insert OblCreator(#SHALL:able-to-populate,L3)
* udiCarrier insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3 ===========>
* type insert OblConsumer(#SHALL:display,L3)
* deviceName.name insert OblConsumer(#SHALL:display,L3)
* modelNumber insert OblConsumer(#SHALL:display,L3)
* identifier insert OblConsumer(#SHALL:display,L3)
* note insert OblConsumer(#SHALL:display,L3)
* manufacturer insert OblConsumer(#SHALL:display,L3)
* udiCarrier insert OblConsumer(#SHALL:display,L3)