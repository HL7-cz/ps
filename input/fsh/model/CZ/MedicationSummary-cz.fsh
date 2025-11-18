Logical: LogCzMedicationSummaryCz
Id: LogMedicationSummaryCz
Title: "A.2.5 Souhrn medikace"
Description: "Logický model pro souhrn medikace v Pacientském souhrnu (Review)"

* medikace 0..* Base "A.2.5.1 Medikace" """Seznam užívaných léčivých přípravků, výjimečně i doplňků stravy. Zahrnuje předepsané léky, jejichž léčebné období ještě neuplynulo, bez ohledu na vydání, léky ovlivňující současný zdravotní stav nebo důležité pro péči"""
  * indikace 0..1 CodeableConcept "A.2.5.1.1 Indikace" """Důvod medikace. Důvod může být popsán textem případně odkazem na zdravotní důvod (zdravotní problém v seznamu problémů)."""
  * kodSUKL 1..1 CodeableConcept "A.2.5.1.2 Kód SUKL" """Kód léčiva dle databáze SÚKL"""
  * nazevLecivehoPripravku 1..1 string "A.2.5.1.3 Název léčivého přípravku" """Registrovaný název léčiva dle databáze léčivých přípravků."""
  * aktivniLatky 0..* CodeableConcept "A.2.5.1.4 Aktivní látky" """Seznam aktivních látek v léčivu odvozený od záznamu HVLP nebo IVLP přípravku v databázi SUKL (DLP). Aktivní látky jsou uváděny názvem a případně také kódem ATC či IDMP dle registru substancí SRS."""
  * sila 0..1 CodeableConcept "A.2.5.1.5 Síla" """Síla aktivní léčivé látky obsažené v léčivém přípravku. Síla se vyjadřuje ve vztahu k jednotce podání. Např. 500mg v tabletě."""
  * formaLeciva 0..1 CodeableConcept "A.2.5.1.6 Forma léčiva" """Léková forma obsažená v balení vyjádřená kódem. Např. Sirup, tableta apod."""
  * davkovani 0..* CodeableConcept "A.2.5.1.7 Dávkování" """Frekvence a počet jednotek podání volným textem nebo formalizovaně."""
  * cestaPodani 0..1 CodeableConcept "A.2.5.1.8 Cesta podání" """Cesta podání"""
  * obdobiPodavani 0..1 Period "A.2.5.1.9 Období podávání" """Časový interval kdy pacientovi byla, případně nebyla medikace podávána."""
  * doporucenaDobaPodavani 0..1 string "A.2.5.1.10 Doporučená doba podávání" """Pouze u části léčivých přípravků je doba podávání omezená, u mnoha se předpokládá dlouhodobé/trvalé podávání. U řady léčiv je naopak doba podávání striktně omezena"""
  * zamyslenePouziti 0..* Base "A.2.5.1.11 Zamýšlené použití" """Účel použití: prevence nebo léčba (profylaxe, léčba, diagnostika, anestezie, péče o pomůcky)""" //TODO: jaký datový typ?