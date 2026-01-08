# Toppy\Sendcloud\PickupsApi

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetAllPickups()**](PickupsApi.md#scPublicV2ScpGetAllPickups) | **GET** /pickups | Retrieve a list of pickups
[**scPublicV2ScpGetPickup()**](PickupsApi.md#scPublicV2ScpGetPickup) | **GET** /pickups/{id} | Retrieve a pickup
[**scPublicV2ScpPostPickup()**](PickupsApi.md#scPublicV2ScpPostPickup) | **POST** /pickups | Create a pickup


## `scPublicV2ScpGetAllPickups()`

```php
scPublicV2ScpGetAllPickups($limit): \Toppy\Sendcloud\Model\ScPublicV2ScpGetAllPickups200Response
```

Retrieve a list of pickups

This endpoint retrieves information about all the pickups which have been created from your account. This is limited to the carriers which support pickups via the API. The response includes information about when the pickup was scheduled, the latest status, the parcel tracking number and the time frame in which the pickup is due to take place.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\PickupsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$limit = 56; // int | Amount of pickups that will be shown per page.

try {
    $result = $apiInstance->scPublicV2ScpGetAllPickups($limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PickupsApi->scPublicV2ScpGetAllPickups: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Amount of pickups that will be shown per page. | [optional]

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpGetAllPickups200Response**](../Model/ScPublicV2ScpGetAllPickups200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpGetPickup()`

```php
scPublicV2ScpGetPickup($id): \Toppy\Sendcloud\Model\ScPublicV2ScpGetPickup200ResponseInner[]
```

Retrieve a pickup

This endpoint allows you to retrieve information about a specific pickup based on the pickup `id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\PickupsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the pickup you want to retrieve.

try {
    $result = $apiInstance->scPublicV2ScpGetPickup($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PickupsApi->scPublicV2ScpGetPickup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the pickup you want to retrieve. |

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpGetPickup200ResponseInner[]**](../Model/ScPublicV2ScpGetPickup200ResponseInner.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpPostPickup()`

```php
scPublicV2ScpPostPickup($scPublicV2ScpPostPickupRequestInner): \Toppy\Sendcloud\Model\ScPublicV2ScpPostPickup201ResponseInner[]
```

Create a pickup

This endpoint allows you to schedule a pickup with a [**supporting carrier**](https://api.sendcloud.dev/docs/sendcloud-public-api/pickups#which-carriers-support-pickups-via-the-api). You can schedule the pickup to take place from a location and time of your choosing, and include any additional instructions to the driver by including the `special_instructions` parameter. When a pickup is successfully scheduled a pickup `id` will be returned.  <!-- theme: warning --> > If you have more than one added active contracts for specific carrier, you must fill `contract` attribute with your desired contract's ID in your request. You can get your contracts ID from [**Retrieve a list of contracts**](https://api.sendcloud.dev/docs/sendcloud-public-api/contracts/operations/list-contracts).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\PickupsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$scPublicV2ScpPostPickupRequestInner = {"city":"Eindhoven","company_name":"Sendcloud","name":"John Doe","country":"NL","email":"example@sendcloud.com","address":"Stadhuisplein 10","address_2":"","pickup_from":"2022-04-06T12:00:00Z","pickup_until":"2022-04-06T17:00:00Z","postal_code":"5611 EM","quantity":20,"telephone":"0612345678","total_weight":"1","carrier":"dhl_express"}; // \Toppy\Sendcloud\Model\ScPublicV2ScpPostPickupRequestInner[] | 

try {
    $result = $apiInstance->scPublicV2ScpPostPickup($scPublicV2ScpPostPickupRequestInner);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PickupsApi->scPublicV2ScpPostPickup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scPublicV2ScpPostPickupRequestInner** | [**\Toppy\Sendcloud\Model\ScPublicV2ScpPostPickupRequestInner[]**](../Model/ScPublicV2ScpPostPickupRequestInner.md)|  | [optional]

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpPostPickup201ResponseInner[]**](../Model/ScPublicV2ScpPostPickup201ResponseInner.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
