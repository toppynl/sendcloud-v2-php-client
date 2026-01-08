# Toppy\Sendcloud\AirWaybillAWBApi

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpPostFinalizeBox()**](AirWaybillAWBApi.md#scPublicV2ScpPostFinalizeBox) | **POST** /box/finalize | Finalizing a box


## `scPublicV2ScpPostFinalizeBox()`

```php
scPublicV2ScpPostFinalizeBox($awbCopies): \Toppy\Sendcloud\Model\AwbCopies
```

Finalizing a box

This endpoint allows you to create an Air Waybill for a box containing multiple Deutsche Post International parcels. When you call this endpoint, you finalize the box, then an AWB tracking number is assigned to each parcel and the AWB label is generated. If the parcels included in the AWB are split over multiple boxes or pallets, you can use the `copy_count` parameter to specify how many AWB copies you need.  When the request is successful, a `200` code will be returned alongside the `copy_count` requested. After a few minutes, the AWB labels and tracking numbers are assigned to each parcel. You only need to retrieve any single parcel to obtain the AWB label, as the AWB label and tracking numbers are identical for all parcels included in the box.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\AirWaybillAWBApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$awbCopies = new \Toppy\Sendcloud\Model\AwbCopies(); // \Toppy\Sendcloud\Model\AwbCopies

try {
    $result = $apiInstance->scPublicV2ScpPostFinalizeBox($awbCopies);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AirWaybillAWBApi->scPublicV2ScpPostFinalizeBox: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **awbCopies** | [**\Toppy\Sendcloud\Model\AwbCopies**](../Model/AwbCopies.md)|  | [optional]

### Return type

[**\Toppy\Sendcloud\Model\AwbCopies**](../Model/AwbCopies.md)

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
