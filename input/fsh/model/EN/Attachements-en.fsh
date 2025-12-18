Logical: LogCzAttachmentsEn
Id: LogAttachmentsCzEn
Title: "A.2.10 Attachments"
Description: """Logical model for attachments in the Patient Summary"""

* attachment 1..* Base "A.2.10.1 Attachment" """Any attachment selected by the user."""

  * type 1..1 CodeableConcept "A.2.10.1.1 Attachment type" """Defines the type of the attachment."""
  * format 1..1 CodeableConcept "A.2.10.1.2 Attachment format" """Defines the format of the attachment."""
  * title 0..1 string "A.2.10.1.3 Attachment title" """Title that further describes the attachment."""
  * description 0..1 string "A.2.10.1.4 Attachment description" """Additional description of the attachment."""
  * dateTime 1..1 dateTime "A.2.10.1.5 Attachment date and time" """Date and time when the attachment was created or captured."""
  * document 1..1 Attachment "A.2.10.1.6 Document" """Photograph, video recording, PDF from a medical device, or a reference/link."""



