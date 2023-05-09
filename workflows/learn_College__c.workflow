<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Field_update</fullName>
        <field>Students__c</field>
        <formula>Students__c +&apos;CAT&apos;</formula>
        <name>Field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>College rule</fullName>
        <actions>
            <name>Field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>learn_College__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>equals</operation>
            <value>Test1</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>