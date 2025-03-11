# Set Case Priority

## Flow Diagram [(_View History_)](Set_Case_Priority-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VsCode, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - At last resort, you can copy-paste this MermaidJS code in https://mermaid.live/ to see the Flow Diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record Before Save</b>"]):::startClass
click START "#general-information" "639676939"

Check_Case_Details{"🔀 <em></em><br/>Check Case Details"}:::decisions
click Check_Case_Details "#check_case_details" "488888893"

Set_Priority_to_Sev0[("🛠️ <em></em><br/>Set Priority to Sev0")]:::recordUpdates
click Set_Priority_to_Sev0 "#set_priority_to_sev0" "2062320451"

Set_Priority_to_Sev1[("🛠️ <em></em><br/>Set Priority to Sev1")]:::recordUpdates
click Set_Priority_to_Sev1 "#set_priority_to_sev1" "1069543205"

Set_Priority_to_Sev2[("🛠️ <em></em><br/>Set Priority to Sev2")]:::recordUpdates
click Set_Priority_to_Sev2 "#set_priority_to_sev2" "1308742178"

Set_Priority_to_Sev3[("🛠️ <em></em><br/>Set Priority to Sev3")]:::recordUpdates
click Set_Priority_to_Sev3 "#set_priority_to_sev3" "2060262255"

Check_Case_Details --> |"Severity 0"| Set_Priority_to_Sev0
Check_Case_Details --> |"Severity 1"| Set_Priority_to_Sev1
Check_Case_Details --> |"Severity 2"| Set_Priority_to_Sev2
Check_Case_Details --> |"Severity 3 (Default)"| Set_Priority_to_Sev3
Set_Priority_to_Sev0 --> END_Set_Priority_to_Sev0
Set_Priority_to_Sev1 --> END_Set_Priority_to_Sev1
Set_Priority_to_Sev2 --> END_Set_Priority_to_Sev2
Set_Priority_to_Sev3 --> END_Set_Priority_to_Sev3
START -->  Check_Case_Details
END_Set_Priority_to_Sev0(( END )):::endClass
END_Set_Priority_to_Sev1(( END )):::endClass
END_Set_Priority_to_Sev2(( END )):::endClass
END_Set_Priority_to_Sev3(( END )):::endClass


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
|Object|Case|
|Process Type| Auto Launched Flow|
|Trigger Type| Record Before Save|
|Record Trigger Type| Create|
|Label|Set Case Priority|
|Status|⚠️ Draft|
|Environments|Default|
|Interview Label|Set Case Priority {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Check_Case_Details](#check_case_details)|
|Next Node|[Check_Case_Details](#check_case_details)|


## Flow Nodes Details

### Check_Case_Details

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Check Case Details|
|Default Connector|[Set_Priority_to_Sev3](#set_priority_to_sev3)|
|Default Connector Label|Severity 3 (Default)|


#### Rule Severity_0 (Severity 0)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Set_Priority_to_Sev0](#set_priority_to_sev0)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Type| Equal To|Downtime|




#### Rule Severity_1 (Severity 1)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Set_Priority_to_Sev1](#set_priority_to_sev1)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Type| Equal To|Usability|
|2|$Record.Contact.Description| Contains|VIP|




#### Rule Severity_2 (Severity 2)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Set_Priority_to_Sev2](#set_priority_to_sev2)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Type| Equal To|Usability|




### Set_Priority_to_Sev0

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Set Priority to Sev0|
|Input Reference|$Record|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|Priority|Severity 0|




### Set_Priority_to_Sev1

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Set Priority to Sev1|
|Input Reference|$Record|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|Priority|Severity 1|




### Set_Priority_to_Sev2

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Set Priority to Sev2|
|Input Reference|$Record|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|Priority|Severity 2|




### Set_Priority_to_Sev3

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Set Priority to Sev3|
|Input Reference|$Record|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|Priority|Severity 3|








___

_Documentation generated from branch master by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_