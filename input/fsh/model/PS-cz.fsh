Logical: LogCzPSCz
Id: LogCzPSCz
Title: "A - Pacientský souhrn (CZ)"
Description: "Logický model pro Pacientský souhrn (Česká republika)"

* hlavicka 1..1 LogHeaderPSCz "A.1 - Hlavička PS" """Hlavička Pacientského souhrnu – podle české specifikace"""
* telo 1..1 Base "A.2 - Tělo pacientského souhrnu" """Hlavní klinické části pacientského souhrnu"""
  * udajePoskytnutePacientem 0..1 LogPatientProvidedDataCz "A.2.1 - Údaje poskytnuté pacientem" """Údaje poskytnuté pacientem"""
  * urgentniInformace 1..1 LogAlertsCz "A.2.2 Urgentní informace" """Závažné alergie, interakce nebo jiná rizika."""
  * informaceOZdravotnimStavu 0..1 LogHealthStatusInfoCz "A.2.3 - Informace o zdravotním stavu" """Informace o zdravotním stavu"""
  * zdravotniProblemy 0..* LogHealthIssuesCz "A.2.4 Zdravotní problémy" """Zdravotní problémy"""
  * souhrnMedikace 0..1 LogMedicationSummaryCz "A.2.5 Souhrn medikace" """Souhrn medikace"""
  * socialniAnamneza 0..1 LogSocialHistoryCz "A.2.6 Sociální anamnéza" """Sociální anamnéza"""
  * historieTehotenstvi 0..1 LogPregnancyHistoryCz "A.2.7 Historie těhotenství" """Historie těhotenství"""
  * vysledky 0..* LogResultsCz "A.2.8 Výsledky" """Výsledky"""
  * planPece 0..1 LogCarePlanCz "A.2.9 Plán péče" """Plán péče"""
  * prilohy 0..1 LogAttachmentsCz "A.2.10 Přílohy PS" """Přílohy PS"""
