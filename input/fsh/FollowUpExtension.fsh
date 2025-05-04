Extension: FollowUpExtension
Id: followup-extension
Title: "Follow Up"
Description: "An extension to represent the type and timing of follow-up."
Context: MedicationRequest
* extension contains
    type 1..1 and
    timing 0..1

* extension[type].valueCodeableConcept from FollowUpVs (required)
* extension[timing].valueDateTime