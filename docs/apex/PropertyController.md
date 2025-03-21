---
hide:
  - path
---

# PropertyController Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public with sharing class PropertyController {
    private static final Decimal DEFAULT_MAX_PRICE = 9999999;
    private static final Integer DEFAULT_PAGE_SIZE = 9;

    /**
     * Endpoint that retrieves a paged and filtered list of properties
     * @param searchKey String used for searching on property title, city and tags
     * @param maxPrice Maximum price
     * @param minBedrooms Minimum number of bedrooms
     * @param minBathrooms Minimum number of bathrooms
     * @param pageSize Number of properties per page
     * @param pageNumber Page number
     * @return PagedResult object holding the paged and filtered list of properties
     */
    @AuraEnabled(cacheable=true scope='global')
    public static PagedResult getPagedPropertyList(
        String searchKey,
        Decimal maxPrice,
        Integer minBedrooms,
        Integer minBathrooms,
        Integer pageSize,
        Integer pageNumber
    ) {
        // Normalize inputs
        Decimal safeMaxPrice = (maxPrice == null
            ? DEFAULT_MAX_PRICE
            : maxPrice);
        Integer safeMinBedrooms = (minBedrooms == null ? 0 : minBedrooms);
        Integer safeMinBathrooms = (minBathrooms == null ? 0 : minBathrooms);
        Integer safePageSize = (pageSize == null
            ? DEFAULT_PAGE_SIZE
            : pageSize);
        Integer safePageNumber = (pageNumber == null ? 1 : pageNumber);

        String searchPattern = '%' + searchKey + '%';
        Integer offset = (safePageNumber - 1) * safePageSize;

        PagedResult result = new PagedResult();
        result.pageSize = safePageSize;
        result.pageNumber = safePageNumber;
        result.totalItemCount = [
            SELECT COUNT()
            FROM Property__c
            WHERE
                (Name LIKE :searchPattern
                OR City__c LIKE :searchPattern
                OR Tags__c LIKE :searchPattern)
                AND Price__c <= :safeMaxPrice
                AND Beds__c >= :safeMinBedrooms
                AND Baths__c >= :safeMinBathrooms
        ];
        result.records = [
            SELECT
                Id,
                Address__c,
                City__c,
                State__c,
                Description__c,
                Price__c,
                Baths__c,
                Beds__c,
                Thumbnail__c,
                Location__Latitude__s,
                Location__Longitude__s
            FROM Property__c
            WHERE
                (Name LIKE :searchPattern
                OR City__c LIKE :searchPattern
                OR Tags__c LIKE :searchPattern)
                AND Price__c <= :safeMaxPrice
                AND Beds__c >= :safeMinBedrooms
                AND Baths__c >= :safeMinBathrooms
            WITH USER_MODE
            ORDER BY Price__c
            LIMIT :safePageSize
            OFFSET :offset
        ];
        return result;
    }

    /**
     * Endpoint that retrieves pictures associated with a property
     * @param propertyId Property Id
     * @return List of ContentVersion holding the pictures
     */
    @AuraEnabled(cacheable=true scope='global')
    public static List<ContentVersion> getPictures(Id propertyId) {
        List<ContentDocumentLink> links = [
            SELECT Id, LinkedEntityId, ContentDocument.Title
            FROM ContentDocumentLink
            WHERE
                LinkedEntityId = :propertyId
                AND ContentDocument.FileType IN ('PNG', 'JPG', 'GIF')
            WITH USER_MODE
        ];

        if (links.isEmpty()) {
            return null;
        }

        Set<Id> contentIds = new Set<Id>();

        for (ContentDocumentLink link : links) {
            contentIds.add(link.ContentDocumentId);
        }

        return [
            SELECT Id, Title
            FROM ContentVersion
            WHERE ContentDocumentId IN :contentIds AND IsLatest = TRUE
            WITH USER_MODE
            ORDER BY CreatedDate
        ];
    }
}
```

## Fields
### `DEFAULT_MAX_PRICE`

#### Signature
```apex
private static final DEFAULT_MAX_PRICE
```

#### Type
Decimal

---

### `DEFAULT_PAGE_SIZE`

#### Signature
```apex
private static final DEFAULT_PAGE_SIZE
```

#### Type
Integer

## Methods
### `getPagedPropertyList(searchKey, maxPrice, minBedrooms, minBathrooms, pageSize, pageNumber)`

`AURAENABLED`

Endpoint that retrieves a paged and filtered list of properties

#### Signature
```apex
public static PagedResult getPagedPropertyList(String searchKey, Decimal maxPrice, Integer minBedrooms, Integer minBathrooms, Integer pageSize, Integer pageNumber)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| searchKey | String | String used for searching on property title, city and tags |
| maxPrice | Decimal | Maximum price |
| minBedrooms | Integer | Minimum number of bedrooms |
| minBathrooms | Integer | Minimum number of bathrooms |
| pageSize | Integer | Number of properties per page |
| pageNumber | Integer | Page number |

#### Return Type
**[PagedResult](PagedResult.md)**

PagedResult object holding the paged and filtered list of properties

---

### `getPictures(propertyId)`

`AURAENABLED`

Endpoint that retrieves pictures associated with a property

#### Signature
```apex
public static List<ContentVersion> getPictures(Id propertyId)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| propertyId | Id | Property Id |

#### Return Type
**List&lt;ContentVersion&gt;**

List of ContentVersion holding the pictures