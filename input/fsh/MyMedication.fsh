Alias: $NLLMedication = http://electronichealth.se/fhir/StructureDefinition/NLLMedication


Profile: MyMedication
Parent: $NLLMedication
Id: my-MyMedication
Title: "My Medication"
Description: "A Profile based on NLLMedication describing the medication in medication orders, for example Ibuprofen 400 mg tablet"

//ProductID: No changes

//medicationName: 
* extension[http://electronichealth.se/fhir/StructureDefinition/NLLArticleInfo].extension[productName].valueString

//medicationForm: No changes 

//strengthDesignation: No changes


//ATCCode: No changes

//Substance Name 

//Substance Name 
* ingredient.item[x] MS
* ingredient.item[x] from https://gematik.de/fhir/terminology/ValueSet/ti-substance-snomed-ct-vs (preferred)

//Delete from parent (not done) 

* status 0..0
* manufacturer 0..0
* amount 0..0
* batch 0..0

// Instance for example: Ibuprofen 400 mg
Instance: exampleIbuprofen400mg
InstanceOf: $NLLMedication
Usage: #Example
* identifier[0].system = "http://example.org/fake-medication-system"
* identifier[0].value = "ibu400" //example identifier
* ingredient[0].itemCodeableConcept.text = "Ibuprofen"
* ingredient[0].strength.numerator.value = 400
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "tablet"






/*/Frågelådan 

//Har lagt in eget id för NLLMedication.json och NLLMedicationSnapshopt.json
//länken till snomedct i mitt valueset?
//ska ta bort fält i medication: Hur referera till exteions, denna hittar inte pathen : Medication.extension:nllArticleAvailability.extension:onTheMarket
//ta bort staryt datum och slut ocj lägg in det i peroid i medicationrequest ist. vad mena T? bilden är som jag gjort förut eller? Måste jag ocså göra det som MS?
////ev då ist dela upp det period (decimal) sen period max, period unit()*/