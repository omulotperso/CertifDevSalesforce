---
hide:
  - path
---

# LeadCompetitorTest Class

`ISTEST`

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
@isTest
public class LeadCompetitorTest {

    @isTest static void updateLead() {
        Lead myLead = new Lead();
        myLead.FirstName = 'David';
        myLead.LastName = 'Louis';
        myLead.Company = 'toto';
        myLead.competitor_1__c='Yahoo';
        myLead.competitor_2__c='Salesforce';
        myLead.competitor_3__c='Oracle';
        myLead.Competitor_1_Price__c=123;
        myLead.Competitor_2_Price__c=436;
        myLead.Competitor_3_Price__c=987;
        insert myLead;
        myLead.Company = 'Dell';
        update myLead;
    }
}
```

## Methods
### `updateLead()`

`ISTEST`

#### Signature
```apex
private static void updateLead()
```

#### Return Type
**void**