# Toppy\Sendcloud\ShippingMethodsApi

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetAllShippingMethods()**](ShippingMethodsApi.md#scPublicV2ScpGetAllShippingMethods) | **GET** /shipping_methods | Retrieve a list of shipping methods
[**scPublicV2ScpGetShippingMethodById()**](ShippingMethodsApi.md#scPublicV2ScpGetShippingMethodById) | **GET** /shipping_methods/{id} | Retrieve a shipping method


## `scPublicV2ScpGetAllShippingMethods()`

```php
scPublicV2ScpGetAllShippingMethods($senderAddress, $servicePointId, $isReturn, $fromPostalCode, $toPostalCode, $toCountry, $cursor, $limit): \Toppy\Sendcloud\Model\ScPublicV2ScpGetAllShippingMethods200Response
```

Retrieve a list of shipping methods

This endpoint will return a detailed list of all the shipping methods which are available to you under your Sendcloud credentials. You can use this endpoint to find a specific shipping method `id`, which you can then specify in your request to [**Create a parcel**](https://api.sendcloud.dev/docs/sendcloud-public-api/parcels/operations/create-a-parcel).  If a shipping method `id` value is present, and if the `request_label` parameter has the value `true`, then a shipping label is created and the parcel is announced.  The shipping methods returned are based on the following factors: 1. The carriers you have [**enabled**](https://sendcloud.dev/docs/getting-started/) in your Sendcloud account; 2. (Optional) The direct [**carrier contracts**](https://sendcloud.dev/docs/getting-started/carrier-contracts/) you have connected; and, 3. Your [**sender address**](https://sendcloud.dev/docs/getting-started/sender-address/)  <!-- theme: info -->  >**Tip:** Via this endpoint you can only retrieve shipping methods based on three parameters: `sender_address`, `service_point_id` and `is_return`. If you need to filter the results because you require a method which contains a specific shipping functionality or other criteria, you can refer to the [**Retrieve a list of shipping products**](https://api.sendcloud.dev/docs/sendcloud-public-api/shipping-products/operations/list-shipping-products) endpoint.  <!-- theme: info --> > In order to view **remote surcharges**, you are required to provide the `to_country` and `to_postal_code`. Similarly, to access **zonal prices**, you need to provide `to_country`, `from_postal_code` and `to_postal_code`. This information ensures accurate and customized pricing based on the specific location, enabling you to understand any additional charges associated with remote areas and access pricing based on their designated zones.  ### Specifying a sender address  You can have multiple sender addresses stored in your Sendcloud account. This endpoint will return the shipping methods associated with your **default** sender address, **unless** you provide a specific `sender_adress` `id`.  <!-- theme: info -->  > **Tip:** You can find the `id` for each of your sender addresses via the [**Retrieve a single sender address**](https://api.sendcloud.dev/docs/sendcloud-public-api/sender-addresses/operations/get-a-user-address-sender) endpoint.  ### Use case  For example, your default sender address may be based in the Netherlands, but you have a second sender address based in Austria. If you don't specify a `sender_address` `id`, this endpoint will **only** return shipping methods applicable for shipments from the Netherlands.  To see shipping methods applicable for Austria, e.g. from DPD Austria, specify the `id` for your Austrian sender address in the HTTP request. The retrieved results will now include carriers such as Post AT, DPD Austria, etc, depending on your [**enabled carriers**](https://sendcloud.dev/docs/getting-started/).  **Example:**  <span style=\"background-color: #1D97FF\">GET</span> `https://panel.sendcloud.sc/api/v2/shipping_methods?sender_address={ID}`   ---  ### Use cases  - **Find a service point delivery shipping method**  If you want to retrieve a list of shipping methods which are applicable for **service point delivery**, provide a `service_point_id` in the request. You can find an appropriate `service_point_id` via the [**Service Points API**](https://api.sendcloud.dev/docs/sendcloud-public-api/service-points).   - **Find a suitable shipping method for a return**  Return shipping methods are treated differently than methods for outgoing parcels. If you want to filter the results to show only the methods which you can apply to return parcels, include the argument `is_return: \"true\"`.  - **Invalid shipment ID Error message** If you try to [**Create a parcel**](https://api.sendcloud.dev/docs/sendcloud-public-api/parcels/operations/create-a-parcel) but receive the error message \"Invalid shipment id\", this could be because the specified `id` relates to a shipping method which is not possible for the given destination address.  For example, if you need to ship a parcel internationally but the specific shipping method only supports national (domestic) shipping, then you would need to lookup a new shipping method `id` which supports method of delivery and change the request.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ShippingMethodsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$senderAddress = 'senderAddress_example'; // string | The ID of the sender address for which you would like to know the available shipping methods. If you want to retrieve all available shipping methods, please use `all` as a value for this parameter. Required if the carrier is zonal.
$servicePointId = 56; // int | The ID of the service point for which you would like to know the available shipping methods.
$isReturn = True; // bool | If set to `true` the endpoint will return shipping methods which can be used for making a return  shipment.
$fromPostalCode = 01000; // string | Postal code of the sender. Required if the carrier is zonal.
$toPostalCode = 01000; // string | Postal code of the recipient. Required if the carrier is zonal. Also required to see if remote surcharges apply.
$toCountry = new \Toppy\Sendcloud\Model\\Toppy\Sendcloud\Model\CountryCodes(); // \Toppy\Sendcloud\Model\CountryCodes | A country ISO 2 code for the recipient country. Required if the carrier is zonal. Also required to see if remote surcharges apply.
$cursor = 56; // int | If `limit` is set, the result is divided into pages, `cursor` allows you to iterate over these pages. Next and previous page urls are returned in the result as well.
$limit = 56; // int | Sets amount of results to be returned per page, if not set all results are returned.

try {
    $result = $apiInstance->scPublicV2ScpGetAllShippingMethods($senderAddress, $servicePointId, $isReturn, $fromPostalCode, $toPostalCode, $toCountry, $cursor, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShippingMethodsApi->scPublicV2ScpGetAllShippingMethods: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **senderAddress** | **string**| The ID of the sender address for which you would like to know the available shipping methods. If you want to retrieve all available shipping methods, please use &#x60;all&#x60; as a value for this parameter. Required if the carrier is zonal. | [optional]
 **servicePointId** | **int**| The ID of the service point for which you would like to know the available shipping methods. | [optional]
 **isReturn** | **bool**| If set to &#x60;true&#x60; the endpoint will return shipping methods which can be used for making a return  shipment. | [optional]
 **fromPostalCode** | **string**| Postal code of the sender. Required if the carrier is zonal. | [optional]
 **toPostalCode** | **string**| Postal code of the recipient. Required if the carrier is zonal. Also required to see if remote surcharges apply. | [optional]
 **toCountry** | [**\Toppy\Sendcloud\Model\CountryCodes**](../Model/.md)| A country ISO 2 code for the recipient country. Required if the carrier is zonal. Also required to see if remote surcharges apply. | [optional]
 **cursor** | **int**| If &#x60;limit&#x60; is set, the result is divided into pages, &#x60;cursor&#x60; allows you to iterate over these pages. Next and previous page urls are returned in the result as well. | [optional]
 **limit** | **int**| Sets amount of results to be returned per page, if not set all results are returned. | [optional]

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpGetAllShippingMethods200Response**](../Model/ScPublicV2ScpGetAllShippingMethods200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpGetShippingMethodById()`

```php
scPublicV2ScpGetShippingMethodById($id, $senderAddress, $servicePointId, $isReturn, $fromPostalCode, $toPostalCode, $toCountry): \Toppy\Sendcloud\Model\ScPublicV2ScpGetShippingMethodById200Response
```

Retrieve a shipping method

This endpoint will return information about a shipping method based on the provided shipping method `id` and your **default sender address**.   As described in [**Retrieve a list of shipping methods**](https://api.sendcloud.dev/docs/sendcloud-public-api/shipping-methods/operations/list-shipping-methods), to retrieve information about a shipping method which operates in a different country than your default sender address, provide a different `sender_address` `id`.  <!-- theme: info --> > To see zonal carrier shipping methods, you need to provide `to_country`, `from_postal_code` and `to_postal_code` query parameters.  **Example:**  <span style=\"background-color: #1D97FF\"> GET</span> `https://panel.sendcloud.sc/api/v2/shipping_methods/365?sender_address=102964`   ```json {  \"shipping_method\": {   \"id\": 365,   \"name\": \"Colissimo Service Point 0.75-1kg\",   \"carrier\": \"colissimo\",   \"min_weight\": \"0.751\",   \"max_weight\": \"1.001\",   \"service_point_input\": \"required\",   \"price\": 0,   \"countries\": [   ```

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ShippingMethodsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | Shipping method id
$senderAddress = 'senderAddress_example'; // string | The ID of the sender address for which you would like to know if the given shipping method is available.
$servicePointId = 56; // int | The ID of the service point for which you would like to know if the given shipping method is available.
$isReturn = True; // bool | If set to `true` the endpoint will return the  shipping method only if  it is a return shipping method.
$fromPostalCode = 01000; // string | Postal code of the sender.
$toPostalCode = 01000; // string | Postal code of the recipient.
$toCountry = new \Toppy\Sendcloud\Model\\Toppy\Sendcloud\Model\CountryCodes(); // \Toppy\Sendcloud\Model\CountryCodes | A country ISO 2 code for the recipient country.

try {
    $result = $apiInstance->scPublicV2ScpGetShippingMethodById($id, $senderAddress, $servicePointId, $isReturn, $fromPostalCode, $toPostalCode, $toCountry);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShippingMethodsApi->scPublicV2ScpGetShippingMethodById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Shipping method id |
 **senderAddress** | **string**| The ID of the sender address for which you would like to know if the given shipping method is available. | [optional]
 **servicePointId** | **int**| The ID of the service point for which you would like to know if the given shipping method is available. | [optional]
 **isReturn** | **bool**| If set to &#x60;true&#x60; the endpoint will return the  shipping method only if  it is a return shipping method. | [optional]
 **fromPostalCode** | **string**| Postal code of the sender. | [optional]
 **toPostalCode** | **string**| Postal code of the recipient. | [optional]
 **toCountry** | [**\Toppy\Sendcloud\Model\CountryCodes**](../Model/.md)| A country ISO 2 code for the recipient country. | [optional]

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2ScpGetShippingMethodById200Response**](../Model/ScPublicV2ScpGetShippingMethodById200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
