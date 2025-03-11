---
hide:
  - path
---

# StringArrayTest Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public class StringArrayTest {
	public static list<string> generateStringArray(Integer n){
        list<String> listToReturn = New List<String>();
            for(Integer i=0;i<n;i++){
                listToReturn.add('Test '+i);
                }
            return listToReturn;
}
    }
```

## Methods
### `generateStringArray(n)`

#### Signature
```apex
public static list<string> generateStringArray(Integer n)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| n | Integer |  |

#### Return Type
**list&lt;string&gt;**