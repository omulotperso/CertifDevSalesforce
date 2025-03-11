---
hide:
  - path
---

# OlderAccountsUtility Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public class OlderAccountsUtility {
      //création de la méthode
        public static void updateOlderAccounts() {
      // Get the 5 oldest accounts
      Account[] oldAccounts = [SELECT Id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 5];
      // loop through them and update the Description field
      for (Account acct : oldAccounts) {
          acct.Description = 'Heritage Account';
      }
      // save the change you made
      update oldAccounts;
    }

}
```

## Methods
### `updateOlderAccounts()`

#### Signature
```apex
public static void updateOlderAccounts()
```

#### Return Type
**void**