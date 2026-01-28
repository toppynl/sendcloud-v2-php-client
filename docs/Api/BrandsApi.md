# Toppy\Sendcloud\V2\BrandsApi

All URIs are relative to https://panel.sendcloud.sc/api/v2.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2BrandsGetAllUserBrands()**](BrandsApi.md#scPublicV2BrandsGetAllUserBrands) | **GET** /brands | Retrieve a list of brands
[**scPublicV2BrandsGetUserBrandById()**](BrandsApi.md#scPublicV2BrandsGetUserBrandById) | **GET** /brands/{id} | Retrieve a brand


## `scPublicV2BrandsGetAllUserBrands()`

```php
scPublicV2BrandsGetAllUserBrands(): \Toppy\Sendcloud\V2\Model\ScPublicV2BrandsGetAllUserBrands200Response
```

Retrieve a list of brands

Retrieves a list of all brands and their associated properties.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\BrandsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->scPublicV2BrandsGetAllUserBrands();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrandsApi->scPublicV2BrandsGetAllUserBrands: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Toppy\Sendcloud\V2\Model\ScPublicV2BrandsGetAllUserBrands200Response**](../Model/ScPublicV2BrandsGetAllUserBrands200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2BrandsGetUserBrandById()`

```php
scPublicV2BrandsGetUserBrandById($id): \Toppy\Sendcloud\V2\Model\Brand
```

Retrieve a brand

Retrieves a user's configured brand and its properties, identified by its unique ID

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\BrandsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The unique id of the user's configured brand

try {
    $result = $apiInstance->scPublicV2BrandsGetUserBrandById($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrandsApi->scPublicV2BrandsGetUserBrandById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The unique id of the user&#39;s configured brand |

### Return type

[**\Toppy\Sendcloud\V2\Model\Brand**](../Model/Brand.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
