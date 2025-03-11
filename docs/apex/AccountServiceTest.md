---
hide:
  - path
---

# AccountServiceTest Class

`ISTEST`

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
@IsTest
private class AccountServiceTest {
  @IsTest
  static void should_create_account() {
    String acctName = 'Salesforce';
    String acctNumber = 'SFDC';
    String tickerSymbol = 'CRM';
    Test.startTest();
      AccountService service = new AccountService();
      Account newAcct = service.createAccount( acctName, acctNumber, tickerSymbol );
      insert newAcct;
    Test.stopTest();
    List<Account> accts = [ SELECT Id, Name, AccountNumber, TickerSymbol FROM Account WHERE Id = :newAcct.Id ];
    System.assertEquals( 1, accts.size(), 'should have found new account' );
    System.assertEquals( acctName, accts[0].Name, 'incorrect name' );
    System.assertEquals( acctNumber, accts[0].AccountNumber, 'incorrect account number' );
    System.assertEquals( tickerSymbol, accts[0].TickerSymbol, 'incorrect ticker symbol' );
  }
}
```

## Methods
### `should_create_account()`

`ISTEST`

#### Signature
```apex
private static void should_create_account()
```

#### Return Type
**void**