# Toppy\Sendcloud\V2\ReturnsApi

All URIs are relative to https://panel.sendcloud.sc/api/v2.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetAllReturns()**](ReturnsApi.md#scPublicV2ScpGetAllReturns) | **GET** /returns | Retrieve a list of returns
[**scPublicV2ScpGetReturnById()**](ReturnsApi.md#scPublicV2ScpGetReturnById) | **GET** /returns/{id} | Retrieve a return


## `scPublicV2ScpGetAllReturns()`

```php
scPublicV2ScpGetAllReturns($cursor): \Toppy\Sendcloud\V2\Model\ScPublicV2ScpGetAllReturns200Response
```

Retrieve a list of returns

Retrieve a paginated list of all the returns belonging to the authenticated user, sorted by the creation date.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\ReturnsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$cursor = cj0xJnA9MzAw; // string | The cursor query string will be used as the pivot value to filter results. If no value is provided, the service must return the first page. The value is Base64 encoded GET parameters. example:   For a cursor string there are 3 possible parameters to encode:   - o: Offset   - r: Reverse   - p: Position   Combine into GET parameters. Example: r=1&p=300   Base 64 encoded it would become: cj0xJnA9MzAw   GET parameter in url would be https://some.url.com/api/endpoint/?cursor=cj0xJnA9MzAw

try {
    $result = $apiInstance->scPublicV2ScpGetAllReturns($cursor);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReturnsApi->scPublicV2ScpGetAllReturns: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **string**| The cursor query string will be used as the pivot value to filter results. If no value is provided, the service must return the first page. The value is Base64 encoded GET parameters. example:   For a cursor string there are 3 possible parameters to encode:   - o: Offset   - r: Reverse   - p: Position   Combine into GET parameters. Example: r&#x3D;1&amp;p&#x3D;300   Base 64 encoded it would become: cj0xJnA9MzAw   GET parameter in url would be https://some.url.com/api/endpoint/?cursor&#x3D;cj0xJnA9MzAw | [optional]

### Return type

[**\Toppy\Sendcloud\V2\Model\ScPublicV2ScpGetAllReturns200Response**](../Model/ScPublicV2ScpGetAllReturns200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpGetReturnById()`

```php
scPublicV2ScpGetReturnById($id): \Toppy\Sendcloud\V2\Model\ModelReturn
```

Retrieve a return

Retrieve the details of a specific return by its unique identifier.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\ReturnsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | The unique identifier of this return object

try {
    $result = $apiInstance->scPublicV2ScpGetReturnById($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ReturnsApi->scPublicV2ScpGetReturnById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The unique identifier of this return object |

### Return type

[**\Toppy\Sendcloud\V2\Model\ModelReturn**](../Model/ModelReturn.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
