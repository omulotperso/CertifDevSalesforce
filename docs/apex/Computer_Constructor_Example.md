---
hide:
  - path
---

# Computer_Constructor_Example Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public with sharing class Computer_Constructor_Example {
    String computerType;

    //surcharge de la classe avec un autre contructor permettant de définir une valeur par défaut du type ordinateur
    public Computer_Constructor_Example()
    {
        System.debug('Original computer Type ::::' + computerType);
        computerType = 'Gaming';
        System.debug('Original computer Type ::::' + computerType);
    }
    
    //constructor donc intialisation de la classe, on passe un paramètre dans la classe
    public Computer_Constructor_Example(String computerTypePassed) {
        System.debug('Original computer Type ::::' + computerType);
        computerType = computerTypePassed;
        System.debug('New computer Type ::::' + computerTypePassed);
    }
}
```

## Fields
### `computerType`

#### Signature
```apex
private computerType
```

#### Type
String

## Constructors
### `Computer_Constructor_Example()`

#### Signature
```apex
public Computer_Constructor_Example()
```

---

### `Computer_Constructor_Example(computerTypePassed)`

#### Signature
```apex
public Computer_Constructor_Example(String computerTypePassed)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| computerTypePassed | String |  |