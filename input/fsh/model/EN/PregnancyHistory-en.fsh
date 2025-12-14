Logical: LogCzPregnancyHistoryEn
Id: LogPregnancyHistoryCzEn
Title: "A.2.7 Pregnancy History"
Description: """A.2.7 Pregnancy History - Logical model for pregnancy history in the Patient Summary."""

* currentPregnancy 0..1 Base "A.2.7.1 Current pregnancy"
  * recordDate 0..1 dateTime "A.2.7.1.1 Record date" """Date when the pregnancy status was recorded."""
  * status 1..1 CodeableConcept "A.2.7.1.2 Status" """Current pregnancy status of the woman on the given date (e.g., pregnant, not pregnant, unknown)."""
  * expectedDeliveryDate 0..1 date "A.2.7.1.3 Expected date of delivery" """Expected date of delivery."""
  * estimatedDueDateMethod 0..1 CodeableConcept "A.2.7.1.4 Method of estimating the due date"

* previousPregnanciesHistory 0..* Base "A.2.7.2 History of previous pregnancies"
  * status 0..1 CodeableConcept "A.2.7.2.1 Previous pregnancy status" """Indicates whether the woman has had previous pregnancies."""
  * description 0..1 Base "A.2.7.2.2 Description of previous pregnancies"
    * outcomeDate 0..1 date "A.2.7.2.2.1 Outcome date" """Date related to the pregnancy outcome."""
    * outcome 0..1 CodeableConcept "A.2.7.2.2.2 Outcome" """Outcome of the previous pregnancy."""
    * numberOfChildren 0..1 integer "A.2.7.2.2.3 Number of children" """Number of children/fetuses in the given pregnancy."""
