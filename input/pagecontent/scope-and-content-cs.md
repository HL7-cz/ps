### Přehled

Pacientský souhrn (Patient Summary) představuje standardizovaný soubor klíčových zdravotních informací o pacientovi, které jsou nezbytné pro zajištění návaznosti a bezpečnosti poskytované péče. Obsahuje zejména základní údaje o pacientovi, jeho alergiích, diagnózách, medikaci, očkování a významných zdravotních stavech. Slouží k rychlému poskytnutí přehledu o zdravotním stavu pacienta při kontaktu s novým poskytovatelem zdravotních služeb, a to jak v rámci jednoho státu, tak i v přeshraničním kontextu.

### Dataset

Pacientský souhrn (Patient Summary) má dvě hlavní složky:

- Hlavička a
- tělo.

**Hlavička** obsahuje základní administrativní a identifikační údaje o pacientovi, poskytovatelích zdravotní péče a dalších klíčových účastnících péče o pacienta.

**Tělo** obsahuje základní klinické údaje pacienta.

<figure>
{% include PS-myslenkova_mapa.svg %}
</figure>

#### Hlavička dokumentu

Komponenta Hlavičky pacientského souhrnu poskytuje dokumentaci pro:

- Obsahuje důležité identifikační údaje, jako je _jméno_, _příjmení_, _datum narození_ a _identifikační číslo pacienta ve zdravotnictví_. Zahrnuje také _národnost_, _pohlaví_ a _zemi příslušnosti pacienta_.
- **Kontaktní údaje týkající se pacienta/subjektu:** Zahrnují _adresu pacienta_ a _telekomunikační kontaktní údaje_ (např. telefonní čísla a e-mailové adresy). Může také zahrnovat údaje o _preferovaném zdravotnickém pracovníkovi_ (jméno, identifikátor, role, organizace).
- **Informace o zdravotním pojištění a platbách:** Klíčové údaje týkající se zdravotního pojištění, včetně _kódu pojišťovny_, _jména zdravotní pojišťovny_ a _čísla zdravotní pojišťovny pacienta_.
- **Autor:** Dokumentuje _autora zprávy_, včetně jeho identifikátoru (např. čísla licence), jména a organizačních údajů. Autor je odpovědný za podepsání obsahu zprávy.
- **Ověřil:** zdravotnický pracovník, který ověřuje obsah zprávy. Obsahuje _identifikátor atestujícího_, _jméno_, _organizaci_ a _datum a čas atestace_.
- **Metadata dokumentu:** Obsahuje jedinečný _identifikátor_ dokumentu, _typ_ a metadata, jako je _datum a čas_ vytvoření nebo změny, která zajišťují správné sledování zprávy.

<figure>
{% include PS-myslenkova_mapa_hlavicka.svg %}
</figure>

#### Tělo

Součást těla pacientského souhrnu obsahuje:

- **Údaje poskytnuté pacientem:**
  - Dříve vyslovená přání: Právní dokumenty, jako jsou závěti nebo příkazy DNR ("Do Not Resuscitate"), kterými se řídí rozhodnutí o léčbě.
  - Cestovatelská anamnéza: Informace které země pacient navštívil.
- **Urgentní informace:** Důležitá lékařská upozornění, jako jsou alergie nebo jiné kritické stavy pacienta.
- **Informace o zdravotním stavu:**
  - Očkování: Seznam provedených očkování.
  - Historie zdravotních problémů
  - Obecná anamnéza: Shrnutí vývoje onemocnění nebo jiné doplňující narativní informace od pacienta
- **Zdravotní problémy:**
  - Aktuální zdravotní problémy
  - Výkony: Podstatné léčebné a diagnosticko-léčebné výkony, tedy nejen chirurgické (laparoskopické i otevřené operace), ale i další endoskopické výkony gastroenterologické, urologické, gynekologické, cévní a další. Hlavním kritériem pro zařazení je význam pro aktuální zdravotní stav i pro budoucí terapeutické i diagnostické procedury.
  - Zdravotní pomůcky a implantáty: Seznam implantovaných a externích zdravotnických prostředků, na kterých je pacient závislý nebo které významně ovlivňují nebo mohou ovlivnit jeho zdravotní stav
  - Funkční stav: Funkční stav lze hodnotit několika různými způsoby, obvykle se zaměřením na schopnosti osoby vykonávat základní aktivity každodenního života (ADL), které zahrnují základní sebeobsluhu, jako je koupání, krmení a toaleta a instrumentální aktivity každodenního života (IADL), které zahrnují činnosti jako vaření, nakupování a řízení vlastních záležitostí.
- **Souhrn medikace:** Seznam užívaných léčivých přípravků, výjimečně i doplňků stravy. Zahrnuje předepsané léky, jejichž léčebné období ještě neuplynulo, bez ohledu na vydání, léky ovlivňující současný zdravotní stav nebo důležité pro péči
- **Sociální anamnéza (Abuzus):** "Informace o pravidelném kouření (užívání tabáku), alkoholu a používání náhradních způsobů vč. údaje o množství a době expozice. Informace o užívání jiných návykových látek."
- **Historie těhotenství:** Informace o aktuálním těhotenství i historie předchozích těhotenství.
- **Výsledky:** Seznam výsledků vyšetření týkajících se zdravotního stavu pacienta s dopadem na budoucí léčbu

- **Plán péče:** Doporučení pro další péči.

<figure>
{% include PS-myslenkova_mapa_telo.svg %}
</figure>
