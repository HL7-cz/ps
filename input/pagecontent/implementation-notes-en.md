On the following page you will find implementation notes for the Patient Summary. These notes relate to the creation of the composition and the population of this profile with the appropriate data.

## Logical Model

**Purpose:** A clinically understandable description of the document content that serves as the basis for technical mapping and validation.
**Languages:** CZ (for readability), EN (authoritative for mapping and profiles).

Each element includes:

- Element identifier (for mapping)
- Name (CZ/EN) and description
- Data type / value characteristics

> Note: The EN version of the logical model is authoritative for mapping and FHIR profiles.

## Mapping (Logical Model → FHIR)

### Purpose

Mapping defines the relationships between logical model elements (e.g., eHN Hospital Discharge Report) and the corresponding FHIR elements in the Czech implementation specification (e.g., HDR CZ).
Its purpose is to unambiguously determine where individual logical model items are recorded within the FHIR structure (`Composition`, `Bundle`, `Section` etc.).

### Mapping Principles

- Each logical model element must be mapped to a specific FHIR element or a group of elements.
- If no direct mapping exists, an `Extension`Extnsion or an explanatory comment must be provided.
- Mapping is based on the eHN HDR structure (A.1 – Header, A.2 – Body) and is further elaborated into sections and subsections.
- Each row of the mapping table must contain either a populated **Target Code** column or a note describing the applied approach.
- The relationship is expressed using the **Relationship** column, typically as is `is related to`.

## FHIR Profiles

**Purpose:** Refine the use of FHIR resources in the Czech context (restricting optionality, harmonizing practice) and supplement terminology bindings.

### Profile Structure

- Base resource (např. `Composition`, `Patient`, `Encounter`, …)
- Cardinalities (např. `Composition.author 1..1`, `section 1..*`)
- Relationships between profiles (např. `Composition.section` → `Condition`)
- References to the applied terminologies (ValueSet, CodeSystem, Binding strength)

### Cardinality

- **Mandatory:** `1..1`
- **Optional:** `0..1`
- **Repeatable:** `0..*` / `1..*`
  > National profiles may be **přísnější** than European ones.

### Terminology Bindings

Each profile uses mandatory or recommended code systems:

- **required** – must be taken from the given ValueSet,
- **extensible** – primarily from the ValueSet, extensions allowed if needed,
- **preferred** – recommended ValueSet, but not mandatory.

> Examples: `Composition.type` – LOINC `34105-7`, `Condition.code` – ICD-10/SNOMED CT, `Observation.unit` – UCUM.

## Obligations

> **Informative for this version of the guide**  
> In this version of the guide, obligations have been added only as informative material to collect feedback on their use.

### Overview and Terminology

Obligations (**Obligations**) specify the capabilities and behaviors that defined actors **MAY**, **SHOULD**or **SHALL** implement within the given FHIR profiles.
Obligations complement cardinalities and terminology bindings wherever structure alone is insufficient (e.g., requirements for user functions, workflow, or mandatory display of selected items).

### Conformance Levels (L1–L3)

- **L1** – _unstructured document_: mandatory document metadata + human-readable PDF output.
- **L2** – _structured sections_: document divided into identifiable sections; content is predominantly narrative.
- **L3** – \_structured + coded: same sections as L2; selected information SHALL be provided in a formalized and coded form.

### Actors

- **L1 Creator** – creates an L1 document (sending to a consumer / storing in a repository).
- **L1 Consumer** – receives/loads and uses an L1 document.
- **L2 Creator** – creates an L2 document (sections, narrative).
- **L2 Consumer** – processes an L2 document.
- **L3 Creator** – creates an L3 document (formalized + coded elements).
- **L3 Consumer** – processes an L3 document including formalized/coded elements.

### Types of Obligations

- **Creator obligations** – obligations related to document **creation** (system/UX behavior).
  - Example: The creator **SHALL** enable selection and storage of the author/attester of the discharge report.
- **Consumer obligations** – obligations related to **display** in viewers/consumers.
  - Example: The consumer **SHALL** display Composition.title, Composition.date, and Composition.author; the document language MAY be omitted from display.

### Relationship to Profiles and Testing

Each obligation is linked to a specific profile or group of profiles that it complements.
Obligations are applied in validation test scenarios—for example, when verifying correct section rendering or the existence of mandatory functions during document creation.

## Example

**Purpose:**  
Examples serve as a reference implementation demonstrating what fully valid outputs should look like for individual profiles and data maturity levels (L1–L3).
They are not merely sample `Bundle`, but a complete set of mutually linked FHIR resources representing a real clinical document, including all required references.

### Content and Structure of Examples

Each example:

- corresponds to a specific profile (e.g.,`CZ_CompositionPs`, `CZ_ConditionPs`, `CZ_PatientCore`),
- reflects profile cardinalities and obligations,
- uses the appropriate code systems and terminology bindings (LOINC, SNOMED CT, ICD-10, UCUM),
- is valid against the profiles defined in the implementation guide.

### Data Structure Maturity Levels

| Level  | Example Content | Structure                                            | Usage                                     |
| ------ | --------------- | ---------------------------------------------------- | ----------------------------------------- |
| **L1** | PDF + metadata  | `Composition`, `DocumentReference`                   | Minimal interoperability interoperabilita |
| **L2** | Sections + text | `Composition.section`                                | Structured narrative narativ              |
| **L3** | Coded entries   | `Composition.section` + `Condition`, `Medication`, … | Machine interoperability interoperabilita |

### Typical Resource Set for a Discharge Report Example

- `Composition` – document header and sections
- `Patient` – patient identification
- `Condition` – diagnoses (including the principal diagnosis)
- `Procedure` – significant procedures and interventions
- `MedicationStatement` – treatment information
- `AllergyIntolerance` – allergies and intolerances
- `Observation` – key findings, results, physiological measurements
- `DocumentReference` – embedded PDF/narrative rendition

Other related resources as required by the profile (e.g., Consent, Organization, PractitionerRole)

### Purpose of Examples

Examples are intended to support:

- **implementers** as reference models of valid instances for testing,
- **creators and consumers** (L1–L3) as illustrations of the expected data scope,
- **test scenarios** as a basis for automated validation against profiles and obligations.

### Example Validation

Each example must be valid against the corresponding profile (`StructureDefinition`) and must contain correctly resolved references between resources.
Validation can be performed using the **FHIR Validator**, IG Publisher, or another validation framework.

> It is recommended to include validation in the test pipeline (e.g., CI/CD) as a compliance check against profiles.
