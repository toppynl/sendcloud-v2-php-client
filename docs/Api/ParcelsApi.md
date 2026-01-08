# Toppy\Sendcloud\ParcelsApi

All URIs are relative to https://account.sendcloud.com.

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
$parcelStatus = 56; // int | Returns parcels that have the requested status. For a list of possible statuses, see the [Parcel statuses](https://api.sendcloud.dev/docs/sendcloud-public-api/parcel-statuses/operations/list-parcel-statuses) endpoint
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
 **parcelStatus** | **int**| Returns parcels that have the requested status. For a list of possible statuses, see the [Parcel statuses](https://api.sendcloud.dev/docs/sendcloud-public-api/parcel-statuses/operations/list-parcel-statuses) endpoint | [optional]
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

This endpoint allows you to retrieve a specific parcel created under your Sendcloud credentials, based on the parcel `id`.

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

This endpoint lets you see which of your branded Return portals is associated with a specific parcel based on the provided parcel `id`. The URL which is retrieved will link directly to the parcel in the Sendcloud Return portal, so a **return parcel** can be created immediately based on the outgoing shipment. If no Return portal is configured, or if no brand is connected to the parcel, this endpoint will return a status code 404 error.

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

You can use this endpoint to:  1. **Cancel** an announced parcel; or, 2. **Delete** an unnanounced parcel  ### Cancelling a parcel When you **cancel** a parcel which is already announced (has a shipping label attached to it), you will still be able to find it via the `parcel_id` and the [**Retrieve a parcel**](https://api.sendcloud.dev/docs/sendcloud-public-api/parcels/operations/get-a-parcel) endpoint. In the Sendcloud panel, it will appear in your **Cancelled labels** overview.  **Insurance Notice**: If you proceed to ship a parcel that was initially cancelled, the parcel's insurance coverage will become void, and any insurance claims will not be valid for that shipment.  <!-- theme: warning --> >After 42 days, it's no longer possible to cancel a parcel, even if it hasn't been shipped.  ### Deleting a parcel When you **delete** a parcel which hasn't been announced, the parcel will be removed from the Sendcloud system and you will no longer be able to locate it via the parcel `id`. You will need to create the parcel again if you want to announce it at a later date.  ### Conditions for label cancellation  It's not always possible to cancel a parcel which is aleady announced. As a result, cancellation is not guaranteed and may be asynchronous depending on the state of the parcel. When you send a cancellation request via this endpoint, the response will indicate the status of the cancellation request.  <!-- theme: info --> >Each carrier will have different cancellation deadlines. Some carriers do not accept cancellation requests regardless of whether or not the label is cancelled within the deadline. You can find more information about cancellation deadlines on our <a href=\"https://support.sendcloud.com/hc/en-us/articles/360025143991-How-do-I-cancel-my-shipment-\">**Help Center**.</a>

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

This endpoint **creates a parcel** under your API credentials.  - You can choose to **announce the parcel** and create the shipping label at the same time as you create the parcel by providing the parameter `request_label: true`.   - When `request_label` is `false`, you can create the parcel but it will not be announced.  - You can then request the shipping label at a later date by changing the `request_label` parameter via the [**Update a parcel**](https://api.sendcloud.dev/docs/sendcloud-public-api/parcels/operations/update-a-parcel) endpoint. <!-- theme: warning --> >Pay attention to enter the correct `sender_address` if you wish to ship this parcel from a location **other than** your **default** sender address. You can find the `sender_address` for each of the addresses you've saved in your Sendcloud account via the [**Retrieve a sender address**](https://api.sendcloud.dev/docs/sendcloud-public-api/sender-addresses/operations/get-a-user-address-sender) endpoint.  <!-- theme: warning --> >Also keep in mind that `sender_address` id will not be saved / reflected in the created order (Incoming Orders View / Pack&Go) if `request_label` is `false`.  ### International parcel creation  If you want to create a parcel to ship to a destination country outside the EU, it's mandatory to include additional information related to the parcel contents. This allows Sendcloud to automatically generate the required customs documentation based on the international shipping method selected. After the shipping label and associated documents are generated, you can retrieve and download them via the [**Parcel documents**](https://api.sendcloud.dev/docs/sendcloud-public-api/parcel-documents/operations/get-a-parcel-document) endpoint.  <!-- theme: warning --> > If you have more than one added active contracts for specific carrier, you must fill `contract` attribute with your desired contract's ID in your request. You can get your contracts ID from [**Retrieve a list of contracts**](https://api.sendcloud.dev/docs/sendcloud-public-api/contracts/operations/list-contracts).  <!-- theme: info --> > International parcels require more information than domestic parcels. Certain customs documents must be created when shipping to countries outside the EU. For Sendcloud to successfully generate these documents, all the necessary information must be available in your parcel request. For more in-depth information on international shipping and the requirements, please check our <a href=\"https://sendcloud.dev/docs/shipping/international-shipping/\" target=\"_blank\">developers portal</a>.   ### Multicollo  More information on how to create multiple parcels within one shipment can be found on the <a href=\"https://sendcloud.dev/docs/shipping/multicollo/\" target=\"_blank\">related page</a> of our developers portal.

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
$sendcloudPartnerId = 'sendcloudPartnerId_example'; // string | If you are <a href=\"https://www.sendcloud.com/ecosystem/\" target=\"_blank\"> an official Sendcloud Tech Partner</a>, you can provide this additional request header for the system to recognize you. Sendcloud Partner UUID is provided to Sendcloud partners. The token is not required but if the header is set, the system will try to validate it. An unknown UUID will cause a 404 to return, whilst an invalid one will return 400 indicating `party is not a valid choice.`
$errors = 'errors_example'; // string | When making an API request, the errors query parameter can be used to determine the type of errors that should be included in the response. If `verbose` is specified, the response will only contain errors that Sendcloud has validated. These errors may include shipment details such as invalid addresses or missing postal codes. On the other hand, if `verbose-carrier` is specified, the response will include errors originating from the carriers side of the shipping process. These errors may result from technical or validation problems, such as connection failures or issues with the carrier`s systems, that prevent the shipment from being processed. More details are described on the page [**Parcels and error handling**](https://api.sendcloud.dev/docs/sendcloud-public-api/parcels-and-error-handling).
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
 **sendcloudPartnerId** | **string**| If you are &lt;a href&#x3D;\&quot;https://www.sendcloud.com/ecosystem/\&quot; target&#x3D;\&quot;_blank\&quot;&gt; an official Sendcloud Tech Partner&lt;/a&gt;, you can provide this additional request header for the system to recognize you. Sendcloud Partner UUID is provided to Sendcloud partners. The token is not required but if the header is set, the system will try to validate it. An unknown UUID will cause a 404 to return, whilst an invalid one will return 400 indicating &#x60;party is not a valid choice.&#x60; | [optional]
 **errors** | **string**| When making an API request, the errors query parameter can be used to determine the type of errors that should be included in the response. If &#x60;verbose&#x60; is specified, the response will only contain errors that Sendcloud has validated. These errors may include shipment details such as invalid addresses or missing postal codes. On the other hand, if &#x60;verbose-carrier&#x60; is specified, the response will include errors originating from the carriers side of the shipping process. These errors may result from technical or validation problems, such as connection failures or issues with the carrier&#x60;s systems, that prevent the shipment from being processed. More details are described on the page [**Parcels and error handling**](https://api.sendcloud.dev/docs/sendcloud-public-api/parcels-and-error-handling). | [optional]
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

This endpoint allows you to update a parcel which has **not yet been announced**, either to make changes to the original parcel data, or to request a shipping label if one hasn't yet been created. You'll need to include the `parcel_id` of the parcel you wish to update, which you can retrieve via the [**Get all parcels**](https://api.sendcloud.dev/docs/sendcloud-public-api/parcels/operations/list-parcels) endpoint. Note that, when updating a parcel with a `quantity` higher than 1 (e.g. a multi-collo shipment), setting `request_label=true` is not allowed, since multiple parcels will be returned.  <!-- theme: info --> >Once a parcel is announced and a label is created, it's not possible to make further changes via this endpoint.  ### Change address or parcel details If you need to make adjustments to details in the original parcel, such as customer address details, shipping method, etc., you can do so by adding any of the post request parameters listed under [**Create a parcel**](https://api.sendcloud.dev/docs/sendcloud-public-api/parcels/operations/create-a-parcel). The post request parameters must be nested under a `parcel` object.  ### Create a shipping label for a parcel which is not yet announced**: Use this endpoint to update the `request_label: false` parameter to `true`for parcels which you chose not to announce at the time of parcel creation, and which now need a shipping label.   ```json {   \"parcel\": {  \"id\": 184063539,  \"request_label\": true   } } ```  The shipping label will be announced and can be downloaded via the `Get a PDF label` endpoint.

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
