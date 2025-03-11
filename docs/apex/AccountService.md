---
hide:
  - path
---

# AccountService Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public with sharing class AccountService {
  public Account createAccount( String accountName, String accountNumber, String tickerSymbol ) {
    Account newAcct = new Account(
      Name = accountName,
      AccountNumber = accountNumber,
      TickerSymbol = accountNumber
    );
    return newAcct;
  }
}
```

## Methods
### `createAccount(accountName, accountNumber, tickerSymbol)`

#### Signature
```apex
public Account createAccount(String accountName, String accountNumber, String tickerSymbol)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| accountName | String |  |
| accountNumber | String |  |
| tickerSymbol | String |  |

#### Return Type
**[Account](../objects/Account.md)**