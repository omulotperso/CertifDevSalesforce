---
hide:
  - path
---

# GeocodingServiceTest Class

`ISTEST`

## AI-Generated description

Activate [AI configuration](https://sfdx-hardis.cloudity.com/salesforce-ai-setup/) to generate AI description

## Apex Code

```java
@isTest
private with sharing class GeocodingServiceTest {
    private static final String STREET = 'Camino del Jueves 26';
    private static final String CITY = 'Armilla';
    private static final String POSTAL_CODE = '18100';
    private static final String STATE = 'Granada';
    private static final String COUNTRY = 'Spain';
    private static final Decimal LATITUDE = 3.123;
    private static final Decimal LONGITUDE = 31.333;

    @isTest
    static void successResponse() {
        // GIVEN
        GeocodingService.GeocodingAddress address = new GeocodingService.GeocodingAddress();
        address.street = STREET;
        address.city = CITY;
        address.postalcode = POSTAL_CODE;
        address.state = STATE;
        address.country = COUNTRY;

        Test.setMock(
            HttpCalloutMock.class,
            new OpenStreetMapHttpCalloutMockImpl()
        );

        // WHEN
        List<GeocodingService.Coordinates> computedCoordinates = GeocodingService.geocodeAddresses(
            new List<GeocodingService.GeocodingAddress>{ address }
        );

        // THEN
        Assert.areEqual(1, computedCoordinates.size());
        Assert.areEqual(LATITUDE, computedCoordinates[0].lat);
        Assert.areEqual(LONGITUDE, computedCoordinates[0].lon);
    }
    @isTest
    static void blankAddress() {
        // GIVEN
        GeocodingService.GeocodingAddress address = new GeocodingService.GeocodingAddress();

        Test.setMock(
            HttpCalloutMock.class,
            new OpenStreetMapHttpCalloutMockImpl()
        );

        // WHEN
        List<GeocodingService.Coordinates> computedCoordinates = GeocodingService.geocodeAddresses(
            new List<GeocodingService.GeocodingAddress>{ address }
        );

        // THEN
        Assert.areEqual(1, computedCoordinates.size());
        Assert.isNull(computedCoordinates[0].lat);
        Assert.isNull(computedCoordinates[0].lon);
    }
    @isTest
    static void errorResponse() {
        // GIVEN
        GeocodingService.GeocodingAddress address = new GeocodingService.GeocodingAddress();
        address.street = STREET;
        address.city = CITY;
        address.postalcode = POSTAL_CODE;
        address.state = STATE;
        address.country = COUNTRY;

        Test.setMock(
            HttpCalloutMock.class,
            new OpenStreetMapHttpCalloutMockImplError()
        );

        // WHEN
        List<GeocodingService.Coordinates> computedCoordinates = GeocodingService.geocodeAddresses(
            new List<GeocodingService.GeocodingAddress>{ address }
        );

        // THEN
        Assert.areEqual(1, computedCoordinates.size());
        Assert.isNull(computedCoordinates[0].lat);
        Assert.isNull(computedCoordinates[0].lon);
    }

    public class OpenStreetMapHttpCalloutMockImpl implements HttpCalloutMock {
        public HTTPResponse respond(HTTPRequest req) {
            HttpResponse res = new HttpResponse();
            res.setHeader('Content-Type', 'application/json');
            res.setBody('[{"lat": ' + LATITUDE + ',"lon": ' + LONGITUDE + '}]');
            res.setStatusCode(200);
            return res;
        }
    }

    public class OpenStreetMapHttpCalloutMockImplError implements HttpCalloutMock {
        public HTTPResponse respond(HTTPRequest req) {
            HttpResponse res = new HttpResponse();
            res.setHeader('Content-Type', 'application/json');
            res.setStatusCode(400);
            return res;
        }
    }
}
```

## Fields
### `STREET`

#### Signature
```apex
private static final STREET
```

#### Type
String

---

### `CITY`

#### Signature
```apex
private static final CITY
```

#### Type
String

---

### `POSTAL_CODE`

#### Signature
```apex
private static final POSTAL_CODE
```

#### Type
String

---

### `STATE`

#### Signature
```apex
private static final STATE
```

#### Type
String

---

### `COUNTRY`

#### Signature
```apex
private static final COUNTRY
```

#### Type
String

---

### `LATITUDE`

#### Signature
```apex
private static final LATITUDE
```

#### Type
Decimal

---

### `LONGITUDE`

#### Signature
```apex
private static final LONGITUDE
```

#### Type
Decimal

## Methods
### `successResponse()`

`ISTEST`

#### Signature
```apex
private static void successResponse()
```

#### Return Type
**void**

---

### `blankAddress()`

`ISTEST`

#### Signature
```apex
private static void blankAddress()
```

#### Return Type
**void**

---

### `errorResponse()`

`ISTEST`

#### Signature
```apex
private static void errorResponse()
```

#### Return Type
**void**

## Classes
### OpenStreetMapHttpCalloutMockImpl Class

**Implements**

HttpCalloutMock

#### Methods
##### `respond(req)`

###### Signature
```apex
public HTTPResponse respond(HTTPRequest req)
```

###### Parameters
| Name | Type | Description |
|------|------|-------------|
| req | HTTPRequest |  |

###### Return Type
**HTTPResponse**

### OpenStreetMapHttpCalloutMockImplError Class

**Implements**

HttpCalloutMock

#### Methods
##### `respond(req)`

###### Signature
```apex
public HTTPResponse respond(HTTPRequest req)
```

###### Parameters
| Name | Type | Description |
|------|------|-------------|
| req | HTTPRequest |  |

###### Return Type
**HTTPResponse**