# Toppy\Sendcloud\ParcelDocumentsApi

All URIs are relative to https://account.sendcloud.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**scPublicV2ScpGetRetrieveParcelDocuments()**](ParcelDocumentsApi.md#scPublicV2ScpGetRetrieveParcelDocuments) | **GET** /parcels/{id}/documents/{type} | Retrieve Parcel Documents


## `scPublicV2ScpGetRetrieveParcelDocuments()`

```php
scPublicV2ScpGetRetrieveParcelDocuments($id, $type, $dpi, $accept, $raw): \SplFileObject
```

Retrieve Parcel Documents

For international shipments, a commercial invoice, CN23 or CN22 (+CP71) form must be attached (either physically or [**digitally**](https://support.sendcloud.com/hc/en-us/articles/4417349714452-Send-your-customs-documents-digitally-via-Paperless-Trade-) for some carriers) to the shipment for customs officials to access. The type of document required depends on the shipping method and value of the shipment.  When you [**Create a parcel**](https://api.sendcloud.dev/docs/sendcloud-public-api/parcels/operations/create-a-parcel), Sendcloud generates the correct type of document for your shipment if you have filled in all the information related to the parcel contents, value, and invoice. Use this endpoint to retrieve these documents in your preferred format.  The supported document types are as follows:  - `air-waybill` - `cn23` - `cn23-default` - `commercial-invoice` - `cp71` - `label` - `qr`

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\ParcelDocumentsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);
$id = 1; // int | Identifier of the parcel which you want to retrieve a document from
$type = commercial-invoice; // string | Document type you want to retrieve for this parcel
$dpi = 300; // int | DPI refers to the printing resolution of your shipping labels. It's important that labels are printed at a high enough resolution to ensure the clarity of address details and the barcode for scanning purposes. Use following amounts for appropriate result: <table>   <thead>     <tr>       <th>File format</th>       <th>Default DPI</th>       <th>Valid DPI</th>     </tr>   </thead>   <tbody>     <tr>       <td>pdf</td>       <td>72</td>       <td>72</td>     </tr>     <tr>       <td>png</td>       <td>300</td>       <td>150, 300</td>     </tr>   </tbody> </table> ZPL labels are not affected by the DPI setting, as the resolution is determined by the carrier itself. Most carriers use a resolution of 203 DPI. Zebra printers need to be configured to print at the specific DPI of the label if they have higher resolution capabilities.
$accept = image/png; // string | The returned format of the document
$raw = True; // bool | There have been identified cases where custom documents, internally rendered, will only include some of the necessary information, mainly due to some restrictions. Using the raw query param, one can request to receive the document in the originally received format by the carrier. This temporary solution to the problem allows the normal operations of the affected customers. As such, you can expect this property to be sunsetted shortly once the necessary changes have been implemented.

try {
    $result = $apiInstance->scPublicV2ScpGetRetrieveParcelDocuments($id, $type, $dpi, $accept, $raw);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ParcelDocumentsApi->scPublicV2ScpGetRetrieveParcelDocuments: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identifier of the parcel which you want to retrieve a document from |
 **type** | **string**| Document type you want to retrieve for this parcel |
 **dpi** | **int**| DPI refers to the printing resolution of your shipping labels. It&#39;s important that labels are printed at a high enough resolution to ensure the clarity of address details and the barcode for scanning purposes. Use following amounts for appropriate result: &lt;table&gt;   &lt;thead&gt;     &lt;tr&gt;       &lt;th&gt;File format&lt;/th&gt;       &lt;th&gt;Default DPI&lt;/th&gt;       &lt;th&gt;Valid DPI&lt;/th&gt;     &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;pdf&lt;/td&gt;       &lt;td&gt;72&lt;/td&gt;       &lt;td&gt;72&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;png&lt;/td&gt;       &lt;td&gt;300&lt;/td&gt;       &lt;td&gt;150, 300&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt; ZPL labels are not affected by the DPI setting, as the resolution is determined by the carrier itself. Most carriers use a resolution of 203 DPI. Zebra printers need to be configured to print at the specific DPI of the label if they have higher resolution capabilities. | [optional] [default to 72]
 **accept** | **string**| The returned format of the document | [optional] [default to &#39;application/pdf&#39;]
 **raw** | **bool**| There have been identified cases where custom documents, internally rendered, will only include some of the necessary information, mainly due to some restrictions. Using the raw query param, one can request to receive the document in the originally received format by the carrier. This temporary solution to the problem allows the normal operations of the affected customers. As such, you can expect this property to be sunsetted shortly once the necessary changes have been implemented. | [optional]

### Return type

**\SplFileObject**

### Authorization

[HTTPBasicAuth](../../README.md#HTTPBasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/pdf`, `application/zpl`, `image/png`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
