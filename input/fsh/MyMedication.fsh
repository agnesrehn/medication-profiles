Alias: $NLLMedication = http://electronichealth.se/fhir/StructureDefinition/NLLMedication


Profile: MyMedication
Parent: $NLLMedication
Id: my-MyMedication
Title: "My Medication"
Description: "A Profile based on NLLMedication describing the medication in medication orders, for example xxxx"

//ProductID: No changes

//medicationName: 
* extension[http://electronichealth.se/fhir/StructureDefinition/NLLArticleInfo].extension[productName].valueString

//medicationForm: No changes 

//strengthDesignation 
* ingredient.strength 1..1 MS

//ATCCode: No changes

//Substance Name 

//Substance Name 
* ingredient.item[x] only CodeableConcept
* ingredient.itemCodeableConcept MS
* ingredient.itemCodeableConcept from https://gematik.de/fhir/terminology/ValueSet/ti-substance-snomed-ct-vs (preferred)

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
1.ändra datatyp som inte redan finns färdig
3. valueset när jag inte ska länka till färdigt system? eller kan jag göra det ist?
*/

//Fråga: behöver jag ta bort fält från ursprungliga NLLMedication etc typ sätta 0..0?svar ja disutera i diskussiondelen
//Har lagt in eget id för NLLMedication.json och NLLMedicationSnapshopt.json
//Url:er???? måste ha en på varje extension : tobias återkommer
//ig publisher? fråga thomas 
//Strength??=ta bort strenth
//precisionOfPlaceOfAdministration i MyDosage: gör som nll (en xtension: Dosage.extension:nllSiteQualifier dock vet jag ej hur jag kopplar till kodverk så har endast lagt det som string
//administrationDuration i mydosage2: No changes   samma som number of times...??? fråga!!
//länken till snomedct i mitt valueset?
//Hur lägga till datetime i followup(medicationrequest)
//ska ta bort ält i medication: Hur referera till exteions, denna hittar inte pathen : Medication.extension:nllArticleAvailability.extension:onTheMarket
//Om det varit karidnalitet 1..1 och jag velat ta bort denna har det inte gått. 
//ta bort staryt datum och slut ocj lägg in det i peroid i medicationrequest ist. vad mena T? bilden är som jag gjort förut eller? Måste jag ocså göra det som MS?
////ev då ist dela upp det period (decimal) sen period max, period unit()*/