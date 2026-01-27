# Toppy\Sendcloud\TrackingApi

All URIs are relative to https://panel.sendcloud.sc/api/v2.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2TrackingGetDetailedTrackingInformation()**](TrackingApi.md#scPublicV2TrackingGetDetailedTrackingInformation) | **GET** /tracking/{tracking_number} | Retrieve tracking information of a parcel


## `scPublicV2TrackingGetDetailedTrackingInformation()`

```php
scPublicV2TrackingGetDetailedTrackingInformation($trackingNumber): \Toppy\Sendcloud\Model\DetailedTrackingBlob
```

Retrieve tracking information of a parcel

Fetches detailed tracking information, including the status history of the parcel.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\TrackingApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$trackingNumber = ISDUS939HHCXL29J; // string | The tracking number that the user received

try {
    $result = $apiInstance->scPublicV2TrackingGetDetailedTrackingInformation($trackingNumber);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TrackingApi->scPublicV2TrackingGetDetailedTrackingInformation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trackingNumber** | **string**| The tracking number that the user received |

### Return type

[**\Toppy\Sendcloud\Model\DetailedTrackingBlob**](../Model/DetailedTrackingBlob.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
