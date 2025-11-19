<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<blockquote class="stu-note">
<b>Informative for this version of the guide</b>
<p>The obligations have been added to this version of the guide only as informative material to gather feedback on their use.</p>
</blockquote>
</div>

### Overview

Obligations are a mean offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD or SHALL to the data elements specified by the profiles.

We define three basic levels of compliance with the standard:

- L1 – unstructured document – ​​transmitted as necessary document metadata and a human-readable document in PDF format
- L2 – structured document divided into identifiable sections (entry examination, medical history, risk factors, medication, recommendations, …), the content is still kept only in textual non-formalized form
- L3 – The document is structured into identifiable sections (same as in L2), some information can be kept in formalized form, selected information will be kept in formalized and coded form

This page describes also the actors that have been defined for specifying the obligations.

### Actors

{% include fsh-link-references.md %}

Actors were specified in these roles:

| Role                                                                                                    | Description                                                                                                                        |
| ------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| the [Level 1 Creator](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L1.html)   | This is a L1 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 1 Consumer](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L1.html) | This L1 actor represents the system that uses the received or retrieved report.                                                    |
| the [Level 2 Creator](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L2.html)   | This is a L2 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 2 Consumer](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L2.html) | This L2 actor represents the system that uses the received or retrieved report.                                                    |
| the [Level 3 Creator](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L3.html)   | This is a L3 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 3 Consumer](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L3.html) | This L3 actor represents the system that uses the received or retrieved report.                                                    |

<!-- {% include fsh-link-references.md %}

Byli specifikováni aktéři ve těchto rolích:

| Role                                                              | Popis                                                                                                                                  |
| ----------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| [Tvůrce úrovně L1](ActorDefinition-actor-creator-hdr-L1.html)     | Jedná se o aktéra úrovně L1, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L1](ActorDefinition-actor-consumer-hdr-L1.html) | Tento aktér představuje systém úrovně L1, který přijatou nebo načtenou zprávu používá.                                                 |
|                                                                   |
| [Tvůrce úrovně L2](ActorDefinition-actor-creator-hdr-L2.html)     | Jedná se o aktéra úrovně L2, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L2](ActorDefinition-actor-consumer-hdr-L2.html) | Tento aktér představuje systém úrovně L2, který přijatou nebo načtenou zprávu používá.                                                 |
|                                                                   |
| [Tvůrce úrovně L3](ActorDefinition-actor-creator-hdr-L3.html)     | Jedná se o aktéra úrovně L3, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L3](ActorDefinition-actor-consumer-hdr-L3.html) | Tento aktér představuje systém úrovně L3, který přijatou nebo načtenou zprávu používá.                                                 | -->

### Obligations List

1. Obligations for profile ([]())
