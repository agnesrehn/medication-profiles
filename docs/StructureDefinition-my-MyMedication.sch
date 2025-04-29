<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile NLLMedication
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Medication</sch:title>
    <sch:rule context="f:Medication">
      <sch:assert test="count(f:extension[@url = 'http://electronichealth.se/fhir/StructureDefinition/NLLArticleInfo']) &lt;= 1">extension with URL = 'http://electronichealth.se/fhir/StructureDefinition/NLLArticleInfo': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://electronichealth.se/fhir/StructureDefinition/NLLArticleAvailability']) &lt;= 1">extension with URL = 'http://electronichealth.se/fhir/StructureDefinition/NLLArticleAvailability': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://electronichealth.se/fhir/StructureDefinition/NLLArticleRegulations']) &lt;= 1">extension with URL = 'http://electronichealth.se/fhir/StructureDefinition/NLLArticleRegulations': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://electronichealth.se/fhir/StructureDefinition/NLLReimbursement']) &lt;= 1">extension with URL = 'http://electronichealth.se/fhir/StructureDefinition/NLLReimbursement': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 0">status: maximum cardinality of 'status' is 0</sch:assert>
      <sch:assert test="count(f:batch) &lt;= 0">batch: maximum cardinality of 'batch' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
