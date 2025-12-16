Logical: LogCzCarePlanCz
Id: LogCarePlanCz
Title: "A.2.9 Plán péče"
Description: """Logický model pro plán péče v Pacientském souhrnu

Doporučení pro další péči
"""
* planPece 0..* Base "A.2.9.1 Plán péče" """Plán péče"""
  * nazev 0..1 string "A.2.9.1.1 Název" """	Název plánu péče, např. "Plán péče po endoprotéze kyčelního kloubu"."""
  * resi 0..* Condition "A.2.9.1.2 Řeší" """Onemocnění či stavy, na které se plán vztahuje."""
  * popisDoporuceni 0..1 string "A.2.9.1.3 Popis doporučení" """Popis typu a povahy plánu péče"""
  * obdobi 0..1 Period "A.2.9.1.4 Období" """Období, ve kterém by měl být plán péče realizován."""
  * dalsiPodrobnostiPlanu 0..* Base "A.2.9.1.5 Další podrobnosti plánu" """Další strukturované informace popisující cíle plánu, složení terapeutického týmu apod."""
  * planPece 0..1 string "A.2.9.1.6 Plán péče" """Narativní popis plánu péče, včetně návrhů, cílů a požadavků na sledování nebo zlepšení stavu"""
