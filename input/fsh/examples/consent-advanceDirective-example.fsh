Instance: cz-advance-directive-example
InstanceOf: CZ_ConsentPs
Usage: #example
Title: "Advance Directive example"
Description: "An example Advance Directive resource for testing purposes."
* id = "054899d6-4868-40cb-a9cc-a52f93e2d22f"

// Stav a scope – dříve vyslovené přání k poskytování ZS
* status = #active
* scope = $consentscope#adr "Advanced Care Directive"

// Typ přání – living will type (A.2.1.1.2 + EPS)
* category = $consentcategory#acd "Advance Directive"

// Volný narativní popis přání (není povinný, ale hodí se)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dříve vyslovené přání – nesouhlas s posmrtným dárcovstvím orgánů a tkání k transplantačním účelům.</div>"

// Pacient a datum vyjádření přání (A.2.1.1.1 Datum a čas)
* patient = Reference(urn:uuid:3c137453-0de8-4e1a-be72-9dc55f500d57)
* dateTime = "2024-06-15T10:30:00+02:00"

// Lékař, který pacienta poučil dle §36 odst. 2
* performer[0] = Reference(urn:uuid:f64bef19-c377-404a-bac2-23d2bbac8f3e)

// Odkaz na právní rámec (§36 ZZS)
* policyRule.coding[0].system = "https://mzcr.cz/pravni-predpisy"
* policyRule.coding[0].code = #ZZS-372-2011-§36
* policyRule.coding[0].display = "Dříve vyslovené přání dle §36 zákona č. 372/2011 Sb."

// // Vlastní přání
// * provision.type = #deny
// * provision.period.start = "2024-06-15T10:30:00+02:00"

// // Typ přání kódově – vztah k darování orgánů
// * provision.code[0].coding[0].system = "http://snomed.info/sct"
// * provision.code[0].coding[0].code = #182895007
// * provision.code[0].coding[0].display = "Finding related to organ donation (finding)"
// * provision.code[0].text = "Nesouhlas s posmrtným darováním orgánů a tkání k transplantačním účelům"

// Komentář k přání – EPS note extension (A.2.1.1.3)
* extension[note].valueAnnotation.text = "Pacient byl opakovaně poučen dle §36 odst. 2, přání bylo potvrzeno v přítomnosti svědků."

// Dokument s projeveným přáním (A.2.1.1.5 Dokument)
* sourceAttachment.contentType = #application/pdf
* sourceAttachment.url = "Binary/advance-directive-organ-donation"
* sourceAttachment.title = "Dříve vyslovené přání – nesouhlas s dárcovstvím orgánů a tkání"
* sourceAttachment.creation = "2024-06-15T10:30:00+02:00"