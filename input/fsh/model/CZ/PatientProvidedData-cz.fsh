Logical: LogCzPatientProvidedDataCz
Id: LogPatientProvidedDataCz
Title: "A.2.1 Údaje poskytnuté pacientem"
Description: "Logický model pro údaje poskytnuté pacientem v Pacientském souhrnu"

* udajePoskytnutePacientem 0..1 Base "A.2.1 Údaje poskytnuté pacientem" """Údaje poskytnuté pacientem"""
  * driveVyslovenaPrani 0..1 Base  "A.2.1.1 - Dříve vyslovená přání" """Dříve vyslovená přání"""
    * datumCas 1..1 dateTime "A.2.1.1.1 - Datum a čas" """Datum a čas vyjádřeného přání pacienta"""
    * typPrani 1..1 CodeableConcept "A.2.1.1.2 - Typ přání" """Typ přání pacienta"""
    * komentar 0..1 string "A.2.1.1.3 - Komentář" """Komentář k projevenému přání pacienta"""
    * dotcenyStav 0..1 CodeableConcept "A.2.1.1.4 - Dotčený stav" """Stav na který se přání vztahuje. Přání může být vztaženo pouze k určitému zdravotnímu problému či množině problémů."""
    * dokument 1..1 Attachment "A.2.1.1.5 - Dokument" """Fotokopie dokumentu či elektronický dokument s projeveným přáním pacienta mající náležitosti požadované zákonem"""
  * cestovatelskaAnameza 0..1 Base "A.2.1.2 - Cestovatelská anamnéza" """Cestovatelská anamnéza"""
    * zeme 1..* CodeableConcept "A.2.1.2.1 - Země" """Země, kde pacient pobýval"""
    * obdobi 0..1 Period "A.2.1.2.2 - Období" """Období pobytu v dané zemi"""
    * komentar 0..1 string "A.2.1.2.3 - Komentář" """Komentář k pobytu v dané zemi"""