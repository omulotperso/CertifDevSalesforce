---
hide:
  - path
---

# NewCaseListController Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public class NewCaseListController {
    
    public List<Case> getNewCases(){
        List<Case> filterlist = [Select Id, CaseNumber From Case Where Status ='New'];
        return filterlist;
    }

}
```

## Methods
### `getNewCases()`

#### Signature
```apex
public List<Case> getNewCases()
```

#### Return Type
**List&lt;Case&gt;**