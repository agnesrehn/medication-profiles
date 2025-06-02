Profile: MyDosageAdministration 
Parent: MedicationAdministration
Id: my-MyDosageAdministration
Title: "My DosageAdministration"
Description: "A Profile based on MedicationAdministration describing the administration of the dosage in medication orders, for example self-administred insulin injection using a prefilled pen in the abdomen"


//placeOfMedication: No changes

//precisionOfPlaceOfAdministration: gör som nll (en xtension: Dosage.extension:nllSiteQualifier
* extension contains SiteQualifier named SiteQualifier 0..1

//medicalTechnicalProuct:
* device 0..1

//selfAdminstered: Extension 
* extension contains self-administration named SelfAdministration 0..1

//administrationinstruction 
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