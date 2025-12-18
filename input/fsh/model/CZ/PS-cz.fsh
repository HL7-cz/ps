Logical: LogCzPSCz
Id: LogCzPSCz
Title: "A - Pacientský souhrn (CZ)"
Description: "Logický model pro Pacientský souhrn"

* hlavicka 1..1 LogHeaderPSCz "A.1 - Hlavička PS" """Hlavička Pacientského souhrnu – podle české specifikace"""
* telo 1..1 LogCzBodyPSCz "A.2 - Tělo pacientského souhrnu" """Hlavní klinické části pacientského souhrnu"""
* prezencniForma 1..* LogPresentedFormCz "A.3 - Prezenční forma" """Prezenční forma Pacientského souhrnu"""
