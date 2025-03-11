---
hide:
  - path
---


## Schema

```mermaid
graph TD
OrderDetail__x["OrderDetail"]:::mainObject
click OrderDetail__x "/objects/OrderDetail__x/"


classDef object fill:#D6E9FF,stroke:#0070D2,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObject fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObjectManaged fill:#FFD8B2,stroke:#CC5500,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainObject fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

```


<!-- Object description -->

## Fields

| Name      | Label | Type | Description |
| :-------- | :---- | :--: | :---------- | 
| orderID__c | OrderID | ExternalLookup | orderID |
| orderLine__c | OrderLine | Number | orderLine |
| product__c | Product | Text | product |
| quantity__c | Quantity | Number | quantity |
| unitPrice__c | UnitPrice | Number | unitPrice |








_Documentation generated with [sfdx-hardis](https://sfdx-hardis.cloudity.com)_
