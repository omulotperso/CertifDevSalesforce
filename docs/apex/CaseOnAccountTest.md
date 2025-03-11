---
hide:
  - path
---

# CaseOnAccountTest Class

`ISTEST`

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
@isTest
public class CaseOnAccountTest {

    @isTest static void insertAccount() {
        Account myAcc = new Account();
        myAcc.Name = 'OpcoEP';
        insert myAcc;
    }
}
```

## Methods
### `insertAccount()`

`ISTEST`

#### Signature
```apex
private static void insertAccount()
```

#### Return Type
**void**