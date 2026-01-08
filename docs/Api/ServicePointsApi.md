# Toppy\Sendcloud\ServicePointsApi

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ServicepointsGetCarriers()**](ServicePointsApi.md#scPublicV2ServicepointsGetCarriers) | **GET** /carriers | Retrieve a list of service point carriers
[**scPublicV2ServicepointsGetCheckAvailability()**](ServicePointsApi.md#scPublicV2ServicepointsGetCheckAvailability) | **GET** /service-points/{service_point_id}/check-availability | Retrieve availability of a service point
[**scPublicV2ServicepointsGetServicePointById()**](ServicePointsApi.md#scPublicV2ServicepointsGetServicePointById) | **GET** /service-points/{service_point_id} | Retrieve a service point
[**scPublicV2ServicepointsGetServicePoints()**](ServicePointsApi.md#scPublicV2ServicepointsGetServicePoints) | **GET** /service-points | Retrieve a list of service points


## `scPublicV2ServicepointsGetCarriers()`

```php
scPublicV2ServicepointsGetCarriers($accessToken): string[]
```

Retrieve a list of service point carriers

Retrieve a list of carriers which are enabled for service point delivery and can be accessed by the authenticating integration. Carriers can be enabled or disabled via the integration settings menu in the Sendcloud panel.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ServicePointsApi(
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
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ServicePointsApi(
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
scPublicV2ServicepointsGetServicePointById($servicePointId, $accessToken): \Toppy\Sendcloud\Model\ServicePoint
```

Retrieve a service point

Retrieve information about a specific service point location, including opening hours and applicable carriers, based on the service point `id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ServicePointsApi(
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

[**\Toppy\Sendcloud\Model\ServicePoint**](../Model/ServicePoint.md)

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
scPublicV2ServicepointsGetServicePoints($country, $xRequestedWith, $accessToken, $carrier, $latitude, $longitude, $neLatitude, $neLongitude, $swLatitude, $swLongitude, $address, $city, $postalCode, $houseNumber, $radius, $weight, $pudoId, $shopType, $generalShopType): \Toppy\Sendcloud\Model\ServicePoint[]
```

Retrieve a list of service points

Retrieve a list of available service points and the associated service point `id`. Only service points which are applicable to the carriers you have enabled in the integration settings menu will be returned. You can filter the results based on GPS location or `address` in combination with a search `radius`.  #### Notes - If provided, `latitude` and `longitude` specify a reference point from which a `distance` will be computed for each service point, and returned with the response. - Some carriers impose limits for certain service point, which means that they cannot accept parcels above a certain weight range. For this reason, you can specify the `weight` parameter to ensure that only usable service points are returned. - If provided, `postal_code` will return a list of service points which are located **exactly within the bounds** of the specified postal code area. - The `address` parameter retrieves a list of service points closest to the referenced location. You can adjust the radius of the results through the 'radius' parameter. - The `address` parameter accepts postal codes in addition to street names.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ServicePointsApi(
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

[**\Toppy\Sendcloud\Model\ServicePoint[]**](../Model/ServicePoint.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
