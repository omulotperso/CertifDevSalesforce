---
hide:
  - path
---

# SampleDataController Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public with sharing class SampleDataController {
    @AuraEnabled
    public static void importSampleData() {
        delete [SELECT Id FROM Case];
        delete [SELECT Id FROM Property__c];
        delete [SELECT Id FROM Broker__c];
        delete [SELECT Id FROM Contact];

        insertBrokers();
        insertProperties();
        insertContacts();
    }

    private static void insertBrokers() {
        StaticResource brokersResource = [
            SELECT Id, Body
            FROM StaticResource
            WHERE Name = 'sample_data_brokers'
        ];
        String brokersJSON = brokersResource.body.toString();
        List<Broker__c> brokers = (List<Broker__c>) JSON.deserialize(
            brokersJSON,
            List<Broker__c>.class
        );
        insert brokers;
    }

    private static void insertProperties() {
        StaticResource propertiesResource = [
            SELECT Id, Body
            FROM StaticResource
            WHERE Name = 'sample_data_properties'
        ];
        String propertiesJSON = propertiesResource.body.toString();
        List<Property__c> properties = (List<Property__c>) JSON.deserialize(
            propertiesJSON,
            List<Property__c>.class
        );
        randomizeDateListed(properties);
        insert properties;
    }

    private static void insertContacts() {
        StaticResource contactsResource = [
            SELECT Id, Body
            FROM StaticResource
            WHERE Name = 'sample_data_contacts'
        ];
        String contactsJSON = contactsResource.body.toString();
        List<Contact> contacts = (List<Contact>) JSON.deserialize(
            contactsJSON,
            List<Contact>.class
        );
        insert contacts;
    }

    private static void randomizeDateListed(List<Property__c> properties) {
        for (Property__c property : properties) {
            property.Date_Listed__c =
                System.today() - Integer.valueof((Math.random() * 90));
        }
    }
}
```

## Methods
### `importSampleData()`

`AURAENABLED`

#### Signature
```apex
public static void importSampleData()
```

#### Return Type
**void**

---

### `insertBrokers()`

#### Signature
```apex
private static void insertBrokers()
```

#### Return Type
**void**

---

### `insertProperties()`

#### Signature
```apex
private static void insertProperties()
```

#### Return Type
**void**

---

### `insertContacts()`

#### Signature
```apex
private static void insertContacts()
```

#### Return Type
**void**

---

### `randomizeDateListed(properties)`

#### Signature
```apex
private static void randomizeDateListed(List<Property__c> properties)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| properties | List&lt;Property__c&gt; |  |

#### Return Type
**void**