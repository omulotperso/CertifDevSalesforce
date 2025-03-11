# Post to Chatter

## Flow Diagram [(_View History_)](Post_to_Chatter-history.md)

```mermaid
%% If you read this, your Markdown visualizer does not handle MermaidJS syntax.
%% - If you are in VsCode, install extension `Markdown Preview Mermaid Support` at https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
%% - If you are using sfdx-hardis, try to define env variable `MERMAID_MODES=cli,docker` ,then run again the command to regenerate markdown with SVG images.
%% - If you are within mkdocs-material, define mermaid plugin in `mkdocs.yml` as described in https://squidfunk.github.io/mkdocs-material/extensions/mermaid/
%% - At last resort, you can copy-paste this MermaidJS code in https://mermaid.live/ to see the Flow Diagram

flowchart TB
START(["START<br/><b>AutoLaunched Flow</b></br>"]):::startClass
click START "#general-information" "2035093596"

Chatter_Mention_Post("⚡ <em></em><br/>Chatter Mention Post"):::actionCalls
click Chatter_Mention_Post "#chatter_mention_post" "3462117995"

Chatter_Mention_Post --> END_Chatter_Mention_Post
START -->  Chatter_Mention_Post
END_Chatter_Mention_Post(( END )):::endClass


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
|Label|Post to Chatter|
|Status|Active|
|Environments|Default|
|Interview Label|Post to Chatter {!$Flow.CurrentDateTime}|
| Builder Type (PM)|LightningFlowBuilder|
| Canvas Mode (PM)|AUTO_LAYOUT_CANVAS|
| Origin Builder Type (PM)|LightningFlowBuilder|
|Connector|[Chatter_Mention_Post](#chatter_mention_post)|
|Next Node|[Chatter_Mention_Post](#chatter_mention_post)|


## Variables

|Name|Data Type|Is Collection|Is Input|Is Output|Object Type|Description|
|:-- |:--:|:--:|:--:|:--:|:--:|:--  |
|chatterPostID|String|⬜|⬜|✅|<!-- -->|<!-- -->|
|postTargetID|String|⬜|✅|⬜|<!-- -->|<!-- -->|
|userMentionID|String|⬜|✅|⬜|<!-- -->|<!-- -->|


## Flow Nodes Details

### Chatter_Mention_Post

|<!-- -->|<!-- -->|
|:---|:---|
|Type|Action Call|
|Label|Chatter Mention Post|
|Action Type|Chatter Post|
|Action Name|chatterPost|
|Flow Transaction Model|CurrentTransaction|
|Name Segment|chatterPost|
|Offset|0|
|Output Parameters|assignToReference: chatterPostID<br/>name: feedItemId<br/>|
|Text (input)|chatterBody|
|Subject Name Or Id (input)|postTargetID|






___

_Documentation generated from branch master by [sfdx-hardis](https://sfdx-hardis.cloudity.com), featuring [salesforce-flow-visualiser](https://github.com/toddhalfpenny/salesforce-flow-visualiser)_

## Dependencies

- [Case_Priority_is_High](Case_Priority_is_High.md)
- [test_chatter](test_chatter.md)
