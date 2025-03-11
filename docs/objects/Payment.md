---
hide:
  - path
---


## Schema

```mermaid
graph TD
Payment["Payment"]:::mainObject
click Payment "/objects/Payment/"


classDef object fill:#D6E9FF,stroke:#0070D2,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObject fill:#FFF4C2,stroke:#CCAA00,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef customObjectManaged fill:#FFD8B2,stroke:#CC5500,stroke-width:3px,rx:12px,ry:12px,shadow:drop,color:#333;
classDef mainObject fill:#FFB3B3,stroke:#A94442,stroke-width:4px,rx:14px,ry:14px,shadow:drop,color:#333,font-weight:bold;

```


<!-- Object description -->

## Fields

| Name      | Label | Type | Description |
| :-------- | :---- | :--: | :---------- | 
| AccountId |  | Lookup | <!-- --> |
| Amount |  |  | <!-- --> |
| Balance |  |  | <!-- --> |
| CancellationDate |  |  | <!-- --> |
| CancellationEffectiveDate |  |  | <!-- --> |
| CancellationGatewayDate |  |  | <!-- --> |
| CancellationGatewayRefNumber |  |  | <!-- --> |
| CancellationGatewayResultCode |  |  | <!-- --> |
| CancellationSfResultCode |  |  | <!-- --> |
| Comments |  |  | <!-- --> |
| Date |  |  | <!-- --> |
| EffectiveDate |  |  | <!-- --> |
| Email |  |  | <!-- --> |
| GatewayDate |  |  | <!-- --> |
| GatewayRefDetails |  |  | <!-- --> |
| GatewayRefNumber |  |  | <!-- --> |
| GatewayResultCode |  |  | <!-- --> |
| GatewayResultCodeDescription |  |  | <!-- --> |
| ImpactAmount |  |  | <!-- --> |
| IpAddress |  |  | <!-- --> |
| MacAddress |  |  | <!-- --> |
| NetApplied |  |  | <!-- --> |
| NetRefundApplied |  |  | <!-- --> |
| PaymentAuthorizationId |  | Lookup | <!-- --> |
| PaymentGatewayId |  | Lookup | <!-- --> |
| PaymentGroupId |  | Lookup | <!-- --> |
| PaymentMethodId |  | Lookup | <!-- --> |
| Phone |  |  | <!-- --> |
| ProcessingMode |  |  | <!-- --> |
| SfResultCode |  |  | <!-- --> |
| Status |  |  | <!-- --> |
| TotalApplied |  |  | <!-- --> |
| TotalRefundApplied |  |  | <!-- --> |
| TotalRefundUnapplied |  |  | <!-- --> |
| TotalUnapplied |  |  | <!-- --> |
| Type |  |  | <!-- --> |






## Related Lightning Pages

| Lightning Page | Type |
| :----      | :--: | 
| [Account_Record_Page](../pages/Account_Record_Page.md) |  Record Page |


_Documentation generated with [sfdx-hardis](https://sfdx-hardis.cloudity.com)_
