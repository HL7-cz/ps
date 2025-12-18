<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"> 
<blockquote class="stu-note"> 
<b>Informativní pro tuto verzi průvodce</b> 
<p>Do této verze příručky byly přidány povinnosti pouze jako informativní materiál ke shromažďování zpětné vazby o jejich používání.</p> 
</blockquote>
</div>

### Přehled

Závazná pravidla (Obligations) jsou prostředkem, kterým se v HL7 FHIR specifikuje schopnosti, které definovaní aktéři MOHOU (MAY), MĚLI BY (SHOULD) nebo MUSÍ (SHALL) mít implementovány specifikovanými profily.

Definujeme tři základní úrovně plnění standardu:

- L1 – nestrukturovaný dokument – předáváno jako nezbytná metadata dokumentu a lidsky čitelný dokument v PDF formátu
- L2 – strukturovaný dokument rozdělený do identifikovatelných sekcí (vstupní vyšetření, anamnéza, rizikové faktory, medikace, doporučení, …), obsah je stále veden pouze v textové neformalizované formě
- L3 – Dokument je strukturovaný do identifikovatelných sekcí (stejných jako v L2), některé informace lze vést ve formalizované podobě, vybrané informace budou povinně vedeny ve formalizované a kódované formě

Tato stránka také popisuje aktéry, kteří byli definováni pro specifikaci závazných pravidel.

### Aktéři

{% include fsh-link-references.md %}

Byli specifikováni aktéři ve těchto rolích:

| Role                                                                                                   | Popis                                                                                                                                  |
| ------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------- |
| [Tvůrce úrovně L1](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L1.html)     | Jedná se o aktéra úrovně L1, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L1](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L1.html) | Tento aktér představuje systém úrovně L1, který přijatou nebo načtenou zprávu používá.                                                 |
|                                                                                                        |
| [Tvůrce úrovně L2](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L2.html)     | Jedná se o aktéra úrovně L2, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L2](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L2.html) | Tento aktér představuje systém úrovně L2, který přijatou nebo načtenou zprávu používá.                                                 |
|                                                                                                        |
| [Tvůrce úrovně L3](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L3.html)     | Jedná se o aktéra úrovně L3, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L3](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L3.html) | Tento aktér představuje systém úrovně L3, který přijatou nebo načtenou zprávu používá.                                                 |

<!-- ### Seznam povinností

1. Povinnosti pro objekt pacienta ([]()) -->
