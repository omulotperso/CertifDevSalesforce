---
hide:
  - path
---

# TestFactory Class

`ISTEST`

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
@isTest
public class TestFactory {
   public static Account getAccount(String accountName, Boolean doInsert) {
       Account account = new Account(Name = accountName);
       if (doInsert) {
           insert account;
       }
       return account;
   }
   public static Contact getContact(Id accountId, String firstName, String lastName, Boolean doInsert){
       Contact contact = new Contact(
           FirstName = firstName,
           LastName = lastName,
           AccountId = accountId
       );
       if (doInsert) {
           insert contact;
       }
       return contact;
   }
   public static void generateAccountWithContacts(Integer numContacts) {
       Account account = getAccount('default account ltd', true);
       List<Contact> contacts = new List<Contact>();
       for (Integer i = 0; i < numContacts; i++) {
           String firstName = 'Contact';
           String lastName = 'Test' + i;
           contacts.add(getContact(account.Id, firstName, lastName, false));
       }
       insert contacts;
   }
   public static Opportunity[] generateOppsForAccount(ID accountId, Decimal amount, Integer numOpps){
       List<Opportunity> oppsForAccounts = new List<Opportunity>();
       for (Integer i = 0; i < numOpps; i++) {
           Opportunity opp = new Opportunity(
               Name = 'Account ' + i,
               AccountId = accountId,
               Amount = amount,
               CloseDate = Date.today().addDays(5),
               StageName = 'Prospecting'
           );
           oppsForAccounts.add(opp);
       }
       return oppsForAccounts;
   }
   public static User generateUser(String profileName) {
       UserRole userRole = new UserRole(
           DeveloperName = 'TestingTeam',
           Name = 'Testing Team'
       );
       insert userRole;
       String uniqueEmail = 'Cpt.Awesome' + DateTime.now().getTime() + '@th.example.com';
       User userForInsert = new User(
           ProfileId = [SELECT Id FROM Profile WHERE Name = :profileName].Id,
           LastName = 'lastName',
           Email = uniqueEmail,
           Username = uniqueEmail,
           CompanyName = 'Testing Co',
           Title = 'Captain',
           Alias = 'alias',
           TimeZoneSidKey = 'America/Los_Angeles',
           EmailEncodingKey = 'UTF-8',
           LanguageLocaleKey = 'en_US',
           LocaleSidKey = 'en_US',
           UserRoleId = userRole.Id
       );
       insert userForInsert;
       return userForInsert;
   }
}
```

## Methods
### `getAccount(accountName, doInsert)`

#### Signature
```apex
public static Account getAccount(String accountName, Boolean doInsert)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| accountName | String |  |
| doInsert | Boolean |  |

#### Return Type
**[Account](../objects/Account.md)**

---

### `getContact(accountId, firstName, lastName, doInsert)`

#### Signature
```apex
public static Contact getContact(Id accountId, String firstName, String lastName, Boolean doInsert)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| accountId | Id |  |
| firstName | String |  |
| lastName | String |  |
| doInsert | Boolean |  |

#### Return Type
**[Contact](../objects/Contact.md)**

---

### `generateAccountWithContacts(numContacts)`

#### Signature
```apex
public static void generateAccountWithContacts(Integer numContacts)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| numContacts | Integer |  |

#### Return Type
**void**

---

### `generateOppsForAccount(accountId, amount, numOpps)`

#### Signature
```apex
public static Opportunity generateOppsForAccount(ID accountId, Decimal amount, Integer numOpps)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| accountId | ID |  |
| amount | Decimal |  |
| numOpps | Integer |  |

#### Return Type
**[Opportunity](../objects/Opportunity.md)**

---

### `generateUser(profileName)`

#### Signature
```apex
public static User generateUser(String profileName)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| profileName | String |  |

#### Return Type
**[User](../objects/User.md)**