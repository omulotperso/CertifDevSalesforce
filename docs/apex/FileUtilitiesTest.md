---
hide:
  - path
---

# FileUtilitiesTest Class

`ISTEST`

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
@isTest
private with sharing class FileUtilitiesTest {
    @isTest
    static void createFileSucceedsWhenCorrectInput() {
        // GIVEN
        Property__c property = new Property__c();
        insert property;

        String base64Data = '/9j/4AAQSkZJRgABAQAAAQABAAD/4gHYSUNDX1BST0ZJTEUAAQEAAAHIAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAACRyWFlaAAABFAAAABRnWFlaAAABKAAAABRiWFlaAAABPAAAABR3dHB0AAABUAAAABRyVFJDAAABZAAAAChnVFJDAAABZAAAAChiVFJDAAABZAAAAChjcHJ0AAABjAAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAAgAAAAcAHMAUgBHAEJYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA9tYAAQAAAADTLXBhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABtbHVjAAAAAAAAAAEAAAAMZW5VUwAAACAAAAAcAEcAbwBvAGcAbABlACAASQBuAGMALgAgADIAMAAxADb';
        String fileName = 'file.png';
        String recordId = property.Id;

        // WHEN
        String contentDocumentLinkId = FileUtilities.createFile(
            base64Data,
            fileName,
            recordId
        );

        // THEN
        Assert.isNotNull(contentDocumentLinkId);
    }

    @isTest
    static void createFileFailsWhenIncorrectRecordId() {
        // GIVEN
        String base64Data = '/9j/4AAQSkZJRgABAQAAAQABAAD/4gHYSUNDX1BST0ZJTEUAAQEAAAHIAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAACRyWFlaAAABFAAAABRnWFlaAAABKAAAABRiWFlaAAABPAAAABR3dHB0AAABUAAAABRyVFJDAAABZAAAAChnVFJDAAABZAAAAChiVFJDAAABZAAAAChjcHJ0AAABjAAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAAgAAAAcAHMAUgBHAEJYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA9tYAAQAAAADTLXBhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABtbHVjAAAAAAAAAAEAAAAMZW5VUwAAACAAAAAcAEcAbwBvAGcAbABlACAASQBuAGMALgAgADIAMAAxADb';
        String fileName = 'file.png';
        String recordId = 'INVALID_ID';

        try {
            // WHEN
            String contentDocumentLinkId = FileUtilities.createFile(
                base64Data,
                fileName,
                recordId
            );
            Assert.fail('Expected an AuraHandledException');
        } catch (Exception e) {
            // THEN
            Assert.isInstanceOfType(e, AuraHandledException.class);
        }
    }

    @isTest
    static void createFileFailsWhenIncorrectBase64Data() {
        // GIVEN
        Property__c property = new Property__c();
        insert property;

        String base64Data = '';
        String fileName = 'file.png';
        String recordId = property.Id;

        try {
            // WHEN
            String contentDocumentLinkId = FileUtilities.createFile(
                base64Data,
                fileName,
                recordId
            );
            Assert.fail('Expected an AuraHandledException');
        } catch (Exception e) {
            // THEN
            Assert.isInstanceOfType(e, AuraHandledException.class);
        }
    }

    @isTest
    static void createFileFailsWhenIncorrectFilename() {
        // GIVEN
        Property__c property = new Property__c();
        insert property;

        String base64Data = '/9j/4AAQSkZJRgABAQAAAQABAAD/4gHYSUNDX1BST0ZJTEUAAQEAAAHIAAAAAAQwAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAACRyWFlaAAABFAAAABRnWFlaAAABKAAAABRiWFlaAAABPAAAABR3dHB0AAABUAAAABRyVFJDAAABZAAAAChnVFJDAAABZAAAAChiVFJDAAABZAAAAChjcHJ0AAABjAAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAAgAAAAcAHMAUgBHAEJYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA9tYAAQAAAADTLXBhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABtbHVjAAAAAAAAAAEAAAAMZW5VUwAAACAAAAAcAEcAbwBvAGcAbABlACAASQBuAGMALgAgADIAMAAxADb';
        String fileName = '';
        String recordId = property.Id;

        try {
            // WHEN
            String contentDocumentLinkId = FileUtilities.createFile(
                base64Data,
                fileName,
                recordId
            );
            Assert.fail('Expected an AuraHandledException');
        } catch (Exception e) {
            // THEN
            Assert.isInstanceOfType(e, AuraHandledException.class);
        }
    }
}
```

## Methods
### `createFileSucceedsWhenCorrectInput()`

`ISTEST`

#### Signature
```apex
private static void createFileSucceedsWhenCorrectInput()
```

#### Return Type
**void**

---

### `createFileFailsWhenIncorrectRecordId()`

`ISTEST`

#### Signature
```apex
private static void createFileFailsWhenIncorrectRecordId()
```

#### Return Type
**void**

---

### `createFileFailsWhenIncorrectBase64Data()`

`ISTEST`

#### Signature
```apex
private static void createFileFailsWhenIncorrectBase64Data()
```

#### Return Type
**void**

---

### `createFileFailsWhenIncorrectFilename()`

`ISTEST`

#### Signature
```apex
private static void createFileFailsWhenIncorrectFilename()
```

#### Return Type
**void**