# Toppy\Sendcloud\ParcelStatusesApi

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetRetrieveAllParcelStatuses()**](ParcelStatusesApi.md#scPublicV2ScpGetRetrieveAllParcelStatuses) | **GET** /parcels/statuses | Retrieve a list of parcel statuses


## `scPublicV2ScpGetRetrieveAllParcelStatuses()`

```php
scPublicV2ScpGetRetrieveAllParcelStatuses(): \Toppy\Sendcloud\Model\ScPublicV2ScpGetRetrieveAllParcelStatuses200ResponseInner[]
```

Retrieve a list of parcel statuses

Retrieve a list of all possible parcel statuses.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ParcelStatusesApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->scPublicV2ScpGetRetrieveAllParcelStatuses();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ParcelStatusesApi->scPublicV2ScpGetRetrieveAllParcelStatuses: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpGetRetrieveAllParcelStatuses200ResponseInner[]**](../Model/ScPublicV2ScpGetRetrieveAllParcelStatuses200ResponseInner.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
