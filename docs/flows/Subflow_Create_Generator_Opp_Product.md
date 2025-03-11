# Subflow-Create Generator Opp Product

## Flow Diagram [(_View History_)](Subflow_Create_Generator_Opp_Product-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VsCode, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - At last resort, you can copy-paste this MermaidJS code in https://mermaid.live/ to see the Flow Diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
click START "#general-information" "637064767"

Create_Opp_Product[("➕ <em></em><br/>Create Opp Product")]:::recordCreates
click Create_Opp_Product "#create_opp_product" "1487285440"

Get_PBE[("🔍 <em></em><br/>Get PBE")]:::recordLookups
click Get_PBE "#get_pbe" "3183885570"

Get_Product[("🔍 <em></em><br/>Get Product")]:::recordLookups
click Get_Product "#get_product" "752987308"

Create_Opp_Product --> END_Create_Opp_Product
Get_PBE --> Create_Opp_Product
Get_Product --> Get_PBE
START -->  Get_Product
END_Create_Opp_Product(( END )):::endClass


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
|Process Type| Auto Launched Flow|
|Label|Subflow-Create Generator Opp Product|
|Status|Active|
|Environments|Default|
|Interview Label|Subflow-Create Generator Opp Product {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Get_Product](#get_product)|
|Next Node|[Get_Product](#get_product)|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|OpportunityID|String|⬜|✅|⬜|<!-- -->|<!-- -->|
|PricebookID|String|⬜|✅|⬜|<!-- -->|<!-- -->|
|ProductKW|String|⬜|✅|⬜|<!-- -->|<!-- -->|


## Flow Nodes Details

### Create_Opp_Product

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Create|
|Object|OpportunityLineItem|
|Label|Create Opp Product|
|Store Output Automatically|✅|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|OpportunityId|OpportunityID|
|PricebookEntryId|Get_PBE.Id|
|Quantity|1|
|TotalPrice|Get_PBE.UnitPrice|




### Get_PBE

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|PricebookEntry|
|Label|Get PBE|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Create_Opp_Product](#create_opp_product)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Pricebook2Id| Equal To|PricebookID|
|2|Product2Id| Equal To|Get_Product.Id|




### Get_Product

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Product2|
|Label|Get Product|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Get_PBE](#get_pbe)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Name| Contains|ProductKW|








___

_Documentation generated from branch master by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

## Dependencies

- [Add_Generator_Product_to_Named_Opps](Add_Generator_Product_to_Named_Opps.md)
