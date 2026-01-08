# Toppy\Sendcloud\ContractsApi

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetAllContracts()**](ContractsApi.md#scPublicV2ScpGetAllContracts) | **GET** /contracts | Retrieve a list of contracts
[**scPublicV2ScpGetSpecificContract()**](ContractsApi.md#scPublicV2ScpGetSpecificContract) | **GET** /contracts/{id} | Retrieve a contract


## `scPublicV2ScpGetAllContracts()`

```php
scPublicV2ScpGetAllContracts($carrier, $isActive, $clientId, $name, $country): \Toppy\Sendcloud\Model\ScPublicV2ScpGetAllContracts200Response
```

Retrieve a list of contracts

This endpoint will retrieve information about all of the available contracts you have in your Sendcloud account. It will also return the `contract_id` of your contracts, which you can use to retrieve information about a specific contract.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ContractsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$carrier = 'carrier_example'; // string | The carrier you want to filter for, for instance: postnl. You can find available carriers in your Sendcloud account settings.
$isActive = True; // bool | Filter contracts based on the status.
$clientId = 'clientId_example'; // string | Filter direct contracts based on the client id.
$name = 'name_example'; // string | Filter direct contracts based on the contract's name.
$country = NL; // string | Filter contracts based on the country of the contract, it should be in the ISO 3166-1 alpha-2 format.

try {
    $result = $apiInstance->scPublicV2ScpGetAllContracts($carrier, $isActive, $clientId, $name, $country);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ContractsApi->scPublicV2ScpGetAllContracts: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier** | **string**| The carrier you want to filter for, for instance: postnl. You can find available carriers in your Sendcloud account settings. | [optional]
 **isActive** | **bool**| Filter contracts based on the status. | [optional]
 **clientId** | **string**| Filter direct contracts based on the client id. | [optional]
 **name** | **string**| Filter direct contracts based on the contract&#39;s name. | [optional]
 **country** | **string**| Filter contracts based on the country of the contract, it should be in the ISO 3166-1 alpha-2 format. | [optional]

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpGetAllContracts200Response**](../Model/ScPublicV2ScpGetAllContracts200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpGetSpecificContract()`

```php
scPublicV2ScpGetSpecificContract($id, $carrier, $isActive, $clientId, $name): \Toppy\Sendcloud\Model\Contract
```

Retrieve a contract

Include the `contract_ID` for a specific direct contract as a query parameter to retrieve information for this single contract.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ContractsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the contract you want to retrieve.
$carrier = 'carrier_example'; // string | The carrier you want to filter for, for instance: postnl. You can find available carriers in your Sendcloud account settings.
$isActive = True; // bool | Filter contracts based on the status.
$clientId = 'clientId_example'; // string | Filter direct contracts based on the client id.
$name = 'name_example'; // string | Filter direct contracts based on the contract's name.

try {
    $result = $apiInstance->scPublicV2ScpGetSpecificContract($id, $carrier, $isActive, $clientId, $name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ContractsApi->scPublicV2ScpGetSpecificContract: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the contract you want to retrieve. |
 **carrier** | **string**| The carrier you want to filter for, for instance: postnl. You can find available carriers in your Sendcloud account settings. | [optional]
 **isActive** | **bool**| Filter contracts based on the status. | [optional]
 **clientId** | **string**| Filter direct contracts based on the client id. | [optional]
 **name** | **string**| Filter direct contracts based on the contract&#39;s name. | [optional]

### Return type

[**\Toppy\Sendcloud\Model\Contract**](../Model/Contract.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
