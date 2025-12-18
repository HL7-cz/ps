Logical: LogCzPSEn
Id: LogCzPSCzEn
Title: "A – Patient Summary (CZ)"
Description: "Logical model for the Patient Summary"

* header 1..1 LogHeaderPSCzEn "A.1 – PS Header" 
  """Patient Summary header – according to the Czech specification"""
* body 1..1 LogBodyPSCzEn "A.2 – Patient Summary Body" 
  """Main clinical sections of the patient summary"""
* presentationForm 1..* LogPresentedFormCzEn 
  "A.3 – Presentation form" 
  """Presentation form of the Patient Summary"""
