Logical: LogCzPSEn
Id: LogCzPSCzEn
Title: "A - Pacientský souhrn (CZ)"
Description: "Logický model pro Pacientský souhrn"

* header 1..1 LogHeaderPSCz "A.1 – PS Header" 
  """Patient Summary header – according to the Czech specification"""
* body 1..1 LogBodyPSCzEn "A.2 – Patient Summary Body" 
  """Main clinical sections of the patient summary"""
* presentationForm 1..* LogPresentedFormCz 
  "A.3 – Presentation form" 
  """Presentation form of the Patient Summary"""
