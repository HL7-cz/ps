
Logical: LogCzCarePlanEn
Id: LogCarePlanCzEn
Title: "A.2.9 Care Plan"
Description: """A.2.9 Care Plan - Logical model for care plan in the Patient Summary"""

* carePlan 0..* Base "A.2.9.1 Care plan" """Care plan."""
  * title 0..1 string "A.2.9.1.1 Title" """Name of the care plan, e.g. \"Care plan after hip joint endoprosthesis\"."""
  * addresses 0..* CodeableConcept "A.2.9.1.2 Addresses" """Conditions or health states to which the care plan applies."""
  * recommendationDescription 0..1 string "A.2.9.1.3 Recommendation description" """Description of the type and nature of the care plan."""
  * period 0..1 Period "A.2.9.1.4 Period" """Period during which the care plan should be carried out."""
  * additionalPlanDetails 0..* Base "A.2.9.1.5 Additional plan details" """Additional structured information describing plan goals, composition of the care team, etc."""
  * carePlanText 0..1 string "A.2.9.1.6 Care plan" """Narrative description of the care plan, including proposals, goals, and requirements for monitoring or improving the condition."""
