Profile: MyDosage
Parent: MedicationAdministration
Id: my-MyDosage
Title: "My Dosage"
Description: "A Profile based on MedicationAdministration describing the dosage in medication orders, for example xxxx"


//placeOfMedication: No changes

//precisionOfPlaceOfAdministration: gör som nll (en xtension: Dosage.extension:nllSiteQualifier
* extension contains SiteQualifier named SiteQualifier 0..1

//medicalTechnicalProuct:
* device 0..1

//selfAdminstered: Extension 
* extension contains self-administration named SelfAdministration 0..1

//administrationinstruction ev extension???
* note 0..1

//administrationroute: No changes

//adminstrationMethod: No changes

//Delete from Parent
* category 0..0
* statusReason 0..0
* encounter 0..0 
* supportingInformation 0..0
* recorded 0..0 
* reason 0..0


//NY PARENT --> MyDosage2

/*
Obligatoriska: status, medication, subject, occurence[x],actor
Instance: exampleMyDosage
InstanceOf: MyDosage
Usage: #Example
* medication.reference = "Medication/example"
* subject.reference = "Patient/example-patient"
* occurrenceDateTime = "2025-04-28T10:00:00+00:00"
* extension[SelfAdministration].valueBoolean = false
* note[0].text = "5 mg Every 4 hours for pain relief"
*/