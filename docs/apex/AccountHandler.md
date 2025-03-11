---
hide:
  - path
---

# AccountHandler Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public with sharing class AccountHandler {

    public static Account insertNewAccount(String name){
        Account acc = new account();
        acc.Name= name;

        try {
            insert acc;
            return acc;
        } catch (Exception e) {
            system.debug('Erreur'+e);
            return null;
            
        }


    }

   

    }
```

## Methods
### `insertNewAccount(name)`

#### Signature
```apex
public static Account insertNewAccount(String name)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| name | String |  |

#### Return Type
**[Account](../objects/Account.md)**