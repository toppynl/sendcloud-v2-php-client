# Toppy\Sendcloud\ShipmentsApi

All URIs are relative to https://panel.sendcloud.sc/api/v2.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2OrdersGetRetrieveAListOfShipments()**](ShipmentsApi.md#scPublicV2OrdersGetRetrieveAListOfShipments) | **GET** /integrations/{id}/shipments | Retrieve a list of shipments
[**scPublicV2OrdersPostCreateAListOfShipments()**](ShipmentsApi.md#scPublicV2OrdersPostCreateAListOfShipments) | **POST** /integrations/{id}/shipments | Create or update a list of shipments
[**scPublicV2OrdersPostDeleteAShipment()**](ShipmentsApi.md#scPublicV2OrdersPostDeleteAShipment) | **POST** /integrations/{id}/shipments/delete | Delete a shipment


## `scPublicV2OrdersGetRetrieveAListOfShipments()`

```php
scPublicV2OrdersGetRetrieveAListOfShipments($id, $cursor, $startDate, $endDate, $externalOrderIds, $externalShipmentIds, $shippingRules, $orderNumber, $senderAddress): \Toppy\Sendcloud\Model\ScPublicV2OrdersGetRetrieveAListOfShipments200Response
```

Retrieve a list of shipments

Retrieve a list of orders that were imported from a specific webshop integration.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ShipmentsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the integration to which the shipments belong
$cursor = cj0xJnA9MzAw; // string | The cursor query string will be used as the pivot value to filter results. If no value is provided, the service must return the first page. The value is Base64 encoded GET parameters. example:   For a cursor string there are 3 possible parameters to encode:   - o: Offset   - r: Reverse   - p: Position   Combine into GET parameters. Example: r=1&p=300   Base 64 encoded it would become: cj0xJnA9MzAw   GET parameter in url would be https://some.url.com/api/endpoint/?cursor=cj0xJnA9MzAw
$startDate = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Displays orders from the given `start_date`, including the set date. It defaults to one year ago.
$endDate = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Displays orders up to the given `end_date`, including the set date. It defaults to the current date.
$externalOrderIds = array('externalOrderIds_example'); // string[] | Filters results to shipments where their `external_order_id` matches one of the user provided ones.
$externalShipmentIds = array('externalShipmentIds_example'); // string[] | Filters results to shipments where their `external_shipments_id` matches one of the user provided ones.
$shippingRules = True; // bool | Enable shipping rules when retrieving orders. This will have an impact on the `allowed_shipping_methods`.
$orderNumber = 'orderNumber_example'; // string | Filters results to shipments on `order_number`.
$senderAddress = 56; // int | Allows to specify a sender address id to display proper `allowed_shipping_methods`.

try {
    $result = $apiInstance->scPublicV2OrdersGetRetrieveAListOfShipments($id, $cursor, $startDate, $endDate, $externalOrderIds, $externalShipmentIds, $shippingRules, $orderNumber, $senderAddress);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentsApi->scPublicV2OrdersGetRetrieveAListOfShipments: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the integration to which the shipments belong |
 **cursor** | **string**| The cursor query string will be used as the pivot value to filter results. If no value is provided, the service must return the first page. The value is Base64 encoded GET parameters. example:   For a cursor string there are 3 possible parameters to encode:   - o: Offset   - r: Reverse   - p: Position   Combine into GET parameters. Example: r&#x3D;1&amp;p&#x3D;300   Base 64 encoded it would become: cj0xJnA9MzAw   GET parameter in url would be https://some.url.com/api/endpoint/?cursor&#x3D;cj0xJnA9MzAw | [optional]
 **startDate** | **\DateTime**| Displays orders from the given &#x60;start_date&#x60;, including the set date. It defaults to one year ago. | [optional]
 **endDate** | **\DateTime**| Displays orders up to the given &#x60;end_date&#x60;, including the set date. It defaults to the current date. | [optional]
 **externalOrderIds** | [**string[]**](../Model/string.md)| Filters results to shipments where their &#x60;external_order_id&#x60; matches one of the user provided ones. | [optional]
 **externalShipmentIds** | [**string[]**](../Model/string.md)| Filters results to shipments where their &#x60;external_shipments_id&#x60; matches one of the user provided ones. | [optional]
 **shippingRules** | **bool**| Enable shipping rules when retrieving orders. This will have an impact on the &#x60;allowed_shipping_methods&#x60;. | [optional]
 **orderNumber** | **string**| Filters results to shipments on &#x60;order_number&#x60;. | [optional]
 **senderAddress** | **int**| Allows to specify a sender address id to display proper &#x60;allowed_shipping_methods&#x60;. | [optional]

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2OrdersGetRetrieveAListOfShipments200Response**](../Model/ScPublicV2OrdersGetRetrieveAListOfShipments200Response.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2OrdersPostCreateAListOfShipments()`

```php
scPublicV2OrdersPostCreateAListOfShipments($id, $shipmentBlobOrderCreate): \Toppy\Sendcloud\Model\ScPublicV2OrdersPostCreateAListOfShipments200ResponseInner[]
```

Create or update a list of shipments

Insert shipments (or 'orders') into an API integration from your shop system, and have them appear in your Sendcloud account.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ShipmentsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the integration to which the shipments belong
$shipmentBlobOrderCreate = [{"address":"Lansdown Glade","address_2":"string","city":"Oss","company_name":"string","country":"AW","created_at":"2019-08-24T14:15:22Z","currency":"EUR","customs_invoice_nr":"120","customs_shipment_type":0,"email":"user@example.com","external_order_id":"555413","external_shipment_id":"777413","house_number":"15","name":"John Doe","order_number":"OXSDFGHTD-12","order_status":{"id":"fulfilled","message":"Fulfilled"},"parcel_items":[{"description":"Very orange color","hs_code":"01013000","origin_country":"AW","product_id":"1458734634","properties":{"size":"small","colour":"red"},"quantity":2,"sku":"WW-DR-GR-XS-001","value":"3.5","weight":"1","mid_code":"NLOZR92MEL","material_content":"100% Cotton","intended_use":"Personal use"}],"payment_status":{"id":"paid","message":"Paid"},"postal_code":"5341","shipping_method":12345,"shipping_method_checkout_name":"string","telephone":"string","to_post_number":"string","to_service_point":0,"to_state":"string","total_order_value":"string","updated_at":"2019-08-24T14:15:22Z","weight":"string","checkout_payload":{"sender_address_id":0,"shipping_product":{"code":"postnl:standard","name":"PostNL Standard","selected_functionalities":{"age_check":18,"last_mile":"home_delivery","first_mile":"pickup_dropoff","multicollo":true,"form_factor":"parcel","service_area":"domestic","weekend_delivery":"saturday","delivery_deadline":"best_effort","direct_contract_only":false}},"delivery_method_type":"string","delivery_method_data":{"delivery_date":"2019-08-24T14:15:22Z","formatted_delivery_date":"string","parcel_handover_date":"2019-08-24T14:15:22Z"}},"width":"string","height":"string","length":"string","customs_details":{"discount_granted":"3.99","insurance_costs":"9.99","freight_costs":"5.99","other_costs":"2.99","tax_numbers":{"sender":[{"tax_number":{"name":"VAT","country":"NL","value":"NL987654321B02"}}],"receiver":[{"tax_number":{"name":"VAT","country":"DE","value":"DE123456789B03"}}],"importer_of_records":[{"tax_number":{"name":"VAT","country":"NL","value":"NL975318642B01"}}]}}}]; // \Toppy\Sendcloud\Model\ShipmentBlobOrderCreate[] | 

try {
    $result = $apiInstance->scPublicV2OrdersPostCreateAListOfShipments($id, $shipmentBlobOrderCreate);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentsApi->scPublicV2OrdersPostCreateAListOfShipments: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the integration to which the shipments belong |
 **shipmentBlobOrderCreate** | [**\Toppy\Sendcloud\Model\ShipmentBlobOrderCreate[]**](../Model/ShipmentBlobOrderCreate.md)|  | [optional]

### Return type

[**\Toppy\Sendcloud\Model\ScPublicV2OrdersPostCreateAListOfShipments200ResponseInner[]**](../Model/ScPublicV2OrdersPostCreateAListOfShipments200ResponseInner.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2OrdersPostDeleteAShipment()`

```php
scPublicV2OrdersPostDeleteAShipment($id, $scPublicV2OrdersPostDeleteAShipmentRequest)
```

Delete a shipment

Allows you to delete a shipment from Sendcloud, e.g. if it has been canceled or deleted in your shop system.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ShipmentsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The id of the integration to which the shipments belong
$scPublicV2OrdersPostDeleteAShipmentRequest = {"shipment_uuid":"39874b59-2a68-4a3d-8e00-aeb9e0540d00"}; // \Toppy\Sendcloud\Model\ScPublicV2OrdersPostDeleteAShipmentRequest | You must provide either a shipment_uuid or the combination of external_order_id and external_shipment_id to this endpoint.

try {
    $apiInstance->scPublicV2OrdersPostDeleteAShipment($id, $scPublicV2OrdersPostDeleteAShipmentRequest);
} catch (Exception $e) {
    echo 'Exception when calling ShipmentsApi->scPublicV2OrdersPostDeleteAShipment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the integration to which the shipments belong |
 **scPublicV2OrdersPostDeleteAShipmentRequest** | [**\Toppy\Sendcloud\Model\ScPublicV2OrdersPostDeleteAShipmentRequest**](../Model/ScPublicV2OrdersPostDeleteAShipmentRequest.md)| You must provide either a shipment_uuid or the combination of external_order_id and external_shipment_id to this endpoint. | [optional]

### Return type

void (empty response body)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
