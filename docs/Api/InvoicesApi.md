# Toppy\Sendcloud\V2\InvoicesApi

All URIs are relative to https://panel.sendcloud.sc/api/v2.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetAllUserInvoices()**](InvoicesApi.md#scPublicV2ScpGetAllUserInvoices) | **GET** /user/invoices | Retrieve a list of invoices
[**scPublicV2ScpGetInvoiceById()**](InvoicesApi.md#scPublicV2ScpGetInvoiceById) | **GET** /user/invoices/{id} | Retrieve a specific invoice


## `scPublicV2ScpGetAllUserInvoices()`

```php
scPublicV2ScpGetAllUserInvoices(): \Toppy\Sendcloud\V2\Model\ScPublicV2ScpGetAllUserInvoices200Response
```

Retrieve a list of invoices

Retrieve all invoices (with the associated invoice `id`) which have been issued to your account to date.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\InvoicesApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->scPublicV2ScpGetAllUserInvoices();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InvoicesApi->scPublicV2ScpGetAllUserInvoices: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Toppy\Sendcloud\V2\Model\ScPublicV2ScpGetAllUserInvoices200Response**](../Model/ScPublicV2ScpGetAllUserInvoices200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpGetInvoiceById()`

```php
scPublicV2ScpGetInvoiceById($id): \Toppy\Sendcloud\V2\Model\ScPublicV2ScpGetInvoiceById200Response
```

Retrieve a specific invoice

Retrieve a single invoice issued to your Sendcloud account via its `id`. You can retrieve an invoice `id` via the [Retrieve a list of invoices](/api/v2/invoices/retrieve-a-list-of-invoices) endpoint.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\V2\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\V2\Api\InvoicesApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the invoice you want to retrieve

try {
    $result = $apiInstance->scPublicV2ScpGetInvoiceById($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InvoicesApi->scPublicV2ScpGetInvoiceById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the invoice you want to retrieve |

### Return type

[**\Toppy\Sendcloud\V2\Model\ScPublicV2ScpGetInvoiceById200Response**](../Model/ScPublicV2ScpGetInvoiceById200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
