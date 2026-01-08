# Toppy\Sendcloud\ShippingProductsApi

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetRetrieveAllShippingFunctionalities()**](ShippingProductsApi.md#scPublicV2ScpGetRetrieveAllShippingFunctionalities) | **GET** /shipping-functionalities | Retrieve a list of shipping functionalities
[**scPublicV2ScpGetRetrieveAllShippingProducts()**](ShippingProductsApi.md#scPublicV2ScpGetRetrieveAllShippingProducts) | **GET** /shipping-products | Retrieve a list of shipping products


## `scPublicV2ScpGetRetrieveAllShippingFunctionalities()`

```php
scPublicV2ScpGetRetrieveAllShippingFunctionalities(): \Toppy\Sendcloud\Model\ShippingFunctionalityDefinitions
```

Retrieve a list of shipping functionalities

This endpoint lists all of the available **shipping functionalities** across the Sendcloud system. A shipping functionality is an additional characteristic or 'add on' service that defines one shipping method from another. Some functionalities are related to the form of the shipment that's accepted for shipment, such as letterbox, parcel or pallet, while other functionalities specify any additional handling that's required, such as Age check or Signature required. Functionalities can also denote specific delivery deadlines or weekend delivery availability.  <!-- theme: info -->  >The below **Glossary of shipping functionalities** provides a description of every possible shipping functionality associated with a Sendcloud-supported shipping method.  Shipping functionality             | Description ------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------| `age_check`             | Indicates whether the recipient must be above a certain age (e.g., to accept alcohol products). `b2b`                   | Indicates whether the shipment is a b2b shipment. `b2c`                   | Indicates whether the shipment is a b2c shipment. `boxable`               | Indicates whether the shipment fits in a box. `bulky_goods`           | Indicates whether the shipment is bulky, e.g. it does not fit in a box. `carrier_billing_type`  | Indicates whether the shipment is billed on a country to country basis, or based on a shipping zone to shipping zone. Example is shipping from mainland Spain to the Canary Islands (a zone) or Netherlands to the Netherlands (country to country). `cash_on_delivery`      | Indicates whether the receiver of the shipment should pay for the shipment when receiving it. `dangerous_goods`       | Indicates whether the shipment can contain dangerous goods. `delivery_attempts`     | Indicates the number of delivery attempts the carrier should attempt before returning (or discarding) the parcel. `delivery_before`       | Indicates whether shipment will be delivered before a certain time of the day (Example: before 12:00). `delivery_deadline`     | Indicates the period of time in which the shipment will be delivered (Example: 24 hours, 28 hours). `direct_contract_only`  | Indicates whether shipping is only possible using your own carrier contract, or if it is possible using Sendcloud contract rates. `eco_delivery`          | Indicates whether the shipping process will be environmently friendly. `ers`                   | Indicates whether shipment will use the ERS (Easy Return Solution) system. `first_mile`            | Indicates how transportation of the first mile of the shipment will take place. Example is that the parcel is dropped of at a service point, or is picked up by the carrier. `flex_delivery`         | Indicates whether the receiver of the parcel can, before delivery takes place, choose where and when the shipment should be delivered. `form_factor`           | Indicates the form factor of the parcel. Examples are letter, pallet, parcel. `fragile_goods`         | Indicates whether shipment can contain fragile goods (glass, electronics, etcetera). `fresh_goods`           | Indicates whether shipment can contain fresh goods (e.g. food with an expiration date). `harmonized_label`      | Indicates whether shipment label contains the customs information on as well. `id_check`              | Indicates whether the receiver should identify him/herself to the carrier driver, conforming the identity of the receiver. `incoterm`              | Indicates what incoterm is used for an (international) shipment. Mainly used to determine if the receiver or the sender pays the customs duties. `insurance`             | Indicates whether the shipment has carrier insurance or not. `labelless`             | Indicates whether a return shipment can be done using only a QR code or numerical number, needed by the end-consumer to return the parcel. In other words, no shipping label is required. `last_mile`             | Indicates what the last mile of the shipment looks like. For instance, the shipment can be delivered to a service point or a home address. `manually`              | Indicates a subset of Deutsche Post shipping methods where a consumer should manually attach the label to the parcel. `multicollo`            | Indicates whether the shipment can be a multi-collo shipment. Note: Not all carriers support multicollo shipment. See the supported carriers and more in our help center `neighbor_delivery`     | Indicates whether shipment is allowed to be delivered at the neighbours of the receiver. `non_conveyable`        | Indicates whether the shipment fits on a conveyor belt. `personalized_delivery` | Indicates a subset of Deutsche Post shipping methods shipping to a consumer. `premium`               | Indicates whether the carrier identifies the shipments shipping process as premium. `priority`              | Indicates the priority level of the shipment. Examples are Express or Standard. `registered_delivery`   | Indicates whether a Proof of Delivery (POD) is communicated to the sender. `returns`               | Indicates whether the shipment should be a return shipment or not. `segment`               | Indicates the international pricing zone for PostNL shipments. `service_area`          | Indicates the service area of the shipment. Examples are domestic or international. `signature`             | Indicates whether the shipment requires a signature upon delivery. `size`                  | Indicates the allowed size of the shipment. `sorted`                | Indicates whether the shipment(s) are handed over the carrier in a sorted fashion, decreasing costs. `surcharge`             | Indicates whether the carrier can surcharge the shipment later, based on (volumetric) weight. `tracked`               | Indicates whether the shipment can be tracked online. `tyres`                 | Indicates whether the shipment can be used to ship tyres. `weekend_delivery`      | Indicates whether shipment can delivery in the weekend or on a specific weekend-day.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ShippingProductsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->scPublicV2ScpGetRetrieveAllShippingFunctionalities();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShippingProductsApi->scPublicV2ScpGetRetrieveAllShippingFunctionalities: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Toppy\Sendcloud\Model\ShippingFunctionalityDefinitions**](../Model/ShippingFunctionalityDefinitions.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `scPublicV2ScpGetRetrieveAllShippingProducts()`

```php
scPublicV2ScpGetRetrieveAllShippingProducts($fromCountry, $toCountry, $carrier, $contract, $weight, $weightUnit, $length, $lengthUnit, $width, $widthUnit, $height, $heightUnit, $leadTimeHours, $contractPricing, $fromPostalCode, $toPostalCode, $returns): \Toppy\Sendcloud\Model\ShippingProduct[]
```

Retrieve a list of shipping products

This endpoint allows you to retrieve a list of shipping methods that are associated with your account, filtered by specific criteria such as parcel dimensions, weight classes, from and to country and **shipping functionality.**  In situations where you need to find a method which supports a specific means of delivery, type of parcel or delivery deadline, for example, this endpoint allows you to filter all available shipping methods based on one or more query parameters.  The response body will include the `id` of any suitable methods, which you can then use to [**Create a parcel**](https://api.sendcloud.dev/docs/sendcloud-public-api/parcels/operations/create-a-parcel) and announce the shipment directly.  <!-- theme: warning --> > You must have either [**enabled a carrier**](https://sendcloud.dev/docs/getting-started/) in your Sendcloud account, or connected your own direct [**carrier contract**](https://sendcloud.dev/docs/getting-started/carrier-contracts/), in order to be able to retrieve shipping methods related to that carrier via this endpoint.  <!-- theme: warning --> > If you have more than one added active contracts for specific carrier, you must fill `contract` attribute with your desired contract's ID in your request. You can get your contracts ID from [**Retrieve a list of contracts**](https://api.sendcloud.dev/docs/sendcloud-public-api/contracts/operations/list-contracts).  <!-- theme: info --> > To see zonal carrier shipping methods, you need to provide `from_postal_code` and `to_postal_code` query parameters.  <!-- theme: info -->  >To filter by `{shipping_functionality}`, you can find a glossary of accepted values and a description of each functionality under the [**Retrieve a list of shipping functionalities**](https://api.sendcloud.dev/docs/sendcloud-public-api/shipping-products/operations/list-shipping-functionalities) endpoint.  --- ### Use cases Find a shipping method `id` for a parcel weighing 5kg, shipping from the Netherlands to the United States with carrier PostNL.  <span style=\"background-color: #1D97FF\">GET</span> `https://panel.sendcloud.sc/api/v2/shipping-products?from_country=NL&to_country=US&carrier=postnl&weight=5&weight_unit=kilogram`  Find a shipping method which includes the Age Check functionality for shipping alcohol products from France to Belgium.  <span style=\"background-color: #1D97FF\">GET</span> `https://panel.sendcloud.sc/api/v2/shipping-products?from_country=NL&to_country=BE&age_check=18`  Find a shipping method that supports same day delivery for a product shipping from the Netherlands to the Netherlands.  <span style=\"background-color: #1D97FF\">GET</span> `https://panel.sendcloud.sc/api/v2/shipping-products?from_country=NL&to_country=NL&delivery_deadline=sameday`  Find a **return** shipping method for a parcel returning from France to the Netherlands:  <span style=\"background-color: #1D97FF\">GET</span> `https://panel.sendcloud.sc/api/v2/shipping-products?from_country=FR&to_country=NL&returns=true`

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ShippingProductsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$fromCountry = NL; // string | A country ISO 2 code for a from country (origin country).
$toCountry = new \Toppy\Sendcloud\Model\\Toppy\Sendcloud\Model\CountryCodes(); // \Toppy\Sendcloud\Model\CountryCodes | A country ISO 2 code for the recipient country. Required if the carrier is zonal or `contract_pricing` parameter is provided.
$carrier = postnl; // string | A carrier code.
$contract = 123; // int | The contract id used for shipping product/method filtering. It has a similar effect as using the `carrier` parameter. If the `contract_pricing` parameter is used, the carrier is used to provide the correct contract pricing. Only required if multiple contract prices exist for the same shipping method.
$weight = 1500; // int | The weight of the shipment.
$weightUnit = gram; // string | The unit for the shipment weight. Required if the `weight` parameter is provided.
$length = 100; // int | The length of the shipment. Required if the `width` and/or `height` parameters are provided.
$lengthUnit = centimeter; // string | The unit for the shipment length. Required if the `length` parameter is provided.
$width = 50; // int | The width of the shipment. Required if the `length` and/or `height` parameters are provided.
$widthUnit = centimeter; // string | The unit for the shipment width. Required if the “width” parameter is provided.
$height = 10; // int | The height of the shipment. Required if the “width” and/or “length” parameters are provided.
$heightUnit = centimeter; // string | The unit for the shipment height. Required if the “height” parameter is provided.
$leadTimeHours = 24; // int | Filters shipping products (rather its associated shipping methods) by their transit time. This is the estimated time a shipment takes between a parcel is being picked up by a carrier and it reaching its destination. This parameter supports comparison operators (e.g. `lead_time_hours[gte]=12` for filtering out shipments that have less than 12 hours transit time or `lead_time_hours[gte=24]&lead_time_hours[lte]=48` for only including shipping products whose methods have a transit time between 24 and 48 hours). Available operators are “eq” (equal), “gt” (greater than), “lt” (less than), “gte” (greater than or equal), and “lte” (less than or equal).
$contractPricing = false; // bool | Whether to include contract prices in the response. This parameter is only available to users upon request. Please contact customer support.
$fromPostalCode = 01000; // string | Postal code of the sender. Required if the carrier is zonal.
$toPostalCode = 01000; // string | Postal code of the recipient. Required if the carrier is zonal.
$returns = false; // bool | If set to `true` the endpoint will return shipping methods which can be used for making a return  shipment.

try {
    $result = $apiInstance->scPublicV2ScpGetRetrieveAllShippingProducts($fromCountry, $toCountry, $carrier, $contract, $weight, $weightUnit, $length, $lengthUnit, $width, $widthUnit, $height, $heightUnit, $leadTimeHours, $contractPricing, $fromPostalCode, $toPostalCode, $returns);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ShippingProductsApi->scPublicV2ScpGetRetrieveAllShippingProducts: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromCountry** | **string**| A country ISO 2 code for a from country (origin country). |
 **toCountry** | [**\Toppy\Sendcloud\Model\CountryCodes**](../Model/.md)| A country ISO 2 code for the recipient country. Required if the carrier is zonal or &#x60;contract_pricing&#x60; parameter is provided. | [optional]
 **carrier** | **string**| A carrier code. | [optional]
 **contract** | **int**| The contract id used for shipping product/method filtering. It has a similar effect as using the &#x60;carrier&#x60; parameter. If the &#x60;contract_pricing&#x60; parameter is used, the carrier is used to provide the correct contract pricing. Only required if multiple contract prices exist for the same shipping method. | [optional]
 **weight** | **int**| The weight of the shipment. | [optional]
 **weightUnit** | **string**| The unit for the shipment weight. Required if the &#x60;weight&#x60; parameter is provided. | [optional]
 **length** | **int**| The length of the shipment. Required if the &#x60;width&#x60; and/or &#x60;height&#x60; parameters are provided. | [optional]
 **lengthUnit** | **string**| The unit for the shipment length. Required if the &#x60;length&#x60; parameter is provided. | [optional]
 **width** | **int**| The width of the shipment. Required if the &#x60;length&#x60; and/or &#x60;height&#x60; parameters are provided. | [optional]
 **widthUnit** | **string**| The unit for the shipment width. Required if the “width” parameter is provided. | [optional]
 **height** | **int**| The height of the shipment. Required if the “width” and/or “length” parameters are provided. | [optional]
 **heightUnit** | **string**| The unit for the shipment height. Required if the “height” parameter is provided. | [optional]
 **leadTimeHours** | **int**| Filters shipping products (rather its associated shipping methods) by their transit time. This is the estimated time a shipment takes between a parcel is being picked up by a carrier and it reaching its destination. This parameter supports comparison operators (e.g. &#x60;lead_time_hours[gte]&#x3D;12&#x60; for filtering out shipments that have less than 12 hours transit time or &#x60;lead_time_hours[gte&#x3D;24]&amp;lead_time_hours[lte]&#x3D;48&#x60; for only including shipping products whose methods have a transit time between 24 and 48 hours). Available operators are “eq” (equal), “gt” (greater than), “lt” (less than), “gte” (greater than or equal), and “lte” (less than or equal). | [optional]
 **contractPricing** | **bool**| Whether to include contract prices in the response. This parameter is only available to users upon request. Please contact customer support. | [optional]
 **fromPostalCode** | **string**| Postal code of the sender. Required if the carrier is zonal. | [optional]
 **toPostalCode** | **string**| Postal code of the recipient. Required if the carrier is zonal. | [optional]
 **returns** | **bool**| If set to &#x60;true&#x60; the endpoint will return shipping methods which can be used for making a return  shipment. | [optional] [default to false]

### Return type

[**\Toppy\Sendcloud\Model\ShippingProduct[]**](../Model/ShippingProduct.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
