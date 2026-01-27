# Toppy\Sendcloud\IntegrationsApi

All URIs are relative to https://panel.sendcloud.sc/api/v2.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2OrdersDeleteDeleteAnIntegration()**](IntegrationsApi.md#scPublicV2OrdersDeleteDeleteAnIntegration) | **DELETE** /integrations/{id} | Delete an integration
[**scPublicV2OrdersGetRetrieveAListOfIntegrations()**](IntegrationsApi.md#scPublicV2OrdersGetRetrieveAListOfIntegrations) | **GET** /integrations | Retrieve a list of integrations
[**scPublicV2OrdersGetRetrieveAnIntegration()**](IntegrationsApi.md#scPublicV2OrdersGetRetrieveAnIntegration) | **GET** /integrations/{id} | Retrieve an integration
[**scPublicV2OrdersGetRetrieveIntegrationLogs()**](IntegrationsApi.md#scPublicV2OrdersGetRetrieveIntegrationLogs) | **GET** /integrations/{id}/logs | Retrieve exception logs for a specific integration
[**scPublicV2OrdersGetRetrieveIntegrationsLogs()**](IntegrationsApi.md#scPublicV2OrdersGetRetrieveIntegrationsLogs) | **GET** /integrations/logs | Retrieve all integration exception logs
[**scPublicV2OrdersPatchPartialUpdateAnIntegration()**](IntegrationsApi.md#scPublicV2OrdersPatchPartialUpdateAnIntegration) | **PATCH** /integrations/{id} | Partially update an integration
[**scPublicV2OrdersPostCreateIntegrationLogs()**](IntegrationsApi.md#scPublicV2OrdersPostCreateIntegrationLogs) | **POST** /integrations/{id}/logs | Create integration exceptions logs
[**scPublicV2OrdersPutUpdateAnIntegration()**](IntegrationsApi.md#scPublicV2OrdersPutUpdateAnIntegration) | **PUT** /integrations/{id} | Update an integration


## `scPublicV2OrdersDeleteDeleteAnIntegration()`

```php
scPublicV2OrdersDeleteDeleteAnIntegration($id)
```

Delete an integration

Delete a shop integration from the Sendcloud system.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\IntegrationsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the integration

try {
    $apiInstance->scPublicV2OrdersDeleteDeleteAnIntegration($id);
} catch (Exception $e) {
    echo 'Exception when calling IntegrationsApi->scPublicV2OrdersDeleteDeleteAnIntegration: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the integration |

### Return type

void (empty response body)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2OrdersGetRetrieveAListOfIntegrations()`

```php
scPublicV2OrdersGetRetrieveAListOfIntegrations($ordering): \Toppy\Sendcloud\Model\Integration[]
```

Retrieve a list of integrations

Retrieve information about all the shop integrations currently connected to your Sendcloud account.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\IntegrationsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$ordering = 'ordering_example'; // string | Specifies the field used to order the resulting response

try {
    $result = $apiInstance->scPublicV2OrdersGetRetrieveAListOfIntegrations($ordering);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IntegrationsApi->scPublicV2OrdersGetRetrieveAListOfIntegrations: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **string**| Specifies the field used to order the resulting response | [optional]

### Return type

[**\Toppy\Sendcloud\Model\Integration[]**](../Model/Integration.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2OrdersGetRetrieveAnIntegration()`

```php
scPublicV2OrdersGetRetrieveAnIntegration($id): \Toppy\Sendcloud\Model\Integration
```

Retrieve an integration

Retrieve information about a specific integration using its `id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\IntegrationsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the integration

try {
    $result = $apiInstance->scPublicV2OrdersGetRetrieveAnIntegration($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IntegrationsApi->scPublicV2OrdersGetRetrieveAnIntegration: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the integration |

### Return type

[**\Toppy\Sendcloud\Model\Integration**](../Model/Integration.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2OrdersGetRetrieveIntegrationLogs()`

```php
scPublicV2OrdersGetRetrieveIntegrationLogs($id): \Toppy\Sendcloud\Model\ScPublicV2OrdersGetRetrieveIntegrationsLogs200Response
```

Retrieve exception logs for a specific integration

Retrieve exception logs for a specific integration. These logs are created when integrations have problems making API requests to shop systems.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\IntegrationsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the integration to which the shipments belong

try {
    $result = $apiInstance->scPublicV2OrdersGetRetrieveIntegrationLogs($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IntegrationsApi->scPublicV2OrdersGetRetrieveIntegrationLogs: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the integration to which the shipments belong |

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2OrdersGetRetrieveIntegrationsLogs200Response**](../Model/ScPublicV2OrdersGetRetrieveIntegrationsLogs200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2OrdersGetRetrieveIntegrationsLogs()`

```php
scPublicV2OrdersGetRetrieveIntegrationsLogs(): \Toppy\Sendcloud\Model\ScPublicV2OrdersGetRetrieveIntegrationsLogs200Response
```

Retrieve all integration exception logs

Retrieve all integration exception logs. These logs are created when integrations have problems making API requests to shop systems.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\IntegrationsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->scPublicV2OrdersGetRetrieveIntegrationsLogs();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IntegrationsApi->scPublicV2OrdersGetRetrieveIntegrationsLogs: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2OrdersGetRetrieveIntegrationsLogs200Response**](../Model/ScPublicV2OrdersGetRetrieveIntegrationsLogs200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2OrdersPatchPartialUpdateAnIntegration()`

```php
scPublicV2OrdersPatchPartialUpdateAnIntegration($id, $integrationUpdate): \Toppy\Sendcloud\Model\IntegrationUpdate
```

Partially update an integration

Partially update settings for a specific integration using its `id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\IntegrationsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the integration
$integrationUpdate = {"shop_name":"Integration #1","shop_url":"https://example.com","last_updated_at":"2019-08-24T14:15:22Z","service_point_enabled":true,"service_point_carriers":["ups"],"webhook_active":true,"webhook_url":"https://example.com"}; // \Toppy\Sendcloud\Model\IntegrationUpdate

try {
    $result = $apiInstance->scPublicV2OrdersPatchPartialUpdateAnIntegration($id, $integrationUpdate);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IntegrationsApi->scPublicV2OrdersPatchPartialUpdateAnIntegration: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the integration |
 **integrationUpdate** | [**\Toppy\Sendcloud\Model\IntegrationUpdate**](../Model/IntegrationUpdate.md)|  | [optional]

### Return type

[**\Toppy\Sendcloud\Model\IntegrationUpdate**](../Model/IntegrationUpdate.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2OrdersPostCreateIntegrationLogs()`

```php
scPublicV2OrdersPostCreateIntegrationLogs($id, $integrationLog): \Toppy\Sendcloud\Model\IntegrationLog
```

Create integration exceptions logs

Create integration exception logs, which will appear in the connection issue log screen of the user's integration.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\IntegrationsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the integration to which the shipments belong
$integrationLog = {"integration_id":123,"user_id":123,"base_url":"https://example.com","full_url":"https://example.com/order-note.json","method":"POST","response_code":495,"response":{"headers":{"Cache-Control":"max-age=3600","Content-Type":"text/html; charset=utf-8","Connection":"keep-alive"},"body":"<!doctype html>\n<html>\n <head>\n <title>SSL Certificate Error</title>\n </head>\n </html>\n"},"request":{"headers":{"Cache-Control":"max-age=3600","Content-Type":"text/html; charset=utf-8","Connection":"keep-alive"},"payload":{"order_note":{"note":"Success"}}},"created_at":"2023-03-01T02:02:00+01:00","exception_type":"requests.exceptions.SSLError","exception":"An SSL error occurred"}; // \Toppy\Sendcloud\Model\IntegrationLog

try {
    $result = $apiInstance->scPublicV2OrdersPostCreateIntegrationLogs($id, $integrationLog);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IntegrationsApi->scPublicV2OrdersPostCreateIntegrationLogs: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the integration to which the shipments belong |
 **integrationLog** | [**\Toppy\Sendcloud\Model\IntegrationLog**](../Model/IntegrationLog.md)|  | [optional]

### Return type

[**\Toppy\Sendcloud\Model\IntegrationLog**](../Model/IntegrationLog.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2OrdersPutUpdateAnIntegration()`

```php
scPublicV2OrdersPutUpdateAnIntegration($id, $integrationUpdate): \Toppy\Sendcloud\Model\IntegrationUpdate
```

Update an integration

Update settings for a specific integration using its `id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\IntegrationsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the integration
$integrationUpdate = {"shop_name":"Integration #1","shop_url":"https://example.com","service_point_enabled":true,"service_point_carriers":["ups"],"webhook_active":true,"webhook_url":"https://example.com"}; // \Toppy\Sendcloud\Model\IntegrationUpdate | 

try {
    $result = $apiInstance->scPublicV2OrdersPutUpdateAnIntegration($id, $integrationUpdate);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IntegrationsApi->scPublicV2OrdersPutUpdateAnIntegration: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the integration |
 **integrationUpdate** | [**\Toppy\Sendcloud\Model\IntegrationUpdate**](../Model/IntegrationUpdate.md)|  | [optional]

### Return type

[**\Toppy\Sendcloud\Model\IntegrationUpdate**](../Model/IntegrationUpdate.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
