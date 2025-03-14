---
hide:
  - path
---

# TestSampleDataController Class

`ISTEST`

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
@isTest
private class TestSampleDataController {
    @isTest
    static void importSampleData() {
        Test.startTest();
        SampleDataController.importSampleData();
        Test.stopTest();

        Integer propertyNumber = [SELECT COUNT() FROM Property__c];
        Integer brokerNumber = [SELECT COUNT() FROM Broker__c];
        Integer contactNumber = [SELECT COUNT() FROM Contact];

        Assert.isTrue(propertyNumber > 0, 'Expected properties were created.');
        Assert.isTrue(brokerNumber > 0, 'Expected brokers were created.');
        Assert.isTrue(contactNumber > 0, 'Expected contacts were created.');
    }
}
```

## Methods
### `importSampleData()`

`ISTEST`

#### Signature
```apex
private static void importSampleData()
```

#### Return Type
**void**