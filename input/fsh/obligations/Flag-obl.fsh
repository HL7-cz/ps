Profile: CZ_FlagObligationsPs
Parent: CZ_FlagPs
Id: cz-flag-obl-ps
Title: "Flag Obligations (PS CZ)"
Description: "This profile defines the obligations for the CZ_FlagPs profile used in the PS CZ project."

* insert SetFmmandStatusRule ( 0, informative)

// Creator Obligations L2 ============>
* code.text insert OblCreator(#SHOULD:able-to-populate,L2)
* code insert OblCreator(#SHOULD:populate-if-known,L2)
* author insert OblCreator(#SHOULD:populate-if-known,L2)
* text insert OblCreator(#SHOULD:able-to-populate,L2)
* extension[flagPriorityExt] insert OblCreator(#SHOULD:populate-if-known,L2)
* period insert OblCreator(#SHOULD:able-to-populate,L2)

// Consumer obligations L2
* code.text insert OblConsumer(#SHOULD:display,L2)
* code insert OblConsumer(#SHOULD:display,L2)
* author insert OblConsumer(#SHOULD:display,L2)
* text insert OblConsumer(#SHOULD:display,L2)
* extension[flagPriorityExt] insert OblConsumer(#SHOULD:display,L2)
* period insert OblConsumer(#SHOULD:display,L2)

// Creator Obligations L3 ============>
* code.text insert OblCreator(#SHALL:able-to-populate,L3)
* code insert OblCreator(#SHALL:populate-if-known,L3)
* author insert OblCreator(#SHALL:populate-if-known,L3)
* text insert OblCreator(#SHALL:able-to-populate,L3)
* extension[flagPriorityExt] insert OblCreator(#SHALL:populate-if-known,L3)
* period insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3
* code.text insert OblConsumer(#SHALL:display,L3)
* code insert OblConsumer(#SHALL:display,L3)
* author insert OblConsumer(#SHALL:display,L3)
* text insert OblConsumer(#SHALL:display,L3)
* extension[flagPriorityExt] insert OblConsumer(#SHALL:display,L3)
* period insert OblConsumer(#SHALL:display,L3)



