---
hide:
  - path
---

# MyIterable Class

**Implements**

Iterable&lt;String&gt;

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public class MyIterable implements Iterable<String> {
	Private List<String> strings;
    
    // Constructor to initilize the list of stings
    
    public MyIterable(List<String> strings)
    {
        this.strings = strings;
        
    }
    
    //Implementing the iterator method
    
    public Iterator<String> iterator(){
        
        return strings.iterator();
    }
    
}
```

## Fields
### `strings`

#### Signature
```apex
private strings
```

#### Type
List&lt;String&gt;

## Constructors
### `MyIterable(strings)`

#### Signature
```apex
public MyIterable(List<String> strings)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| strings | List&lt;String&gt; |  |

## Methods
### `iterator()`

#### Signature
```apex
public Iterator<String> iterator()
```

#### Return Type
**Iterator&lt;String&gt;**