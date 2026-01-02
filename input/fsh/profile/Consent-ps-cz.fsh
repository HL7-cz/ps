Profile: CZ_ConsentPs
Parent: Consent
Id: cz-consent-ps
Title: "Consent (CZ PS)"
Description: """This profile constrains the Consent resource for the purpose of representing Advance Directives in this project."""
* ^purpose = "This profile constrains the Consent resource to model Advance Directives, documenting a patient's future medical decisions."

// --- EPS-kompatibilní extensions ---
// Komentář k přání - EU note extension // A.2.1.1.3 
* extension contains $note named note 0..1
* extension[note] ^short = "Komentář k dříve vyslovenému přání (EU note extension)"


// --- Základní prvky ---
* patient 1..1 MS
  * ^short = "Pacient, kterého se dříve vyslovené přání týká"

* dateTime 1..1 MS
  * ^short = "Datum a čas vyjádřeného přání pacienta (A.2.1.1.1 / EPS living will date and time)"

* status 1..1 MS
* status = #active

// Scope
* scope 1..1 MS
* scope = $consentscope#adr
  * ^short = "Rozsah – advance directives (EPS adr)"

// Textový popis přání
* text 0..1
  * ^short = "Volný narativní popis dříve vysloveného přání"

// Typ přání – A.2.1.1.2 + EPS Living will type
* category 1..1 
  * ^binding.valueSet = "https://hl7.cz/fhir/hdr/ValueSet/cz-consent-category"
// Lékař, který pacienta poučil / sepsal přání
* performer 0..* MS
  * ^short = "Lékař, který pacienta poučil a/nebo sepsal dříve vyslovené přání dle §36 odst. 2"

// Právní rámec
* policyRule 0..1 MS
  * ^short = "Právní režim – §36 zákona 372/2011 Sb."

// // Vlastní přání
// * provision 1..1 MS
//   * ^short = "Vlastní obsah dříve vysloveného přání"

// // Souhlas / nesouhlas
// * provision.type 1..1 MS
//   * ^short = "Souhlas/nesouhlas s poskytováním zdravotních služeb"

// Dokument – A.2.1.1.5 + EPS Living will document
* sourceAttachment 1..1 MS
  * ^short = "Písemné dříve vyslovené přání – scan / elektronický dokument"
