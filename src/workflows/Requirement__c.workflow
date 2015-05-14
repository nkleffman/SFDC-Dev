<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>REQ_UpdateRecordTypeApplicationRequireme</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Application_Requirement</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>REQ_UpdateRecordTypeApplicationRequireme</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>REQ_UpdateRecordTypeBusinessRule</fullName>
        <description>Update the Record Type to Business Rule</description>
        <field>RecordTypeId</field>
        <lookupValue>Business_Rule</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>REQ_UpdateRecordTypeBusinessRule</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>REQ_UpdateRecordTypeChangeRequest</fullName>
        <description>Update Record Type to Change Request</description>
        <field>RecordTypeId</field>
        <lookupValue>ChangeRequest</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>REQ_UpdateRecordTypeChangeRequest</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>REQ_UpdateRecordTypeParentRequirement</fullName>
        <description>Update the Record Type to Parent Requirement</description>
        <field>RecordTypeId</field>
        <lookupValue>Parent_Requirement</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>REQ_UpdateRecordTypeParentRequirement</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>REQ_UpdateRecordTypeOnTypeChangeApplicationRequirement</fullName>
        <actions>
            <name>REQ_UpdateRecordTypeApplicationRequireme</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>If the Requirement&apos;s Type changes to &quot;Application Requirement&quot; then update the Record Type to Application Requirement.</description>
        <formula>ISPICKVAL( Type__c , &quot;Application Requirement&quot;) &amp;&amp; (  ISNEW()  || ISCHANGED( Type__c ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>REQ_UpdateRecordTypeOnTypeChangeBusinessRule</fullName>
        <actions>
            <name>REQ_UpdateRecordTypeBusinessRule</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>If the Requirement&apos;s Type changes to &quot;Business Rule&quot; then update the Record Type to Business Rule.</description>
        <formula>ISPICKVAL( Type__c , &quot;Business Rule&quot;) &amp;&amp; (  ISNEW()  || ISCHANGED( Type__c ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>REQ_UpdateRecordTypeOnTypeChangeChangeRequest</fullName>
        <actions>
            <name>REQ_UpdateRecordTypeChangeRequest</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>If the Requirement&apos;s Type changes to &quot;Change Request&quot; then update the Record Type to Change Request.</description>
        <formula>ISPICKVAL( Type__c , &quot;Change Request&quot;) &amp;&amp; (  ISNEW()  || ISCHANGED( Type__c ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>REQ_UpdateRecordTypeOnTypeChangeParentRequirement</fullName>
        <actions>
            <name>REQ_UpdateRecordTypeParentRequirement</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>If the Requirement&apos;s Type changes to &quot;Parent Requirement&quot; then update the Record Type to Parent Requirement.</description>
        <formula>ISPICKVAL( Type__c , &quot;Parent Requirement&quot;) &amp;&amp; (  ISNEW()  || ISCHANGED( Type__c ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
