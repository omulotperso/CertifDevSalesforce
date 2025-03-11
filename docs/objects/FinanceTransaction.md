---
hide:
  - path
---


## Schema

```mermaid
graph TD
FinanceTransaction["FinanceTransaction"]:::mainObject
click FinanceTransaction "/objects/FinanceTransaction/"


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
| AdjustmentAmount |  |  | <!-- --> |
| BaseCurrencyAmount |  |  | <!-- --> |
| BaseCurrencyBalance |  |  | <!-- --> |
| BaseCurrencyFxDate |  |  | <!-- --> |
| BaseCurrencyFxRate |  |  | <!-- --> |
| BaseCurrencyIsoCode |  |  | <!-- --> |
| ChargeAmount |  |  | <!-- --> |
| CreationMode |  |  | <!-- --> |
| DestinationEntityId |  | Lookup | <!-- --> |
| DueDate |  |  | <!-- --> |
| EffectiveDate |  |  | <!-- --> |
| EventAction |  | Picklist | <!-- --> |
| EventType |  | Picklist | <!-- --> |
| FinanceSystemIntegrationMode |  |  | <!-- --> |
| FinanceSystemIntegrationStatus |  |  | <!-- --> |
| FinanceSystemName |  |  | <!-- --> |
| FinanceSystemTransactionNumber |  |  | <!-- --> |
| ImpactAmount |  |  | <!-- --> |
| LegalEntityId |  | Lookup | <!-- --> |
| OriginalCreditGlAccountName |  |  | <!-- --> |
| OriginalCreditGlAccountNumber |  |  | <!-- --> |
| OriginalDebitGlAccountName |  |  | <!-- --> |
| OriginalDebitGlAccountNumber |  |  | <!-- --> |
| OriginalEventAction |  |  | <!-- --> |
| OriginalEventType |  |  | <!-- --> |
| OriginalFinanceBookName |  |  | <!-- --> |
| OriginalFinancePeriodEndDate |  |  | <!-- --> |
| OriginalFinancePeriodName |  |  | <!-- --> |
| OriginalFinancePeriodStartDate |  |  | <!-- --> |
| OriginalFinancePeriodStatus |  |  | <!-- --> |
| OriginalGlRuleName |  |  | <!-- --> |
| OriginalGlTreatmentName |  |  | <!-- --> |
| OriginalReferenceEntityType |  |  | <!-- --> |
| OwnerId |  | Lookup | <!-- --> |
| ParentReferenceEntityId |  | Lookup | <!-- --> |
| ReferenceEntityId |  | Lookup | <!-- --> |
| ReferenceEntityType |  | Picklist | <!-- --> |
| ResultingBalance |  |  | <!-- --> |
| SourceEntityId |  | Lookup | <!-- --> |
| Subtotal |  |  | <!-- --> |
| TaxAmount |  |  | <!-- --> |
| TotalAmountWithTax |  |  | <!-- --> |
| TransactionDate |  |  | <!-- --> |








_Documentation generated with [sfdx-hardis](https://sfdx-hardis.cloudity.com)_
