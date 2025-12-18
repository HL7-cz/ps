Logical: LogCzPresentedFormCz
Id: LogPresentedFormCz
Title: "A.3 - Prezenční forma"
Description: "Logický model pro Prezenční formu Pacientského souhrnu"
* prezencniForma 1..* Base "A.3 - Prezenční forma" """Prezenční forma dokumentu"""
  * typObsahu 0..1 CodeableConcept "A.3.1 - Typ obsahu" """Typ obsahu"""
  * jazyk 0..1 CodeableConcept "A.3.2 - Jazyk obsahu" """Jazyk obsahu"""
  * data 1..1 base64Binary "A.3.3 - Data obsahu" """Data v base64"""
  * url 0..1 url "A.3.4 - URL obsahu" """Uri kde lze data nalézt"""
  * nazev 1..1 string "A.3.5 - Název obsahu" """Titulek, který bude zobrazen před daty"""
  * vytvoreni 0..1 dateTime "A.3.6 - Datum vytvoření" """Datum, kdy byl obsah poprvé vytvořen"""