---
hide:
  - path
---

# MyIterableTest Class

`ISTEST`

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
@IsTest
public class MyIterableTest 
{

    @IsTest
    static void testIterableForLoop()
    {
        
        //create a list of strings
        List<String> strings = new List<String> {'Hello', 'World'};
        
        //Create an Instance of Myiterable
        
            	MyIterable myiterable = new MyIterable(strings);
        
        //Use a for loop to iterate over the Myiterable instance
        for(String str: myIterable)
        	{
            
        
            //print each string to the debug log
            System.debug(str);
    		}
        }
    
}
```

## Methods
### `testIterableForLoop()`

`ISTEST`

#### Signature
```apex
private static void testIterableForLoop()
```

#### Return Type
**void**