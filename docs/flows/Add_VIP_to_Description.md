# Add VIP to Description

## Flow Diagram [(_View History_)](Add_VIP_to_Description-history.md)

![diagram](./Add_VIP_to_Description-1.svg)

<!-- Flow description -->

## General Information

|<!-- -->|<!-- -->|
|:---|:---|
|Object|Opportunity|
|Process Type| Auto Launched Flow|
|Trigger Type| Record After Save|
|Record Trigger Type| Update|
|Label|Add VIP to Description|
|Status|Active|
|Does Require Record Changed To Meet Criteria|✅|
|Environments|Default|
|Interview Label|Add VIP to Description {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Get_Account](#get_account)|
|Next Node|[Get_Account](#get_account)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|StageName| Equal To|Closed Won|
|2|Name| Contains|VIP|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|VIP_Description|String|⬜|⬜|⬜|<!-- -->|<!-- -->|


## Flow Nodes Details

### Append_Description_to_VIP_Description

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Assignment|
|Label|Append Description to VIP_Description|
|Connector|[Update_Account_Description](#update_account_description)|


#### Assignments

|Assign To Reference|Operator|Value|
|:-- |:--:|:--: |
|VIP_Description| Add|Get_Account.Description|




### Get_Account

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Lookup|
|Object|Account|
|Label|Get Account|
|Assign Null Values If No Records Found|⬜|
|Get First Record Only|✅|
|Store Output Automatically|✅|
|Connector|[Append_Description_to_VIP_Description](#append_description_to_vip_description)|


#### Filters (logic: **and**)

|Filter Id|Field|Operator|Value|
|:-- |:-- |:--:|:--: |
|1|Id| Equal To|$Record.AccountId|




### Update_Account_Description

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Record Update|
|Label|Update Account Description|
|Input Reference|$Record.Account|


#### Input Assignments

|Field|Value|
|:-- |:--: |
|Description|VIP_Description|








___

_Documentation generated from branch master by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_