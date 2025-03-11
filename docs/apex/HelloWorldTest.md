---
hide:
  - path
---

# HelloWorldTest Class

`ISTEST`

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
@isTest
public class HelloWorldTest {

    @isTest static void updateLead() {
        Lead myLead = new Lead();
        myLead.FirstName = 'David';
        myLead.LastName = 'Louis';
        myLead.Company = 'toto';
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