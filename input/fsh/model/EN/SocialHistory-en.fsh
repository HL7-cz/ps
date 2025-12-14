Logical: LogCzSocialHistoryEn
Id: LogSocialHistoryCzEn
Title: "A.2.6 Social History"
Description: """A.2.6 Social History - Logical model for social history in the Patient Summary."""

* substanceUse 0..1 Base "A.2.6.1 Substance use"
  """Information on regular tobacco use (smoking), alcohol consumption, and use of substitution methods,
  including data on quantity and duration of exposure. Information on the use of other addictive substances."""

  * alcoholUse 0..* Base "A.2.6.1.1 Alcohol" """Alcohol consumption."""
    * status 0..1 CodeableConcept "A.2.6.1.1.1 Status" """Current status."""
    * periodAndQuantity 0..* Base "A.2.6.1.1.2 Period and quantity" """Period of use and amount."""
    * comment 0..1 string "A.2.6.1.1.3 Comment" """Free-text comment."""

  * tobaccoUse 0..* Base "A.2.6.1.2 Tobacco use" """Tobacco smoking."""
    * status 0..1 CodeableConcept "A.2.6.1.2.1 Status" """Smoking status expressed as a code."""
    * periodAndQuantity 0..* Base "A.2.6.1.2.2 Period and quantity" """Period and average amount."""
    * comment 0..1 string "A.2.6.1.2.3 Comment" """Free-text comment."""

  * drugUse 0..* Base "A.2.6.1.3 Drugs" """Drug dependence."""
    * status 0..1 CodeableConcept "A.2.6.1.3.1 Status" """Current status of drug dependence."""
    * periodAndQuantity 0..* Base "A.2.6.1.3.2 Period and quantity" """Period and quantity / quantification of administered doses."""
    * substanceType 0..1 CodeableConcept "A.2.6.1.3.3 Substance type" """Type of substance used."""
    * routeOfAdministration 0..* CodeableConcept "A.2.6.1.3.4 Route of administration" """Route of substance administration."""
    * comment 0..1 string "A.2.6.1.3.5 Comment" """Free-text comment."""

  * otherAddictions 0..* CodeableConcept "A.2.6.1.4 Other addictions" """Type of other addiction expressed as free text or as a coded condition."""
