---
hide:
  - path
---

# HouseService Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public with sharing class HouseService {
    @AuraEnabled(cacheable=true)
    public static List<House__c> getRecords() { 
        try {
            // Create a list of House records from a SOQL query
            List<House__c> lstHouses = [
                SELECT
                   Id,
                   Name,
                   Address__c,
                   State__c, 
                   City__c,
                   Zip__c
                   FROM House__c
                   WITH SECURITY_ENFORCED
                   ORDER BY CreatedDate
                   LIMIT 10
                ];
                  return lstHouses;
        }
        // Code to handle exception
        catch (Exception e) {
           throw new AuraHandledException(e.getMessage());
        }
    }
}
```

## Methods
### `getRecords()`

`AURAENABLED`

#### Signature
```apex
public static List<House__c> getRecords()
```

#### Return Type
**List&lt;House__c&gt;**