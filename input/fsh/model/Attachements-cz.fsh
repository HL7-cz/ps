Logical: LogCzAttachmentsCz
Id: LogAttachmentsCz
Title: "A.2.10 Přílohy"
Description: """Logický model pro přílohy v Pacientském souhrnu (Review)

Jedna příloha nebo kolekce příloh
"""

*  priloha 1..* Base "A.2.10.1 Příloha" """Libovolná příloha vybraná uživatelem"""
  * typPrilohy 1..1 CodeableConcept "A.2.10.1.1 Typ přílohy" """Definuje typ přílohy"""
  * formatPrilohy 1..1 CodeableConcept "A.2.10.1.2 Formát přílohy" """Definuje formát přílohy"""
  * nazevPrilohy 0..1 string "A.2.10.1.3 Název přílohy" """Název, který blíže popisuje přílohu"""
  * popisPrilohy 0..1 string "A.2.10.1.4 Popis přílohy" """Doplňující popis přílohy"""
  * datumCasPrilohy 1..1 dateTime "A.2.10.1.5 Datum a čas přílohy" """Datum a čas pořízení přílohy"""
  * dokument 1..1 Attachment "A.2.10.1.6 Dokument" """Fotografie, videozáznam, PDF z přístroje, odkaz"""


