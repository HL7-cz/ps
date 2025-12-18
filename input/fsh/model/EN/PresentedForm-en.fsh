Logical: LogCzPresentedFormEn
Id: LogPresentedFormCzEn
Title: "A.3 - Presented form"
Description: "Presented form - Entire report as issued. Various formats could be provided, pdf format is recommended."

* presentedForm	 1..* Base "A.3 - Presented form" """Presented form of document"""
  * contentType 0..1 CodeableConcept "A.3.1 – Content type" """Content type – MIME type is required"""
  * language 0..1 CodeableConcept "A.3.2 – Content language" """Content language"""
  * data 1..1 base64Binary "A.3.3 – Content data" """Data encoded in base64"""
  * url 0..1 url "A.3.4 – Content URL" """URI where the data can be accessed"""
  * title 1..1 string "A.3.5 – Content title" """Title that will be displayed before the content"""
  * creationDate 0..1 dateTime "A.3.6 – Creation date" """Date when the content was first created"""