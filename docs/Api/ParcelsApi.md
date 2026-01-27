# Toppy\Sendcloud\ParcelsApi

All URIs are relative to https://panel.sendcloud.sc/api/v2.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetAllParcels()**](ParcelsApi.md#scPublicV2ScpGetAllParcels) | **GET** /parcels | Retrieve parcels
[**scPublicV2ScpGetParcelById()**](ParcelsApi.md#scPublicV2ScpGetParcelById) | **GET** /parcels/{id} | Retrieve a parcel
[**scPublicV2ScpGetReturnPortalUrl()**](ParcelsApi.md#scPublicV2ScpGetReturnPortalUrl) | **GET** /parcels/{id}/return_portal_url | Retrieve a return portal URL
[**scPublicV2ScpPostCancelSpecific()**](ParcelsApi.md#scPublicV2ScpPostCancelSpecific) | **POST** /parcels/{id}/cancel | Cancel a parcel
[**scPublicV2ScpPostCreateParcel()**](ParcelsApi.md#scPublicV2ScpPostCreateParcel) | **POST** /parcels | Create a parcel or parcels
[**scPublicV2ScpPutUpdateAParcel()**](ParcelsApi.md#scPublicV2ScpPutUpdateAParcel) | **PUT** /parcels | Update a parcel


## `scPublicV2ScpGetAllParcels()`

```php
scPublicV2ScpGetAllParcels($parcelStatus, $trackingNumber, $externalReference, $orderNumber, $updatedAfter, $announcedAfter, $ids, $cursor, $errors): \Toppy\Sendcloud\Model\ScPublicV2ScpGetAllParcels200Response
```

Retrieve parcels

This endpoint allows you to retrieve a list of all the parcels which you have created or imported into your Sendcloud account under your API credentials. You can filter the results based on the query parameters provided below, in order to retrieve a specific parcel or list of parcels which match the defined criteria.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ParcelsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$parcelStatus = 56; // int | Returns parcels that have the requested status. For a list of possible statuses, see the [Retrieve a list of parcel statuses](/api/v2/parcel-statuses/retrieve-a-list-of-parcel-statuses) endpoint.
$trackingNumber = 'trackingNumber_example'; // string | Returns parcels that match a specified tracking number
$externalReference = 'externalReference_example'; // string | Returns parcels that match a specified external reference
$orderNumber = 'orderNumber_example'; // string | Returns an order that matches a specific `order_number` property from your parcels
$updatedAfter = 2018-02-26T11:01:47.505309+00:00; // string | Returns all orders which have been updated in our system after a given time. You can use the value of ISO 8601 DateTime string like this
$announcedAfter = 2018-02-26T11:01:47.505309+00:00; // string | Returns all orders which have been announced to the carrier after the given time. You can use the value of ISO 8601 DateTime string like this
$ids = 'ids_example'; // string | Filter results using a list of Parcel IDs. This is a comma separated list of IDs, it may not contain more then 100 IDs.
$cursor = 'cursor_example'; // string | Next and previous token that is used to paginate. The token is included in the response.
$errors = 'errors_example'; // string | If you are using this API for development purposes, you might want to use the errors query string in the URL. This allows you to visualize errors from the carrier.

try {
    $result = $apiInstance->scPublicV2ScpGetAllParcels($parcelStatus, $trackingNumber, $externalReference, $orderNumber, $updatedAfter, $announcedAfter, $ids, $cursor, $errors);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ParcelsApi->scPublicV2ScpGetAllParcels: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parcelStatus** | **int**| Returns parcels that have the requested status. For a list of possible statuses, see the [Retrieve a list of parcel statuses](/api/v2/parcel-statuses/retrieve-a-list-of-parcel-statuses) endpoint. | [optional]
 **trackingNumber** | **string**| Returns parcels that match a specified tracking number | [optional]
 **externalReference** | **string**| Returns parcels that match a specified external reference | [optional]
 **orderNumber** | **string**| Returns an order that matches a specific &#x60;order_number&#x60; property from your parcels | [optional]
 **updatedAfter** | **string**| Returns all orders which have been updated in our system after a given time. You can use the value of ISO 8601 DateTime string like this | [optional]
 **announcedAfter** | **string**| Returns all orders which have been announced to the carrier after the given time. You can use the value of ISO 8601 DateTime string like this | [optional]
 **ids** | **string**| Filter results using a list of Parcel IDs. This is a comma separated list of IDs, it may not contain more then 100 IDs. | [optional]
 **cursor** | **string**| Next and previous token that is used to paginate. The token is included in the response. | [optional]
 **errors** | **string**| If you are using this API for development purposes, you might want to use the errors query string in the URL. This allows you to visualize errors from the carrier. | [optional]

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpGetAllParcels200Response**](../Model/ScPublicV2ScpGetAllParcels200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpGetParcelById()`

```php
scPublicV2ScpGetParcelById($id): \Toppy\Sendcloud\Model\ScPublicV2ScpGetParcelById200Response
```

Retrieve a parcel

Retrieve a specific parcel by its `id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ParcelsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the parcel you want to retrieve

try {
    $result = $apiInstance->scPublicV2ScpGetParcelById($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ParcelsApi->scPublicV2ScpGetParcelById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the parcel you want to retrieve |

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpGetParcelById200Response**](../Model/ScPublicV2ScpGetParcelById200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpGetReturnPortalUrl()`

```php
scPublicV2ScpGetReturnPortalUrl($id): \Toppy\Sendcloud\Model\ScPublicV2ScpGetReturnPortalUrl200Response
```

Retrieve a return portal URL

Check which of your branded return portals is associated with a specific parcel using the parcel's `id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ParcelsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | ID of the parcel

try {
    $result = $apiInstance->scPublicV2ScpGetReturnPortalUrl($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ParcelsApi->scPublicV2ScpGetReturnPortalUrl: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of the parcel |

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpGetReturnPortalUrl200Response**](../Model/ScPublicV2ScpGetReturnPortalUrl200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpPostCancelSpecific()`

```php
scPublicV2ScpPostCancelSpecific($id): \Toppy\Sendcloud\Model\CancelParcelStatus
```

Cancel a parcel

Cancel an announced parcel (if supported by the carrier) or delete an unannounced parcel.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ParcelsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | ID of the parcel

try {
    $result = $apiInstance->scPublicV2ScpPostCancelSpecific($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ParcelsApi->scPublicV2ScpPostCancelSpecific: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| ID of the parcel |

### Return type

[**\Toppy\Sendcloud\Model\CancelParcelStatus**](../Model/CancelParcelStatus.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpPostCreateParcel()`

```php
scPublicV2ScpPostCreateParcel($sendcloudPartnerId, $errors, $scPublicV2ScpPostCreateParcelRequest): \Toppy\Sendcloud\Model\ScPublicV2ScpPostCreateParcel200Response
```

Create a parcel or parcels

Create one or multiple parcels, either to be immediately announced to the carrier, or to be created for later announcement.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ParcelsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$sendcloudPartnerId = 'sendcloudPartnerId_example'; // string | If you are an official [Sendcloud Tech Partner](https://www.sendcloud.com/ecosystem/), send your unique Sendcloud Partner UUID as a request header for the system to recognize you.  The header is not required but if it is set, the system will check it. An unknown or invalid UUID will cause a 400 error.
$errors = 'errors_example'; // string | When making an API request, the errors query parameter can be used to determine the type of errors that should be included in the response. If `verbose` is specified, the response will only contain errors that Sendcloud has validated. These errors may include shipment details such as invalid addresses or missing postal codes. On the other hand, if `verbose-carrier` is specified, the response will include errors originating from the carriers side of the shipping process. These errors may result from technical or validation problems, such as connection failures or issues with the carrier`s systems, that prevent the shipment from being processed. More details are described on the page [Handling parcel errors](/docs/shipping/handling-parcel-errors).
$scPublicV2ScpPostCreateParcelRequest = {"parcel":{"name":"John Doe","company_name":"Sendcloud","address":"Stadhuisplein","house_number":"10","city":"Eindhoven","postal_code":"5611 EM","telephone":"+31612345678","request_label":true,"email":"john@doe.com","data":{},"country":"NL","shipment":{"id":8},"weight":"10.000","order_number":"1234567890","insured_value":0,"total_order_value_currency":"GBP","total_order_value":"11.11","quantity":1,"shipping_method_checkout_name":"DHL Express Domestic"}}; // \Toppy\Sendcloud\Model\ScPublicV2ScpPostCreateParcelRequest

try {
    $result = $apiInstance->scPublicV2ScpPostCreateParcel($sendcloudPartnerId, $errors, $scPublicV2ScpPostCreateParcelRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ParcelsApi->scPublicV2ScpPostCreateParcel: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendcloudPartnerId** | **string**| If you are an official [Sendcloud Tech Partner](https://www.sendcloud.com/ecosystem/), send your unique Sendcloud Partner UUID as a request header for the system to recognize you.  The header is not required but if it is set, the system will check it. An unknown or invalid UUID will cause a 400 error. | [optional]
 **errors** | **string**| When making an API request, the errors query parameter can be used to determine the type of errors that should be included in the response. If &#x60;verbose&#x60; is specified, the response will only contain errors that Sendcloud has validated. These errors may include shipment details such as invalid addresses or missing postal codes. On the other hand, if &#x60;verbose-carrier&#x60; is specified, the response will include errors originating from the carriers side of the shipping process. These errors may result from technical or validation problems, such as connection failures or issues with the carrier&#x60;s systems, that prevent the shipment from being processed. More details are described on the page [Handling parcel errors](/docs/shipping/handling-parcel-errors). | [optional]
 **scPublicV2ScpPostCreateParcelRequest** | [**\Toppy\Sendcloud\Model\ScPublicV2ScpPostCreateParcelRequest**](../Model/ScPublicV2ScpPostCreateParcelRequest.md)|  | [optional]

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpPostCreateParcel200Response**](../Model/ScPublicV2ScpPostCreateParcel200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpPutUpdateAParcel()`

```php
scPublicV2ScpPutUpdateAParcel($scPublicV2ScpPutUpdateAParcelRequest): \Toppy\Sendcloud\Model\ScPublicV2ScpPutUpdateAParcel200Response
```

Update a parcel

Update a parcel which has **not yet been announced**, either to make changes to the original parcel data, or to request a shipping label if one hasn't yet been created.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ParcelsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$scPublicV2ScpPutUpdateAParcelRequest = {"parcel":{"id":3,"name":"Sendcloud Userß","address":"Stadhuisplein 10","postal_code":"5611 EM","city":"Eindhoven","country":"NL","company_name":"Summer Co"}}; // \Toppy\Sendcloud\Model\ScPublicV2ScpPutUpdateAParcelRequest

try {
    $result = $apiInstance->scPublicV2ScpPutUpdateAParcel($scPublicV2ScpPutUpdateAParcelRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ParcelsApi->scPublicV2ScpPutUpdateAParcel: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scPublicV2ScpPutUpdateAParcelRequest** | [**\Toppy\Sendcloud\Model\ScPublicV2ScpPutUpdateAParcelRequest**](../Model/ScPublicV2ScpPutUpdateAParcelRequest.md)|  | [optional]

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpPutUpdateAParcel200Response**](../Model/ScPublicV2ScpPutUpdateAParcel200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
