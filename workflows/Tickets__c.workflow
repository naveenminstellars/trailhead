<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>New_ticket_creation</fullName>
        <description>New ticket creation</description>
        <protected>false</protected>
        <recipients>
            <recipient>arifhussain.shaik9@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Ticket_Notification</template>
    </alerts>
    <alerts>
        <fullName>Ticket_approved</fullName>
        <description>Ticket approved</description>
        <protected>false</protected>
        <recipients>
            <recipient>arifhussain.shaik9@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>nkumar.iam01@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Ticket_Notification</template>
    </alerts>
    <alerts>
        <fullName>email_alert_of_closed_ticket</fullName>
        <description>email alert of closed ticket</description>
        <protected>false</protected>
        <recipients>
            <recipient>arifhussain.shaik9@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>nkumar.iam01@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Ticket_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>copy_release_name</fullName>
        <description>copy release name</description>
        <field>additional_Instructions__c</field>
        <formula>Release_name__c</formula>
        <name>copy release name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>copy_release_name1</fullName>
        <description>Update additional details with release name</description>
        <field>additional_Instructions__c</field>
        <formula>Release_name__c</formula>
        <name>copy release name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>asssign sub task</fullName>
        <actions>
            <name>Ticket_cancelled</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Tickets__c.status__c</field>
            <operation>equals</operation>
            <value>cancelled</value>
        </criteriaItems>
        <description>assign sub task</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>copy release name</fullName>
        <actions>
            <name>copy_release_name1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Tickets__c.status__c</field>
            <operation>equals</operation>
            <value>completed</value>
        </criteriaItems>
        <description>copy release name</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>validate data</fullName>
        <actions>
            <name>New_ticket_creation</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Tickets__c.status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <description>validate data</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Ticket_cancelled</fullName>
        <assignedTo>arifhussain.shaik9@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>One ticket cancelled please review</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Ticket cancelled</subject>
    </tasks>
</Workflow>