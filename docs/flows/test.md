# test

## Flow Diagram [(_View History_)](test-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VsCode, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - At last resort, you can copy-paste this MermaidJS code in https://mermaid.live/ to see the Flow Diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>Type: <b> Record After Save</b>"]):::startClass
click START "#general-information" "1518836644"

Check_Opp_Name{"🔀 <em></em><br/>Check Opp Name"}:::decisions
click Check_Opp_Name "#check_opp_name" "4127739425"

Create_1500_Opp_Product[("➕ <em></em><br/>Create 1500 Opp Product")]:::recordCreates
click Create_1500_Opp_Product "#create_1500_opp_product" "203942371"

Create_2000_Opp_Product[("➕ <em></em><br/>Create 2000 Opp Product")]:::recordCreates
click Create_2000_Opp_Product "#create_2000_opp_product" "3611103542"

Get_1500_PBE[("🔍 <em></em><br/>Get 1500 PBE")]:::recordLookups
click Get_1500_PBE "#get_1500_pbe" "1443096705"

Get_1500_Product[("🔍 <em></em><br/>Get 1500 Product")]:::recordLookups
click Get_1500_Product "#get_1500_product" "1012574724"

Get_2000_PBE[("🔍 <em></em><br/>Get 2000 PBE")]:::recordLookups
click Get_2000_PBE "#get_2000_pbe" "2091228855"

Get_2000_Product[("🔍 <em></em><br/>Get 2000 Product")]:::recordLookups
click Get_2000_Product "#get_2000_product" "4005679984"

Get_Pricebook[("🔍 <em></em><br/>Get Pricebook")]:::recordLookups
click Get_Pricebook "#get_pricebook" "1109185302"

Check_Opp_Name --> |"1500kW"| Get_1500_Product
Check_Opp_Name --> |"2000kW"| Get_2000_Product
Check_Opp_Name --> |"None"| END_Check_Opp_Name
Create_1500_Opp_Product --> END_Create_1500_Opp_Product
Create_2000_Opp_Product --> END_Create_2000_Opp_Product
Get_1500_PBE --> Create_1500_Opp_Product
Get_1500_Product --> Get_1500_PBE
Get_2000_PBE --> Create_2000_Opp_Product
Get_2000_Product --> Get_2000_PBE
Get_Pricebook --> Check_Opp_Name
START -->  Get_Pricebook
END_Check_Opp_Name(( END )):::endClass
END_Create_1500_Opp_Product(( END )):::endClass
END_Create_2000_Opp_Product(( END )):::endClass


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
|Record Trigger Type| Create|
|Label|test|
|Status|Active|
|Environments|Default|
|Interview Label|test {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Get_Pricebook](#get_pricebook)|
|Next Node|[Get_Pricebook](#get_pricebook)|


## Flow Nodes Details

### Check_Opp_Name

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Decision|
|Label|Check Opp Name|
|Default Connector Label|None|


#### Rule X1500kW (1500kW)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Get_1500_Product](#get_1500_product)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Name| Contains|1500|




#### Rule X2000kW (2000kW)

|<!-- -->|<!-- -->|
|:---|:---|
|Connector|[Get_2000_Product](#get_2000_product)|
|Condition Logic|and|




|Condition Id|Left Value Reference|Operator|Right Value|
|:-- |:-- |:--:|:--: |
|1|$Record.Name| Contains|2000|




### Create_1500_Opp_Product

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|OpportunityLineItem|
|Label|Create 1500 Opp Product|
|Description|create opportunity product|
|Store Output Automatically|✅|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|OpportunityId|$Record.Id|
|PricebookEntryId|Get_1500_PBE.Id|
|Quantity|1|
|TotalPrice|Get_1500_PBE.UnitPrice|




### Create_2000_Opp_Product

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|OpportunityLineItem|
|Label|Create 2000 Opp Product|
|Store Output Automatically|✅|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|OpportunityId|$Record.Id|
|PricebookEntryId|Get_2000_PBE.Id|
|Quantity|1|
|TotalPrice|Get_2000_PBE.UnitPrice|




### Get_1500_PBE

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|PricebookEntry|
|Label|Get 1500 PBE|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Create_1500_Opp_Product](#create_1500_opp_product)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Pricebook2Id| Equal To|Get_Pricebook.Id|
|2|Product2Id| Equal To|Get_1500_Product.Id|




### Get_1500_Product

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Product2|
|Label|Get 1500 Product|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Get_1500_PBE](#get_1500_pbe)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Name| Contains|1500|




### Get_2000_PBE

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|PricebookEntry|
|Label|Get 2000 PBE|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Create_2000_Opp_Product](#create_2000_opp_product)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Pricebook2Id| Equal To|Get_Pricebook.Id|
|2|Product2Id| Equal To|Get_2000_Product.Id|




### Get_2000_Product

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Product2|
|Label|Get 2000 Product|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Get_2000_PBE](#get_2000_pbe)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Name| Contains|2000|




### Get_Pricebook

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Pricebook2|
|Label|Get Pricebook|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Check_Opp_Name](#check_opp_name)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Name| Equal To|Standard Price Book|








___

_Documentation generated from branch master by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_