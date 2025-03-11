---
hide:
  - path
---

# AppleWatchTest Class

`ISTEST`

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
@isTest
public class AppleWatchTest {

    @isTest static void insertOpportunity() {
        Opportunity myOpp = new Opportunity();
        myOpp.Name = 'Taylor Swift';
        myOpp.StageName = 'Prospecting';
        myOpp.CloseDate = Date.today();
        insert myopp;
        
    }
}
```

## Methods
### `insertOpportunity()`

`ISTEST`

#### Signature
```apex
private static void insertOpportunity()
```

#### Return Type
**void**