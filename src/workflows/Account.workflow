<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>AccountOutboundMessage</fullName>
        <apiVersion>23.0</apiVersion>
        <description>Account SF trigger message</description>
        <endpointUrl>http://p27-dev.A.tischool.com:7001/crm/SalesForceNotification</endpointUrl>
        <fields>AccountNumber</fields>
        <fields>BillingCity</fields>
        <fields>BillingCountry</fields>
        <fields>BillingPostalCode</fields>
        <fields>BillingStreet</fields>
        <fields>Id</fields>
        <fields>Name</fields>
        <fields>Phone</fields>
        <fields>ShippingCity</fields>
        <fields>ShippingCountry</fields>
        <fields>ShippingPostalCode</fields>
        <fields>ShippingState</fields>
        <fields>ShippingStreet</fields>
        <fields>Type</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>nkleffman@gmail.com</integrationUser>
        <name>AccountOutboundMessage</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>AccountCreation</fullName>
        <actions>
            <name>AccountOutboundMessage</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>greaterOrEqual</operation>
            <value>0</value>
        </criteriaItems>
        <description>Work flow rule for Account Creation</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
