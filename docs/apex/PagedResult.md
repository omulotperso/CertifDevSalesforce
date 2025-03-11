---
hide:
  - path
---

# PagedResult Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public with sharing class PagedResult {
    @AuraEnabled
    public Integer pageSize { get; set; }

    @AuraEnabled
    public Integer pageNumber { get; set; }

    @AuraEnabled
    public Integer totalItemCount { get; set; }

    @AuraEnabled
    public Object[] records { get; set; }
}
```

## Properties
### `pageSize`

`AURAENABLED`

#### Signature
```apex
public pageSize
```

#### Type
Integer

---

### `pageNumber`

`AURAENABLED`

#### Signature
```apex
public pageNumber
```

#### Type
Integer

---

### `totalItemCount`

`AURAENABLED`

#### Signature
```apex
public totalItemCount
```

#### Type
Integer

---

### `records`

`AURAENABLED`

#### Signature
```apex
public records
```

#### Type
Object