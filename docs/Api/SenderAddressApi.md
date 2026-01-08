# Toppy\Sendcloud\SenderAddressApi

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2AddressesGetAllSenderAddresses()**](SenderAddressApi.md#scPublicV2AddressesGetAllSenderAddresses) | **GET** /user/addresses/sender | Retrieve a list of sender addresses
[**scPublicV2AddressesGetSenderAddressById()**](SenderAddressApi.md#scPublicV2AddressesGetSenderAddressById) | **GET** /user/addresses/sender/{id} | Retrieve a sender address


## `scPublicV2AddressesGetAllSenderAddresses()`

```php
scPublicV2AddressesGetAllSenderAddresses(): \Toppy\Sendcloud\Model\ScPublicV2AddressesGetAllSenderAddresses200Response
```

Retrieve a list of sender addresses

This endpoint returns a list of all the sender addresses which have been saved to your account. The response will include the `id` of each address, which you can include as a parameter when [**creating parcels**](https://api.sendcloud.dev/docs/sendcloud-public-api/parcels/operations/create-a-parcel) or [**looking up shipping methods**](https://api.sendcloud.dev/docs/sendcloud-public-api/shipping-methods/operations/list-shipping-methods) via the API.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\SenderAddressApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->scPublicV2AddressesGetAllSenderAddresses();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SenderAddressApi->scPublicV2AddressesGetAllSenderAddresses: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2AddressesGetAllSenderAddresses200Response**](../Model/ScPublicV2AddressesGetAllSenderAddresses200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2AddressesGetSenderAddressById()`

```php
scPublicV2AddressesGetSenderAddressById($id): \Toppy\Sendcloud\Model\ScPublicV2AddressesGetSenderAddressById200Response
```

Retrieve a sender address

You can retrieve information about a specific sender address saved to your account via this endpoint. Sender address `id` can be obtained via the [**Get sender address**](https://api.sendcloud.dev/docs/sendcloud-public-api/sender-addresses/operations/get-a-user-address-sender) endpoint.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\SenderAddressApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 1234; // int | The sender address unique identifier

try {
    $result = $apiInstance->scPublicV2AddressesGetSenderAddressById($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SenderAddressApi->scPublicV2AddressesGetSenderAddressById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The sender address unique identifier |

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2AddressesGetSenderAddressById200Response**](../Model/ScPublicV2AddressesGetSenderAddressById200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
