Alias: $SCT = https://www.snomed.org/what-is-snomed-ct
ValueSet: FollowUp
Id: FollowUpVs
Title: "Follow Up"
Description: "This is a valueset for Follow up"
//* https://www.snomed.org/what-is-snomed-ct
* $SCT#448337001 "telemedicinkonsultation med patient" 
* $SCT#390906007 "uppföljande kontakt"

Extension: FollowUpExtension
Id: FollowUpExtension.id
Title: "Follow Up"
Description: "This is an extension for follow up"
* value[x] only CodeableConcept
* value[x] from FollowUpVs

Profile: MyMedicationRequest
Parent: MedicationRequest
Id: my-medicationrequest
Title: "My MedicationRequest"
Description: "A profile based on MedicationRequest."

//Start and end date
* dosageInstruction.timing.repeat.boundsPeriod.start MS
* dosageInstruction.timing.repeat.boundsPeriod.start 1..1

//mayBeSubstituted 
* substitution.allowed[x] only boolean 
* substitution.allowedBoolean MS

//Follow up + follow up time - extension den klagar på sättet jag satt upp koderna. 

* extension contains FollowUpExtension.id named FollowUp 0..1


//Goal: See extension 
* extension contains goal-extension named treatmentGoal 0..1


//TreatmentReason: No changes

//Administrating time
* dosageInstruction.timing.event 1..1

//Number of times
* dosageInstruction.timing.repeat.frequency 0..1 

//Number of times max: No changes

//Period: No changes 

// PeriodUnit: No changes 

//Period max quantity: No changes

//Terms: No changes 

//Reason for terms: No changes

//treatmentSequence: No changes

//treatmentDuration: No changes

//treatmentInterval: No changes

//Period ???? samma som start date

//StartCondition: No changes

//text : No changes 

//maxDosePerPeriod
* dosageInstruction.maxDosePerPeriod 0..1

//Delete from parent

* priority 0..0
* doNotPerform 0..0
* category 0..0
* encounter 0..0
* authoredOn 0..0
* performer 0..0
* note 0..0
* device 0..0
* courseOfTherapyType 0..0
* insurance 0..0
* renderedDosageInstruction 0..0
* effectiveDosePeriod 0..0
* dispenseRequest 0..0


/*
obligatoriskt: status, intent, medication, suvject, substitution allowed
//Instance for MyMedicationRequest
Instance: exampleMyMedicationRequest
InstanceOf: MyMedicationRequest
Usage: #example
* status = #active
* intent = #order
* medicationCodeableConcept = { text = "Ibuprofen 400 mg tablet" }
* subject.reference = "Patient/example"
* authoredOn = "2025-04-23"
* dosageInstruction[0].text = "Take one tablet every 8 hours for pain relief"
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2025-04-23"
* dosageInstruction[0].timing.event[0] = "2025-04-23T08:00:00Z"
* dosageInstruction[0].timing.repeat.frequency = 3
* substitution.allowedBoolean = false
*/