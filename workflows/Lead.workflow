<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_Matching_Account_to_Lead_Routing</fullName>
        <description>Send Matching Account to Lead Routing</description>
        <protected>false</protected>
        <recipients>
            <recipient>Lead_Routing</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
</Workflow>
