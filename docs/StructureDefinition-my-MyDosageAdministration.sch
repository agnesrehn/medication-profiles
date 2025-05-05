<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MedicationAdministration
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MedicationAdministration</sch:title>
    <sch:rule context="f:MedicationAdministration">
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/SiteQualifier']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/SiteQualifier': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/self-administration']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/self-administration': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:statusReason) &lt;= 0">statusReason: maximum cardinality of 'statusReason' is 0</sch:assert>
      <sch:assert test="count(f:category) &lt;= 0">category: maximum cardinality of 'category' is 0</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 0">encounter: maximum cardinality of 'encounter' is 0</sch:assert>
      <sch:assert test="count(f:supportingInformation) &lt;= 0">supportingInformation: maximum cardinality of 'supportingInformation' is 0</sch:assert>
      <sch:assert test="count(f:recorded) &lt;= 0">recorded: maximum cardinality of 'recorded' is 0</sch:assert>
      <sch:assert test="count(f:reason) &lt;= 0">reason: maximum cardinality of 'reason' is 0</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:note) &lt;= 1">note: maximum cardinality of 'note' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
