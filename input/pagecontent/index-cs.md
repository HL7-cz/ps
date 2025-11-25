### Úvod

Tato implementační specifikace vychází ze standardu [HL7 FHIR ve verzi R4](https://hl7.org/fhir/R4/) a definuje jednotný rámec pro reprezentaci Pacientského souhrnu (PS) v českém národním kontextu. Specifikace stanovuje obsahové a strukturální komponenty dokumentu a zajišťuje jejich soulad s právními požadavky České republiky, zejména v oblasti vedení zdravotnické dokumentace, a s evropskými iniciativami podporujícími interoperabilitu elektronických zdravotních záznamů.

Hlavním cílem je vytvořit standardizovanou podobu Pacientského souhrnu jako klíčového dokumentu zdravotnické dokumentace pacienta, který shrnuje základní a dlouhodobě platné informace o jeho zdravotním stavu, diagnózách, alergiích, medikaci, rizicích a dalších skutečnostech významných pro zajištění návaznosti péče. Tento dokument je určen pro elektronickou výměnu mezi poskytovateli zdravotních služeb, pacientem a národní infrastrukturou eHealth, a to jak v rámci České republiky, tak v souladu s evropským rámcem pro výměnu zdravotních údajů.

Specifikace se zaměřuje výhradně na definici obsahu, struktury a datového modelu Pacientského souhrnu v prostředí HL7 FHIR. Technické aspekty přenosu dokumentu, autentizace, správy souhlasů a provozní procesy jednotlivých poskytovatelů zdravotních služeb nejsou předmětem této specifikace a jsou řešeny v navazujících standardech a metodických doporučeních.

### Rozsah

Tento dokument představuje koncepty českého použití definované prostřednictvím FHIR artefaktů, které lze strojově zpracovat. Jedná se o výsledky spolupráce, ve kterých byly dohodnuty přístupy k různým typům zdravotnických informací, vycházející ze základní specifikace FHIR R4.

Tato příručka je rozdělena do několika stránek, které jsou uvedeny v horní části každé stránky v nabídce:

- [Home](index.html): Tato stránka poskytuje úvod a rozsah této příručky.
- [Artifacts](artifacts.html): Tato stránka uvádí podrobné popisy a formální definice všech českých PS artefaktů a logického modelu definovaného v této příručce.

### Závislosti

{% include dependency-table.xhtml %}

### Analýza mezi verzemi

{% include cross-version-analysis.xhtml %}

### Prohlášení k právům duševního vlastnictví

{% include ip-statements.xhtml %}
