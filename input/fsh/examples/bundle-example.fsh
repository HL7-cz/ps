Instance: cz-example-bundle
InstanceOf: CZ_BundlePs
Usage: #example
Title: "Bundle example for Patient Summary L1"
Description: "An example bundle containing a Patient resource for testing purposes."
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:0be8f7b6-49e4-4201-a952-e82372d99fa5"
* type = #document
* timestamp = "2024-01-01T12:00:00Z"

* entry[composition].fullUrl = "urn:uuid:61e87aa9-960a-4a33-a368-2abce592cafc"
* entry[composition].resource = cz-example-composition

Instance: cz-example-composition
InstanceOf: CZ_CompositionPs
Usage: #example
Title: "Composition example for Patient Summary L1"
Description: "An example Composition resource for testing purposes."
* status = #final
* type = $loinc#60591-5 "Patient summary document"
* author = Reference(urn:uuid:practitioner-1) //TOTO příklad practitioner - autor
* subject = Reference(8f0aa33d-e0bf-4a0e-97e0-12a27087a89f)
* title = "PS L1 pacienta Nováka"
* date = "2024-01-01T12:00:00Z"

