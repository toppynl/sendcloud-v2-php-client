# Toppy\Sendcloud\OAuth2Api

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**oauth2TokenExchange()**](OAuth2Api.md#oauth2TokenExchange) | **POST** /oauth2/token | The OAuth 2.0 Token Endpoint


## `oauth2TokenExchange()`

```php
oauth2TokenExchange($grantType, $clientId, $code, $redirectUri, $refreshToken): \Toppy\Sendcloud\Model\OAuth2TokenExchange
```

The OAuth 2.0 Token Endpoint

Use open source libraries to perform OAuth 2.0 available for any programming language.  You can find a list of libraries here https://oauth.net/code/

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\OAuth2Api(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$grantType = 'grantType_example'; // string
$clientId = 'clientId_example'; // string
$code = 'code_example'; // string
$redirectUri = 'redirectUri_example'; // string
$refreshToken = 'refreshToken_example'; // string

try {
    $result = $apiInstance->oauth2TokenExchange($grantType, $clientId, $code, $redirectUri, $refreshToken);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuth2Api->oauth2TokenExchange: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantType** | **string**|  |
 **clientId** | **string**|  | [optional]
 **code** | **string**|  | [optional]
 **redirectUri** | **string**|  | [optional]
 **refreshToken** | **string**|  | [optional]

### Return type

[**\Toppy\Sendcloud\Model\OAuth2TokenExchange**](../Model/OAuth2TokenExchange.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
