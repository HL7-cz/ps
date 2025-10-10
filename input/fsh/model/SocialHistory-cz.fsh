Logical: LogCzSocialHistoryCz
Id: LogSocialHistoryCz
Title: "A.2.6 Sociální anamnéza"
Description: """Logický model pro sociální anamnézu v Pacientském souhrnu (Review)"""

* abusus 0..1 Base "A.2.6.1	Abusus" """Informace o pravidelném kouření (užívání tabáku), alkoholu a používání náhradních způsobů vč. údaje o množství a době expozice. Informace o užívání jiných návykových látek."""
  * alkohol 0..* Base "A.2.6.1.1 Alkohol" """Konzumace alkoholu"""
    * stav 0..1 CodeableConcept "A.2.6.1.1.1 Stav" """Aktuální stav"""
    * obdobiAMnozstvi 0..* Base "A.2.6.1.1.2 Období a množství" """Období a množství""" //TODO: upřesnit datový typ, případně rozdělit na více elementů
    * komentar 0..1 string "A.2.6.1.1.3 Komentář" """Komentář volným textem."""
  * koureni 0..* Base "A.2.6.1.2 Kouření" """Kouření"""
    * stav 0..1 CodeableConcept "A.2.6.1.2.1 Stav" """Stav kouření kódem"""
    * obdobiAMnozstvi 0..* Base "A.2.6.1.2.2 Období a množství" """Období a průměrné množství."""
    * komentar 0..1 string "A.2.6.1.2.3	Komentář" """Komentář volným textem."""
  * drogy 0..* Base "A.2.6.1.3 Drogy" """Drogová závislost"""
    * stav 0..1 CodeableConcept "A.2.6.1.3.1 Stav" """Aktuální stav drogové závislosti"""
    * obdobiAMnozstvi 0..* Base "A.2.6.1.3.2 Období a množství" """Období a množství/kvantifikace aplikovaných dávek"""
    * typLatky 0..1 CodeableConcept "A.2.6.1.3.3 Typ látky" """Typ užívané látky"""
    * zpusobPodavani 0..* CodeableConcept "A.2.6.1.3.4 Způsob podávání" """Způsob administrace látky"""
    * komentar 0..1 string "A.2.6.1.3.5 Komentář" """Komentář volným textem."""
  * zavislosti 0..* Base "A.2.6.1.4 Závislosti" """Typ jiné závislosti vyjádřený volným textem nebo kódem onemocnění."""
