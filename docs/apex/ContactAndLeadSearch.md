---
hide:
  - path
---

# ContactAndLeadSearch Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public class ContactAndLeadSearch {
    public static list<list< Sobject>> searchContactsAndLeads (String lastname){
        
        list<list< Sobject>> contactLeadList = [FIND :lastname IN ALL FIELDS returning contact(Name), lead(Name)];
        return contactLeadList;	
    }

}
```

## Methods
### `searchContactsAndLeads(lastname)`

#### Signature
```apex
public static list<list<Sobject>> searchContactsAndLeads(String lastname)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| lastname | String |  |

#### Return Type
**list&lt;list&lt;Sobject&gt;&gt;**