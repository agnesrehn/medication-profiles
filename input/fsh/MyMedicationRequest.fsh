Profile: MyMedicationRequest
Parent: MedicationRequest
Id: my-medicationrequest
Title: "My MedicationRequest"
Description: "A profile based on MedicationRequest for example a 10-day antibiotic treatment with the treatment goal to reduce infection markers."

//Start and end date
* dosageInstruction.timing.repeat.boundsPeriod.start MS
* dosageInstruction.timing.repeat.boundsPeriod.start 1..1

//mayBeSubstituted 
* substitution.allowed[x] only boolean 
* substitution.allowedBoolean MS

//Follow up + follow up time 
* extension contains FollowUpExtension named followUp 0..1

//Goal: See extension 
* extension contains goal-extension named treatmentGoal 0..1


//TreatmentReason: No changes
* reason 1..* MS

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

//Period : No changes 

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