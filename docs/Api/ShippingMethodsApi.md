# Toppy\Sendcloud\ShippingMethodsApi

All URIs are relative to https://panel.sendcloud.sc/api/v2.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetAllShippingMethods()**](ShippingMethodsApi.md#scPublicV2ScpGetAllShippingMethods) | **GET** /shipping_methods | Retrieve a list of shipping methods
[**scPublicV2ScpGetShippingMethodById()**](ShippingMethodsApi.md#scPublicV2ScpGetShippingMethodById) | **GET** /shipping_methods/{id} | Retrieve a shipping method


## `scPublicV2ScpGetAllShippingMethods()`

```php
scPublicV2ScpGetAllShippingMethods($senderAddress, $servicePointId, $isReturn, $fromPostalCode, $toPostalCode, $toCountry, $cursor, $limit): \Toppy\Sendcloud\Model\ScPublicV2ScpGetAllShippingMethods200Response
```

Retrieve a list of shipping methods

Returns a detailed list of all the shipping methods which are available to you under your Sendcloud credentials.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ShippingMethodsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$senderAddress = 'senderAddress_example'; // string | The ID of the sender address for which you would like to know the available shipping methods. If you want to retrieve all available shipping methods, please use `all` as a value for this parameter. Required if the carrier is zonal.
$servicePointId = 56; // int | The ID of the service point for which you would like to know the available shipping methods.
$isReturn = True; // bool | If set to `true` the endpoint will return shipping methods which can be used for making a return  shipment.
$fromPostalCode = 01000; // string | Postal code of the sender. Required if the carrier is zonal.
$toPostalCode = 01000; // string | Postal code of the recipient. Required if the carrier is zonal. Also required to see if remote surcharges apply.
$toCountry = new \Toppy\Sendcloud\Model\\Toppy\Sendcloud\Model\CountryCodes(); // \Toppy\Sendcloud\Model\CountryCodes | A country ISO 2 code for the recipient country. Required if the carrier is zonal. Also required to see if remote surcharges apply.
$cursor = 56; // int | If `limit` is set, the result is divided into pages, `cursor` allows you to iterate over these pages. Next and previous page urls are returned in the result as well.
$limit = 56; // int | Sets amount of results to be returned per page, if not set all results are returned.

try {
    $result = $apiInstance->scPublicV2ScpGetAllShippingMethods($senderAddress, $servicePointId, $isReturn, $fromPostalCode, $toPostalCode, $toCountry, $cursor, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShippingMethodsApi->scPublicV2ScpGetAllShippingMethods: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **senderAddress** | **string**| The ID of the sender address for which you would like to know the available shipping methods. If you want to retrieve all available shipping methods, please use &#x60;all&#x60; as a value for this parameter. Required if the carrier is zonal. | [optional]
 **servicePointId** | **int**| The ID of the service point for which you would like to know the available shipping methods. | [optional]
 **isReturn** | **bool**| If set to &#x60;true&#x60; the endpoint will return shipping methods which can be used for making a return  shipment. | [optional]
 **fromPostalCode** | **string**| Postal code of the sender. Required if the carrier is zonal. | [optional]
 **toPostalCode** | **string**| Postal code of the recipient. Required if the carrier is zonal. Also required to see if remote surcharges apply. | [optional]
 **toCountry** | [**\Toppy\Sendcloud\Model\CountryCodes**](../Model/.md)| A country ISO 2 code for the recipient country. Required if the carrier is zonal. Also required to see if remote surcharges apply. | [optional]
 **cursor** | **int**| If &#x60;limit&#x60; is set, the result is divided into pages, &#x60;cursor&#x60; allows you to iterate over these pages. Next and previous page urls are returned in the result as well. | [optional]
 **limit** | **int**| Sets amount of results to be returned per page, if not set all results are returned. | [optional]

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpGetAllShippingMethods200Response**](../Model/ScPublicV2ScpGetAllShippingMethods200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpGetShippingMethodById()`

```php
scPublicV2ScpGetShippingMethodById($id, $senderAddress, $servicePointId, $isReturn, $fromPostalCode, $toPostalCode, $toCountry): \Toppy\Sendcloud\Model\ScPublicV2ScpGetShippingMethodById200Response
```

Retrieve a shipping method

Get information about a shipping method based on its `id` and your default sender address.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ShippingMethodsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Shipping method id
$senderAddress = 'senderAddress_example'; // string | The ID of the sender address for which you would like to know if the given shipping method is available.
$servicePointId = 56; // int | The ID of the service point for which you would like to know if the given shipping method is available.
$isReturn = True; // bool | If set to `true` the endpoint will return the  shipping method only if  it is a return shipping method.
$fromPostalCode = 01000; // string | Postal code of the sender.
$toPostalCode = 01000; // string | Postal code of the recipient.
$toCountry = new \Toppy\Sendcloud\Model\\Toppy\Sendcloud\Model\CountryCodes(); // \Toppy\Sendcloud\Model\CountryCodes | A country ISO 2 code for the recipient country.

try {
    $result = $apiInstance->scPublicV2ScpGetShippingMethodById($id, $senderAddress, $servicePointId, $isReturn, $fromPostalCode, $toPostalCode, $toCountry);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShippingMethodsApi->scPublicV2ScpGetShippingMethodById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Shipping method id |
 **senderAddress** | **string**| The ID of the sender address for which you would like to know if the given shipping method is available. | [optional]
 **servicePointId** | **int**| The ID of the service point for which you would like to know if the given shipping method is available. | [optional]
 **isReturn** | **bool**| If set to &#x60;true&#x60; the endpoint will return the  shipping method only if  it is a return shipping method. | [optional]
 **fromPostalCode** | **string**| Postal code of the sender. | [optional]
 **toPostalCode** | **string**| Postal code of the recipient. | [optional]
 **toCountry** | [**\Toppy\Sendcloud\Model\CountryCodes**](../Model/.md)| A country ISO 2 code for the recipient country. | [optional]

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpGetShippingMethodById200Response**](../Model/ScPublicV2ScpGetShippingMethodById200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
