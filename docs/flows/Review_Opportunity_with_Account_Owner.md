# Review Opportunity with Account Owner

## Flow Diagram [(_View History_)](Review_Opportunity_with_Account_Owner-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VsCode, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - At last resort, you can copy-paste this MermaidJS code in https://mermaid.live/ to see the Flow Diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
click START "#general-information" "702852373"

Create_Email_Task[("➕ <em></em><br/>Create Email Task")]:::recordCreates
click Create_Email_Task "#create_email_task" "1881859678"

Create_Phone_Call_Task[("➕ <em></em><br/>Create Phone Call Task")]:::recordCreates
click Create_Phone_Call_Task "#create_phone_call_task" "3986595109"

Create_Email_Task --> END_Create_Email_Task
Create_Phone_Call_Task --> END_Create_Phone_Call_Task
START --> |"Run Immediately"| Create_Email_Task
START --> |"3 Days After Last Modified Date"| Create_Phone_Call_Task
END_Create_Email_Task(( END )):::endClass
END_Create_Phone_Call_Task(( END )):::endClass


classDef actionCalls fill:#D4E4FC,color:black,text-decoration:none,max-height:100px
classDef assignments fill:#FBEED7,color:black,text-decoration:none,max-height:100px
classDef collectionProcessors fill:#F0E3FA,color:black,text-decoration:none,max-height:100px
classDef customErrors fill:#FFE9E9,color:black,text-decoration:none,max-height:100px
classDef decisions fill:#FDEAF6,color:black,text-decoration:none,max-height:100px
classDef loops fill:#FDEAF6,color:black,text-decoration:none,max-height:100px
classDef recordCreates fill:#FFF8C9,color:black,text-decoration:none,max-height:100px
classDef recordDeletes fill:#FFF8C9,color:black,text-decoration:none,max-height:100px
classDef recordLookups fill:#EDEAFF,color:black,text-decoration:none,max-height:100px
classDef recordUpdates fill:#FFF8C9,color:black,text-decoration:none,max-height:100px
classDef screens fill:#DFF6FF,color:black,text-decoration:none,max-height:100px
classDef subflows fill:#D4E4FC,color:black,text-decoration:none,max-height:100px
classDef startClass fill:#D9F2E6,color:black,text-decoration:none,max-height:100px
classDef endClass fill:#F9BABA,color:black,text-decoration:none,max-height:100px


```

<!-- Flow description -->

## General Information

|<!-- -->|<!-- -->|
|:---|:---|
|Object|Opportunity|
|Process Type| Auto Launched Flow|
|Trigger Type| Record After Save|
|Record Trigger Type| Create And Update|
|Label|Review Opportunity with Account Owner|
|Status|⚠️ Draft|
|Does Require Record Changed To Meet Criteria|✅|
|Description|When a high-value opportunity is ready for negotiation and review, create a task for the owner to follow up with the account owner|
|Environments|Default|
|Interview Label|Review Opportunity with Account Owner {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Create_Email_Task](#create_email_task)|
|Next Node|[Create_Email_Task](#create_email_task)|


#### Scheduled Paths

|Label|Name|Offset Number|Offset Unit|Record Field|Time Source|Connector|
|:-- |:-- |:-- |:-- |:-- |:-- |:--  |
|3 Days After Last Modified Date|X3_Days_After_Last_Modified_Date|3|Days|LastModifiedDate|RecordField|[Create_Phone_Call_Task](#create_phone_call_task)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|StageName| Equal To|Negotiation/Review|
|2|Amount| Greater Than|100000|


## Flow Nodes Details

### Create_Email_Task

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|Task|
|Label|Create Email Task|
|Description|Create a task for the opportunity owner to send a follow email to the account owner today|
|Store Output Automatically|✅|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|ActivityDate|dateValue: '2024-01-21'<br/>|
|OwnerId|$Record.OwnerId|
|Subject|Follow up with the account owner by email|
|WhatId|$Record.AccountId|




### Create_Phone_Call_Task

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|Task|
|Label|Create Phone Call Task|
|Description|Create a task for the opportunity owner to check in with the customer by phone|
|Store Output Automatically|✅|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|ActivityDate|dateValue: '2024-01-21'<br/>|
|Description|Call to check in with the customer|
|OwnerId|$Record.OwnerId|
|Subject|Outreach phone call|
|WhatId|$Record.Id|








___

_Documentation generated from branch master by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_