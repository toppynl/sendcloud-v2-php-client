# Toppy\Sendcloud\V2\ServicePointsApi

All URIs are relative to https://panel.sendcloud.sc/api/v2.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ServicepointsGetCarriers()**](ServicePointsApi.md#scPublicV2ServicepointsGetCarriers) | **GET** /carriers | Retrieve a list of service point carriers
[**scPublicV2ServicepointsGetCheckAvailability()**](ServicePointsApi.md#scPublicV2ServicepointsGetCheckAvailability) | **GET** /service-points/{service_point_id}/check-availability | Retrieve availability of a service point
[**scPublicV2ServicepointsGetServicePointById()**](ServicePointsApi.md#scPublicV2ServicepointsGetServicePointById) | **GET** /service-points/{service_point_id} | Retrieve a service point
[**scPublicV2ServicepointsGetServicePoints()**](ServicePointsApi.md#scPublicV2ServicepointsGetServicePoints) | **GET** /service-points | Retrieve a list of service points
[**scPublicV2ServicepointsGetStore()**](ServicePointsApi.md#scPublicV2ServicepointsGetStore) | **GET** /service-points/{shop_type}/store | Create a selected service point object
[**scPublicV2ServicepointsPostCheckAndStore()**](ServicePointsApi.md#scPublicV2ServicepointsPostCheckAndStore) | **POST** /service-points/check_and_store | Create a selected servicepoint record after checking its availability
[**scPublicV2ServicepointsPostItemsFitInShipment()**](ServicePointsApi.md#scPublicV2ServicepointsPostItemsFitInShipment) | **POST** /service-points/items_fit_in_shipment | Service point carrier dimension check


## `scPublicV2ServicepointsGetCarriers()`

```php
scPublicV2ServicepointsGetCarriers($accessToken): string[]
```

Retrieve a list of service point carriers

Retrieve a list of carriers which are enabled for service point delivery and can be accessed by the authenticating integration. Carriers can be enabled or disabled via the integration settings menu in the Sendcloud platform.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\ServicePointsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$accessToken = 'accessToken_example'; // string | A JSON Web Token encoding either an “id” (user ID) or “iid” (integration ID) property. Alternatively, a public API key.

try {
    $result = $apiInstance->scPublicV2ServicepointsGetCarriers($accessToken);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServicePointsApi->scPublicV2ServicepointsGetCarriers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **string**| A JSON Web Token encoding either an “id” (user ID) or “iid” (integration ID) property. Alternatively, a public API key. | [optional]

### Return type

**string[]**

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ServicepointsGetCheckAvailability()`

```php
scPublicV2ServicepointsGetCheckAvailability($servicePointId, $accessToken): bool
```

Retrieve availability of a service point

Retrieve a `true` or `false` value which reflects the current availability of a given service point `id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\ServicePointsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$servicePointId = 3.4; // float | ID of the service point
$accessToken = 'accessToken_example'; // string | A JSON Web Token encoding either an “id” (user ID) or “iid” (integration ID) property. Alternatively, a public API key.

try {
    $result = $apiInstance->scPublicV2ServicepointsGetCheckAvailability($servicePointId, $accessToken);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServicePointsApi->scPublicV2ServicepointsGetCheckAvailability: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicePointId** | **float**| ID of the service point |
 **accessToken** | **string**| A JSON Web Token encoding either an “id” (user ID) or “iid” (integration ID) property. Alternatively, a public API key. | [optional]

### Return type

**bool**

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ServicepointsGetServicePointById()`

```php
scPublicV2ServicepointsGetServicePointById($servicePointId, $accessToken): \Toppy\Sendcloud\V2\Model\ServicePoint
```

Retrieve a service point

Retrieve information about a specific service point location, including opening hours and applicable carriers, based on the service point `id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\ServicePointsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$servicePointId = 3.4; // float | ID of the service point
$accessToken = 'accessToken_example'; // string | A JSON Web Token encoding either an “id” (user ID) or “iid” (integration ID) property. Alternatively, a public API key.

try {
    $result = $apiInstance->scPublicV2ServicepointsGetServicePointById($servicePointId, $accessToken);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServicePointsApi->scPublicV2ServicepointsGetServicePointById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicePointId** | **float**| ID of the service point |
 **accessToken** | **string**| A JSON Web Token encoding either an “id” (user ID) or “iid” (integration ID) property. Alternatively, a public API key. | [optional]

### Return type

[**\Toppy\Sendcloud\V2\Model\ServicePoint**](../Model/ServicePoint.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ServicepointsGetServicePoints()`

```php
scPublicV2ServicepointsGetServicePoints($country, $xRequestedWith, $accessToken, $carrier, $latitude, $longitude, $neLatitude, $neLongitude, $swLatitude, $swLongitude, $address, $city, $postalCode, $houseNumber, $radius, $weight, $pudoId, $shopType, $generalShopType): \Toppy\Sendcloud\V2\Model\ServicePoint[]
```

Retrieve a list of service points

Retrieve a list of available service points and the associated service point `id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\ServicePointsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$country = NL; // string | A country ISO 2 code
$xRequestedWith = 'xRequestedWith_example'; // string | Identifies the request as one made using JavaScript
$accessToken = 'accessToken_example'; // string | A JSON Web Token encoding either an “id” (user ID) or “iid” (integration ID) property. Alternatively, a public API key.
$carrier = postnl,dpd; // string | A comma-separated list of carrier codes (stringified)
$latitude = 'latitude_example'; // string | Used as a reference point to calculate the distance of the service point to the provided location.
$longitude = 'longitude_example'; // string | Used as a reference point to calculate the distance of the service point to the provided location.
$neLatitude = 'neLatitude_example'; // string | Latitude of the northeast corner of the bounding box.
$neLongitude = 'neLongitude_example'; // string | Longitude of the northeast corner of the bounding box.
$swLatitude = 'swLatitude_example'; // string | Latitude of the southwest corner of the bounding box.
$swLongitude = 'swLongitude_example'; // string | Longitude of the southwest corner of the bounding box.
$address = Stadhuisplein 10; // string | Address of the destination address. Can accept postal code instead of the street and the house number.
$city = Eindhoven; // string | City of the destination address.
$postalCode = 5611 EM; // string | Postal code of the destination address. Using `postal_code` will return you service points **located around that particular postal code**.
$houseNumber = 10; // string | House number of the destination address.
$radius = 56; // int | Radius (in meter) of a bounding circle. Can be used instead of the ne_latitude, ne_longitude, sw_latitude, and sw_longitude parameters to define a bounding box. Minimum value: 100 meters. Maximum value: 50 000 meters.
$weight = 3.4; // float | Weight (in kg.) of the parcel to be shipped to the service points. Certain carriers impose limits for certain service points that cannot accept parcels above a certain weight limit.
$pudoId = 'pudoId_example'; // string | DPD-specific query parameter.
$shopType = 'shopType_example'; // string | Filters results by their shop type.
$generalShopType = servicepoint; // string | Filters results by general shop type. Accepts a single value (e.g., `servicepoint`) or a comma-separated list of values (e.g., `servicepoint,locker,post_office`).  Possible options: - `servicepoint` - `locker` - `post_office` - `carrier_depot`

try {
    $result = $apiInstance->scPublicV2ServicepointsGetServicePoints($country, $xRequestedWith, $accessToken, $carrier, $latitude, $longitude, $neLatitude, $neLongitude, $swLatitude, $swLongitude, $address, $city, $postalCode, $houseNumber, $radius, $weight, $pudoId, $shopType, $generalShopType);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServicePointsApi->scPublicV2ServicepointsGetServicePoints: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **string**| A country ISO 2 code |
 **xRequestedWith** | **string**| Identifies the request as one made using JavaScript | [optional]
 **accessToken** | **string**| A JSON Web Token encoding either an “id” (user ID) or “iid” (integration ID) property. Alternatively, a public API key. | [optional]
 **carrier** | **string**| A comma-separated list of carrier codes (stringified) | [optional]
 **latitude** | **string**| Used as a reference point to calculate the distance of the service point to the provided location. | [optional]
 **longitude** | **string**| Used as a reference point to calculate the distance of the service point to the provided location. | [optional]
 **neLatitude** | **string**| Latitude of the northeast corner of the bounding box. | [optional]
 **neLongitude** | **string**| Longitude of the northeast corner of the bounding box. | [optional]
 **swLatitude** | **string**| Latitude of the southwest corner of the bounding box. | [optional]
 **swLongitude** | **string**| Longitude of the southwest corner of the bounding box. | [optional]
 **address** | **string**| Address of the destination address. Can accept postal code instead of the street and the house number. | [optional]
 **city** | **string**| City of the destination address. | [optional]
 **postalCode** | **string**| Postal code of the destination address. Using &#x60;postal_code&#x60; will return you service points **located around that particular postal code**. | [optional]
 **houseNumber** | **string**| House number of the destination address. | [optional]
 **radius** | **int**| Radius (in meter) of a bounding circle. Can be used instead of the ne_latitude, ne_longitude, sw_latitude, and sw_longitude parameters to define a bounding box. Minimum value: 100 meters. Maximum value: 50 000 meters. | [optional]
 **weight** | **float**| Weight (in kg.) of the parcel to be shipped to the service points. Certain carriers impose limits for certain service points that cannot accept parcels above a certain weight limit. | [optional]
 **pudoId** | **string**| DPD-specific query parameter. | [optional]
 **shopType** | **string**| Filters results by their shop type. | [optional]
 **generalShopType** | **string**| Filters results by general shop type. Accepts a single value (e.g., &#x60;servicepoint&#x60;) or a comma-separated list of values (e.g., &#x60;servicepoint,locker,post_office&#x60;).  Possible options: - &#x60;servicepoint&#x60; - &#x60;locker&#x60; - &#x60;post_office&#x60; - &#x60;carrier_depot&#x60; | [optional]

### Return type

[**\Toppy\Sendcloud\V2\Model\ServicePoint[]**](../Model/ServicePoint.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ServicepointsGetStore()`

```php
scPublicV2ServicepointsGetStore($shopType, $orderId, $shopIdentification, $servicePoint, $orderConfirmation, $checkoutShippingmethodId, $checkoutShippingmethodName, $toPostNumber): \Toppy\Sendcloud\V2\Model\ScPublicV2ServicepointsGetStore201Response
```

Create a selected service point object

Shopify-specific endpoint for storing an active service point

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Toppy\Sendcloud\V2\Api\ServicePointsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client()
);
$shopType = shopify; // string | Shop type for which a service point is being stored
$orderId = 123456789; // string | Order external id
$shopIdentification = best-website.com; // string | Identifier of the shop
$servicePoint = 1; // string | Service point id
$orderConfirmation = John Doe + 1234; // string |  
$checkoutShippingmethodId = shopify-Service Point Delivery DPD; // string | Unique identifier of the shipping method.
$checkoutShippingmethodName = Service Point Delivery DPD; // string | Name of the shipping method.
$toPostNumber = 1338; // string |  

try {
    $result = $apiInstance->scPublicV2ServicepointsGetStore($shopType, $orderId, $shopIdentification, $servicePoint, $orderConfirmation, $checkoutShippingmethodId, $checkoutShippingmethodName, $toPostNumber);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServicePointsApi->scPublicV2ServicepointsGetStore: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shopType** | **string**| Shop type for which a service point is being stored |
 **orderId** | **string**| Order external id |
 **shopIdentification** | **string**| Identifier of the shop |
 **servicePoint** | **string**| Service point id |
 **orderConfirmation** | **string**|   |
 **checkoutShippingmethodId** | **string**| Unique identifier of the shipping method. | [optional]
 **checkoutShippingmethodName** | **string**| Name of the shipping method. | [optional]
 **toPostNumber** | **string**|   | [optional]

### Return type

[**\Toppy\Sendcloud\V2\Model\ScPublicV2ServicepointsGetStore201Response**](../Model/ScPublicV2ServicepointsGetStore201Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ServicepointsPostCheckAndStore()`

```php
scPublicV2ServicepointsPostCheckAndStore($servicePoint, $accessToken2, $checkAvailability, $storeOrderId, $checkoutShippingmethodId, $checkoutShippingmethodName, $toPostNumber, $accessToken, $xRequestedWith): \Toppy\Sendcloud\V2\Model\ScPublicV2ServicepointsPostCheckAndStore200Response
```

Create a selected servicepoint record after checking its availability

Used for two main things: 1. Verify the availability and opening times of a service point 2. Store a selected service point in the Sendcloud platform (this is necessary for integration types which don’t allow storing data on orders like PrestaShop or Lightspeed)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\ServicePointsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$servicePoint = 3.4; // float
$accessToken2 = 'accessToken_example'; // string
$checkAvailability = True; // bool
$storeOrderId = 'storeOrderId_example'; // string
$checkoutShippingmethodId = 'checkoutShippingmethodId_example'; // string
$checkoutShippingmethodName = 'checkoutShippingmethodName_example'; // string
$toPostNumber = 'toPostNumber_example'; // string
$accessToken = 'accessToken_example'; // string | A JSON Web Token encoding either an “id” (user ID) or “iid” (integration ID) property. Alternatively, a public API key.
$xRequestedWith = 'xRequestedWith_example'; // string | Identifies the request as one made using JavaScript

try {
    $result = $apiInstance->scPublicV2ServicepointsPostCheckAndStore($servicePoint, $accessToken2, $checkAvailability, $storeOrderId, $checkoutShippingmethodId, $checkoutShippingmethodName, $toPostNumber, $accessToken, $xRequestedWith);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServicePointsApi->scPublicV2ServicepointsPostCheckAndStore: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicePoint** | **float**|  |
 **accessToken2** | **string**|  |
 **checkAvailability** | **bool**|  |
 **storeOrderId** | **string**|  |
 **checkoutShippingmethodId** | **string**|  |
 **checkoutShippingmethodName** | **string**|  |
 **toPostNumber** | **string**|  |
 **accessToken** | **string**| A JSON Web Token encoding either an “id” (user ID) or “iid” (integration ID) property. Alternatively, a public API key. | [optional]
 **xRequestedWith** | **string**| Identifies the request as one made using JavaScript | [optional]

### Return type

[**\Toppy\Sendcloud\V2\Model\ScPublicV2ServicepointsPostCheckAndStore200Response**](../Model/ScPublicV2ServicepointsPostCheckAndStore200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ServicepointsPostItemsFitInShipment()`

```php
scPublicV2ServicepointsPostItemsFitInShipment($accessToken, $scPublicV2ServicepointsPostItemsFitInShipmentRequest): \Toppy\Sendcloud\V2\Model\ScPublicV2ServicepointsPostItemsFitInShipment200Response
```

Service point carrier dimension check

Retrieve a list of carriers that support cart item dimensions based on carrier size restrictions for a provided list of carriers

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\ServicePointsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$accessToken = 'accessToken_example'; // string | A JSON Web Token encoding either an “id” (user ID) or “iid” (integration ID) property. Alternatively, a public API key.
$scPublicV2ServicepointsPostItemsFitInShipmentRequest = {"carrier_codes":["dpd","postnl"],"dimensions":[[100,10,1],[10,10,10]],"unit":"cm"}; // \Toppy\Sendcloud\V2\Model\ScPublicV2ServicepointsPostItemsFitInShipmentRequest | 

try {
    $result = $apiInstance->scPublicV2ServicepointsPostItemsFitInShipment($accessToken, $scPublicV2ServicepointsPostItemsFitInShipmentRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ServicePointsApi->scPublicV2ServicepointsPostItemsFitInShipment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **string**| A JSON Web Token encoding either an “id” (user ID) or “iid” (integration ID) property. Alternatively, a public API key. | [optional]
 **scPublicV2ServicepointsPostItemsFitInShipmentRequest** | [**\Toppy\Sendcloud\V2\Model\ScPublicV2ServicepointsPostItemsFitInShipmentRequest**](../Model/ScPublicV2ServicepointsPostItemsFitInShipmentRequest.md)|  | [optional]

### Return type

[**\Toppy\Sendcloud\V2\Model\ScPublicV2ServicepointsPostItemsFitInShipment200Response**](../Model/ScPublicV2ServicepointsPostItemsFitInShipment200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
