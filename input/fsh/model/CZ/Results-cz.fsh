Logical: LogCzResultsCz
Id: LogResultsCz
Title: "A.2.8 Výsledky"
Description: """Logický model pro výsledky v Pacientském souhrnu


Seznam výsledků vyšetření týkajících se zdravotního stavu pacienta s dopadem na budoucí léčbu
"""

* datum 1..1 dateTime "A.2.8.1 Datum" """Datum a čas vyšetření"""
* typVysetreni 1..1 CodeableConcept "A.2.8.2 Typ vyšetření" """Typ výsledků vyšetření – měření, laboratorní výsledky, patologické nálezy, zobrazovací nebo jiné klinické nálezy (krevní skupina, laboratorní výsledky, zobrazovací vyšetření, vitální funkce)"""
* popis 0..1 string "A.2.8.3 Popis výsledku" """Narativní (slovní) popis výsledku a zjištění"""
* detailVysetreni 1..1 CodeableConcept "A.2.8.4 Detaily vyšetření" """Detailní informace včetně kódu vyšetření, tělesné struktury nebo vzorku, data a času odběru""" //TODO: co zvolit za strukturu, nebo ještě rozělit na položky?
* vysledkyVysetreni 0..1 CodeableConcept "A.2.8.5 Výsledky vyšetření" """Výsledek vyšetření – číselný nebo kódovaný, včetně způsobu měření, referenčních hodnot a interpretace""" //TODO: co zvolit za strukturu, nebo ještě rozělit na položky?
* provadejiciOsoba 0..* RelatedPerson "A.2.8.6 Provádějící osoba" """Identifikace původce/zpracovatele výsledku a jeho původ"""
* validatorInterpret 0..* RelatedPerson "A.2.8.7 Validátor / Interpret" """Osoba odpovědná za interpretaci nebo validaci výsledku, pokud je odlišná"""
* stavVysetreni 1..1 CodeableConcept "A.2.8.8 Stav vyšetření" """Stav vyšetření (zadáno, předběžné, finální, ...)"""
