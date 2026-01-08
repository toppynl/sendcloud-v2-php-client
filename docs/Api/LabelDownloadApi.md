# Toppy\Sendcloud\LabelDownloadApi

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetLabelDocumentLabelPrinter()**](LabelDownloadApi.md#scPublicV2ScpGetLabelDocumentLabelPrinter) | **GET** /labels/label_printer/{parcel_id} | Retrieve a PDF label for a specific label printer
[**scPublicV2ScpGetLabelDocumentMultipleLabelPrinter()**](LabelDownloadApi.md#scPublicV2ScpGetLabelDocumentMultipleLabelPrinter) | **GET** /labels/label_printer | Retrieve a PDF label for a label printer
[**scPublicV2ScpGetLabelDocumentMultipleNormalPrinter()**](LabelDownloadApi.md#scPublicV2ScpGetLabelDocumentMultipleNormalPrinter) | **GET** /labels/normal_printer | Retrieve multiple PDF labels
[**scPublicV2ScpGetLabelDocumentNormalPrinter()**](LabelDownloadApi.md#scPublicV2ScpGetLabelDocumentNormalPrinter) | **GET** /labels/normal_printer/{parcel_id} | Retrieve a PDF label


## `scPublicV2ScpGetLabelDocumentLabelPrinter()`

```php
scPublicV2ScpGetLabelDocumentLabelPrinter($parcelId): \SplFileObject
```

Retrieve a PDF label for a specific label printer

Retrieve a shipping label for a specific parcel in PDF format for a label printer.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\LabelDownloadApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$parcelId = 1; // int | Unique parcel identifier

try {
    $result = $apiInstance->scPublicV2ScpGetLabelDocumentLabelPrinter($parcelId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LabelDownloadApi->scPublicV2ScpGetLabelDocumentLabelPrinter: ', $e->getMessage(), PHP_EOL;
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

## `scPublicV2ScpGetLabelDocumentMultipleLabelPrinter()`

```php
scPublicV2ScpGetLabelDocumentMultipleLabelPrinter($ids): \SplFileObject
```

Retrieve a PDF label for a label printer

Retrieve PDF label documents suitable for label printers for multiple different parcels at the same time.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\LabelDownloadApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$ids = [1,2,3]; // int[] | Comma separated parcel ids

try {
    $result = $apiInstance->scPublicV2ScpGetLabelDocumentMultipleLabelPrinter($ids);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LabelDownloadApi->scPublicV2ScpGetLabelDocumentMultipleLabelPrinter: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**int[]**](../Model/int.md)| Comma separated parcel ids |

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

## `scPublicV2ScpGetLabelDocumentMultipleNormalPrinter()`

```php
scPublicV2ScpGetLabelDocumentMultipleNormalPrinter($ids, $startFrom): \SplFileObject
```

Retrieve multiple PDF labels

Retrieve PDF label documents suitable for normal printers for multiple different parcels at the same time.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\LabelDownloadApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$ids = [1,2,3]; // int[] | Comma separated parcel ids
$startFrom = 56; // int | The position of the label on an A4 page.  0 - Top left 1 - Top right 2 - Bottom left 3 - Bottom right

try {
    $result = $apiInstance->scPublicV2ScpGetLabelDocumentMultipleNormalPrinter($ids, $startFrom);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LabelDownloadApi->scPublicV2ScpGetLabelDocumentMultipleNormalPrinter: ', $e->getMessage(), PHP_EOL;
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

## `scPublicV2ScpGetLabelDocumentNormalPrinter()`

```php
scPublicV2ScpGetLabelDocumentNormalPrinter($parcelId, $startFrom): \SplFileObject
```

Retrieve a PDF label

Retrieve a shipping label for a specific parcel in PDF format for a normal printer.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\LabelDownloadApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$parcelId = 1; // int | Unique parcel identifier
$startFrom = 56; // int | The position of the label on an A4 page.  0 - Top left 1 - Top right 2 - Bottom left 3 - Bottom right

try {
    $result = $apiInstance->scPublicV2ScpGetLabelDocumentNormalPrinter($parcelId, $startFrom);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LabelDownloadApi->scPublicV2ScpGetLabelDocumentNormalPrinter: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parcelId** | **int**| Unique parcel identifier |
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
