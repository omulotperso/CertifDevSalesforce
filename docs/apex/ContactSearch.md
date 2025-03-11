---
hide:
  - path
---

# ContactSearch Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public with sharing class ContactSearch {

    public static list<Contact> searchForContacts(String var1, String var2)    {
        List<contact> Rtlist = [Select id, name, lastname,MailingPostalCode from Contact where
                                lastname= :var1 and MailingPostalCode= : var2 ];
        return RtList;


    }
    
}
```

## Methods
### `searchForContacts(var1, var2)`

#### Signature
```apex
public static list<Contact> searchForContacts(String var1, String var2)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| var1 | String |  |
| var2 | String |  |

#### Return Type
**list&lt;Contact&gt;**