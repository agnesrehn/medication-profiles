Profile: MyDosage
Parent: MedicationRequest
Id: my-MyDosage
Title: "My Dosage"
Description: "A Profile based on MedicationRequest describing the dosage in medication orders, for example morphine administered at a rate of 2 mg/hour"

//medicationRate
* dosageInstruction.doseAndRate.rate[x] 0..1

//administrationDuration: no changes

//doseQuantity: No changes

//administrationDuration: No changes  

//when
* dosageInstruction.timing.repeat.when 0..1

//offset: No changes

//dosageInterval: No changes

//Delete from parent:
* priorPrescription 0..0
* statusReason 0..0
* statusChanged 0..0
* category 0..0 
* priority 0..0
* supportingInformation 0..0
* authoredOn 0..0 
* reported 0..0
* performerType 0..0
* performer 0..0
* device 0..0
* reason 0..0
* courseOfTherapyType 0..0
* insurance 0..0
* note 0..0
* effectiveDosePeriod 0..0
* dispenseRequest 0..0
* dispenseRequest.initialFill 0..0
* dispenseRequest.numberOfRepeatsAllowed 0..0
* dispenseRequest.quantity 0..0