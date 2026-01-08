# Toppy\Sendcloud\UsersApi

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetCurrentUserData()**](UsersApi.md#scPublicV2ScpGetCurrentUserData) | **GET** /user | Retrieve the current user data


## `scPublicV2ScpGetCurrentUserData()`

```php
scPublicV2ScpGetCurrentUserData(): \Toppy\Sendcloud\Model\ScPublicV2ScpGetCurrentUserData200Response
```

Retrieve the current user data

Use this endpoint to request the data connected with your user account. The response includes your invoice address details, your Sendcloud username, a list of all the invoices, and the associated invoice `id` issued on your account.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->scPublicV2ScpGetCurrentUserData();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->scPublicV2ScpGetCurrentUserData: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpGetCurrentUserData200Response**](../Model/ScPublicV2ScpGetCurrentUserData200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
