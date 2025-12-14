Logical: LogCzPregnancyHistoryCz
Id: LogPregnancyHistoryCz
Title: "A.2.7 Těhotenská anamnéza"
Description: "Logický model pro těhotenskou anamnézu v Pacientském souhrnu"

* aktualniTehotenstvi 0..1 Base "A.2.7.1 Aktuální těhotenství"
  * datumZapisu 0..1 dateTime "A.2.7.1.1 Datum zápisu" """Datum, kdy byl stav těhotenství zaznamenán"""
  * stav 1..1 CodeableConcept "A.2.7.1.2 Stav" """Aktuální stav ženy v daný den (např. těhotná, netěhotná, neznámé)"""
  * ocekavaneDatumPorodu 0..1 date "A.2.7.1.3 Očekávané datum porodu" """Datum očekávaného porodu"""
  * kodZpusobuStanoveniTerminuPorodu 0..1 CodeableConcept "A.2.7.1.4 Kód způsobu stanovení termínu porodu"
* historiePredchozichTehotenstvi 0..* Base "A.2.7.2 Historie předchozích těhotenství"
  * stavPredchozichTehotenstvi 0..1 CodeableConcept "A.2.7.2.1 Stav předchozích těhotenství" """Zda žena již měla předchozí těhotenství"""
  * popisPredchozichTehotenstvi 0..1 Base "A.2.7.2.2 Popis předchozích těhotenství"
    * datumVysledku 0..1 date "A.2.7.2.2.1 Datum výsledku" """Datum související s výsledkem těhotenství"""
    * vysledek 0..1 CodeableConcept "A.2.7.2.2.2 Výsledek" """Výsledek předchozího těhotenství"""
    * pocetDeti 0..1 integer "A.2.7.2.2.3 Počet dětí" """Počet dětí/plodů v daném těhotenství"""
