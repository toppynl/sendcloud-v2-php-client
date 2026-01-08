# Toppy\Sendcloud\LabelsApi

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetLabelByParcelId()**](LabelsApi.md#scPublicV2ScpGetLabelByParcelId) | **GET** /labels/{parcel_id} | Retrieve a Label
[**scPublicV2ScpPostLabelByParcelIds()**](LabelsApi.md#scPublicV2ScpPostLabelByParcelIds) | **POST** /labels | Bulk PDF label printing


## `scPublicV2ScpGetLabelByParcelId()`

```php
scPublicV2ScpGetLabelByParcelId($parcelId): \Toppy\Sendcloud\Model\LabelSingleResponse
```

Retrieve a Label

Retrieve a shipping label for a specific parcel in PDF format. You can lookup the `id` of a parcel via the `/parcels` endpoint.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\LabelsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$parcelId = 1; // int | Unique parcel identifier

try {
    $result = $apiInstance->scPublicV2ScpGetLabelByParcelId($parcelId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LabelsApi->scPublicV2ScpGetLabelByParcelId: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parcelId** | **int**| Unique parcel identifier |

### Return type

[**\Toppy\Sendcloud\Model\LabelSingleResponse**](../Model/LabelSingleResponse.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpPostLabelByParcelIds()`

```php
scPublicV2ScpPostLabelByParcelIds($scPublicV2ScpPostLabelByParcelIdsRequest): \Toppy\Sendcloud\Model\LabelMultipleResponse
```

Bulk PDF label printing

Request multiple shipping labels for an array of parcels at the same time.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\LabelsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$scPublicV2ScpPostLabelByParcelIdsRequest = new \Toppy\Sendcloud\Model\ScPublicV2ScpPostLabelByParcelIdsRequest(); // \Toppy\Sendcloud\Model\ScPublicV2ScpPostLabelByParcelIdsRequest

try {
    $result = $apiInstance->scPublicV2ScpPostLabelByParcelIds($scPublicV2ScpPostLabelByParcelIdsRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LabelsApi->scPublicV2ScpPostLabelByParcelIds: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scPublicV2ScpPostLabelByParcelIdsRequest** | [**\Toppy\Sendcloud\Model\ScPublicV2ScpPostLabelByParcelIdsRequest**](../Model/ScPublicV2ScpPostLabelByParcelIdsRequest.md)|  |

### Return type

[**\Toppy\Sendcloud\Model\LabelMultipleResponse**](../Model/LabelMultipleResponse.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
