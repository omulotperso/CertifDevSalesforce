---
hide:
  - path
---

# WarrantySummurayTest Class

`ISTEST`

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
@isTest
public class WarrantySummurayTest {

    @isTest static void insertCase() {
        Case myCa = new Case();
        myCa.Product_Purchase_Date__c = date.today();
        myCa.product_Total_Warranty_Days__c = 13;
        myCa.Has_Extended_Warranty__c = false;
        insert myCa;
        
    }
}
```

## Methods
### `insertCase()`

`ISTEST`

#### Signature
```apex
private static void insertCase()
```

#### Return Type
**void**