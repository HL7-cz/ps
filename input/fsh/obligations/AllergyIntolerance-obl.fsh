Profile: CZ_AllergyIntoleranceObligationsPs
Parent: CZ_AllergyIntolerancePs
Id: cz-allergyintolerance-obl-ps
Title:    "Allergy Intolerance Obligations (PS CZ)"
Description: "This profile defines the obligations for the CZ_AllergyIntolerancePs profile used in the PS CZ project."

// Creator Obligations L3 ============>
* text insert OblCreator(#SHALL:able-to-populate,L3)
* code insert OblCreator(#SHALL:able-to-populate,L3)
* type insert OblCreator(#SHALL:populate-if-known,L3)
* reaction.manifestation insert OblCreator(#SHALL:populate-if-known,L3)
* criticality insert OblCreator(#SHALL:populate-if-known,L3)
* onset[x] insert OblCreator(#SHALL:populate-if-known,L3)
* clinicalStatus insert OblCreator(#SHALL:able-to-populate,L3)
* verificationStatus insert OblCreator(#SHALL:populate-if-known,L3)
* lastOccurrence insert OblCreator(#SHOULD:populate-if-known,L3)

// Consumer obligations L3
* text insert OblConsumer(#SHALL:display,L3)
* code insert OblConsumer(#SHALL:display,L3)
* type insert OblConsumer(#SHALL:display,L3)
* reaction.manifestation insert OblConsumer(#SHALL:display,L3)
* criticality insert OblConsumer(#SHALL:display,L3)
* onset[x] insert OblConsumer(#SHALL:display,L3)
* clinicalStatus insert OblConsumer(#SHALL:display,L3)
* verificationStatus insert OblConsumer(#SHALL:display,L3)
* lastOccurrence insert OblConsumer(#SHOULD:display,L3)