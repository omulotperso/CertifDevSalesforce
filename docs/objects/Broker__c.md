---
hide:
  - path
---


## Schema

```mermaid
graph TD
Property__c["Property"]:::customObject
Broker__c["Broker"]:::mainObject
click Broker__c "/objects/Broker__c/"

Property__c -->|Broker__c| Broker__c

classDef object fill:#D6E9FF,stroke:#0070D2,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObject fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObjectManaged fill:#FFD8B2,stroke:#CC5500,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainObject fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;
linkStyle 0 stroke:#A6A6A6,stroke-width:2px;

```


<!-- Object description -->

## Fields

| Name      | Label | Type | Description |
| :-------- | :---- | :--: | :---------- | 
| Broker_Id__c | Broker Id | Number | <!-- --> |
| Email__c | Email | Email | <!-- --> |
| Mobile_Phone__c | Mobile Phone | Phone | <!-- --> |
| Phone__c | Phone | Phone | <!-- --> |
| Picture__c | Picture | Url | <!-- --> |
| Picture_IMG__c | Picture | Text | <!-- --> |
| Title__c | Title | Text | <!-- --> |


## Related Flows

| Object | Name      | Type | Description |
| :----  | :-------- | :--: | :---------- | 
| 💻 | [Create_property](../flows/Create_property.md) [🕒](../flows/Create_property-history.md) |  Screen Flow | This flow helps agents creating new properties in just a few clicks. It calculates the geocoded address calling out to a 3rd party service. |


## Related Apex Classes

| Apex Class | Type |
| :----      | :--: | 
| [SampleDataController](../apex/SampleDataController.md) | Lightning Controller |
| [TestSampleDataController](../apex/TestSampleDataController.md) | Test |


## Related Lightning Pages

| Lightning Page | Type |
| :----      | :--: | 
| [Broker_Record_Page](../pages/Broker_Record_Page.md) |  Record Page |


_Documentation generated with [sfdx-hardis](https://sfdx-hardis.cloudity.com)_
