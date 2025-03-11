---
hide:
  - path
---

# GeocodingService Class

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
public with sharing class GeocodingService {
    private static final String BASE_URL = 'https://nominatim.openstreetmap.org/search?format=json';

    @InvocableMethod(callout=true label='Geocode address')
    public static List<Coordinates> geocodeAddresses(
        List<GeocodingAddress> addresses
    ) {
        List<Coordinates> computedCoordinates = new List<Coordinates>();

        for (GeocodingAddress address : addresses) {
            String geocodingUrl = BASE_URL;
            geocodingUrl += (String.isNotBlank(address.street))
                ? '&street=' + address.street
                : '';
            geocodingUrl += (String.isNotBlank(address.city))
                ? '&city=' + address.city
                : '';
            geocodingUrl += (String.isNotBlank(address.state))
                ? '&state=' + address.state
                : '';
            geocodingUrl += (String.isNotBlank(address.country))
                ? '&country=' + address.country
                : '';
            geocodingUrl += (String.isNotBlank(address.postalcode))
                ? '&postalcode=' + address.postalcode
                : '';

            Coordinates coords = new Coordinates();
            if (geocodingUrl != BASE_URL) {
                Http http = new Http();
                HttpRequest request = new HttpRequest();
                request.setEndpoint(geocodingUrl);
                request.setMethod('GET');
                request.setHeader(
                    'http-referer',
                    URL.getSalesforceBaseUrl().toExternalForm()
                );
                HttpResponse response = http.send(request);
                if (response.getStatusCode() == 200) {
                    List<Coordinates> deserializedCoords = (List<Coordinates>) JSON.deserialize(
                        response.getBody(),
                        List<Coordinates>.class
                    );
                    coords = deserializedCoords[0];
                }
            }

            computedCoordinates.add(coords);
        }
        return computedCoordinates;
    }

    public class GeocodingAddress {
        @InvocableVariable
        public String street;
        @InvocableVariable
        public String city;
        @InvocableVariable
        public String state;
        @InvocableVariable
        public String country;
        @InvocableVariable
        public String postalcode;
    }

    public class Coordinates {
        @InvocableVariable
        public Decimal lat;
        @InvocableVariable
        public Decimal lon;
    }
}
```

## Fields
### `BASE_URL`

#### Signature
```apex
private static final BASE_URL
```

#### Type
String

## Methods
### `geocodeAddresses(addresses)`

`INVOCABLEMETHOD`

#### Signature
```apex
public static List<Coordinates> geocodeAddresses(List<GeocodingAddress> addresses)
```

#### Parameters
| Name | Type | Description |
|------|------|-------------|
| addresses | List&lt;GeocodingAddress&gt; |  |

#### Return Type
**List&lt;Coordinates&gt;**

## Classes
### GeocodingAddress Class

#### Fields
##### `street`

`INVOCABLEVARIABLE`

###### Signature
```apex
public street
```

###### Type
String

---

##### `city`

`INVOCABLEVARIABLE`

###### Signature
```apex
public city
```

###### Type
String

---

##### `state`

`INVOCABLEVARIABLE`

###### Signature
```apex
public state
```

###### Type
String

---

##### `country`

`INVOCABLEVARIABLE`

###### Signature
```apex
public country
```

###### Type
String

---

##### `postalcode`

`INVOCABLEVARIABLE`

###### Signature
```apex
public postalcode
```

###### Type
String

### Coordinates Class

#### Fields
##### `lat`

`INVOCABLEVARIABLE`

###### Signature
```apex
public lat
```

###### Type
Decimal

---

##### `lon`

`INVOCABLEVARIABLE`

###### Signature
```apex
public lon
```

###### Type
Decimal