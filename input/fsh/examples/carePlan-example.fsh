Instance: cz-care-plan-example
InstanceOf: CZ_CarePlanPs
Usage: #example
Title: "Care Plan example"
Description: "An example Care Plan resource for testing purposes."
* id = "67697177-60fc-4395-bb59-78eaa3553d7c"
* status = #active
* intent = #plan
* title = "Příklad plánu péče"
* description = "Tento plán péče je vytvořen jako příklad pro testovací účely."
* subject = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)
* period.start = "2025-06-01"
* period.end = "2025-12-31"
* author = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)
* note[0].text = "Tento plán péče zahrnuje pravidelné kontroly a sledování zdravotního stavu pacienta."
