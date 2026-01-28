# Toppy\Sendcloud\V2\CustomsDocumentsDownloadApi

All URIs are relative to https://panel.sendcloud.sc/api/v2.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetCustomsDocumentMultipleNormalPrinter()**](CustomsDocumentsDownloadApi.md#scPublicV2ScpGetCustomsDocumentMultipleNormalPrinter) | **GET** /customs_declaration/normal_printer | Retrieve multiple customs declaration PDFs
[**scPublicV2ScpGetCustomsDocumentNormalPrinter()**](CustomsDocumentsDownloadApi.md#scPublicV2ScpGetCustomsDocumentNormalPrinter) | **GET** /customs_declaration/normal_printer/{parcel_id} | Retrieve a customs declaration PDF


## `scPublicV2ScpGetCustomsDocumentMultipleNormalPrinter()`

```php
scPublicV2ScpGetCustomsDocumentMultipleNormalPrinter($ids, $startFrom): \SplFileObject
```

Retrieve multiple customs declaration PDFs

Retrieve PDF customs documents suitable for normal printers for multiple different parcels at the same time.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\CustomsDocumentsDownloadApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$ids = [1,2,3]; // int[] | Comma separated parcel ids
$startFrom = 56; // int | The position of the label on an A4 page.  0 - Top left 1 - Top right 2 - Bottom left 3 - Bottom right

try {
    $result = $apiInstance->scPublicV2ScpGetCustomsDocumentMultipleNormalPrinter($ids, $startFrom);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CustomsDocumentsDownloadApi->scPublicV2ScpGetCustomsDocumentMultipleNormalPrinter: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**int[]**](../Model/int.md)| Comma separated parcel ids |
 **startFrom** | **int**| The position of the label on an A4 page.  0 - Top left 1 - Top right 2 - Bottom left 3 - Bottom right |

### Return type

**\SplFileObject**

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/pdf`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpGetCustomsDocumentNormalPrinter()`

```php
scPublicV2ScpGetCustomsDocumentNormalPrinter($parcelId): \SplFileObject
```

Retrieve a customs declaration PDF

Retrieve the customs documents associated with a label in PDF format for a normal printer.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\CustomsDocumentsDownloadApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$parcelId = 1; // int | Unique parcel identifier

try {
    $result = $apiInstance->scPublicV2ScpGetCustomsDocumentNormalPrinter($parcelId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CustomsDocumentsDownloadApi->scPublicV2ScpGetCustomsDocumentNormalPrinter: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parcelId** | **int**| Unique parcel identifier |

### Return type

**\SplFileObject**

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/pdf`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
