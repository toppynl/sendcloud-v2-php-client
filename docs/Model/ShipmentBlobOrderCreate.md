# # ShipmentBlobOrderCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **string** |  |
**address2** | **string** |  |
**city** | **string** |  |
**companyName** | **string** |  |
**country** | [**\Toppy\Sendcloud\Model\CountryCodes**](CountryCodes.md) |  |
**createdAt** | **\DateTime** | Timestamp indicating when the shipment was created in the shop system. This value will be saved and accessible through &#x60;shipment_created_at&#x60; field in GET response. |
**currency** | **string** | ISO 4217 currency code |
**customsInvoiceNr** | **string** | Your own commercial invoice number |
**customsShipmentType** | **int** | Type of shipment for customs purposes:   - &#x60;0&#x60; - Gift   - &#x60;1&#x60; - Documents   - &#x60;2&#x60; - Commercial Goods   - &#x60;3&#x60; - Commercial Sample   - &#x60;4&#x60; - Returned Goods |
**email** | **string** |  |
**externalOrderId** | **string** | External order ID assigned by the shop system |
**externalShipmentId** | **string** | External shipment ID assigned by the shop system |
**houseNumber** | **string** |  |
**name** | **string** |  |
**orderNumber** | **string** | Unique order number generated manualy or by the shop system |
**orderStatus** | [**\Toppy\Sendcloud\Model\ShipmentBlobStatus**](ShipmentBlobStatus.md) |  |
**parcelItems** | [**\Toppy\Sendcloud\Model\ParcelItems[]**](ParcelItems.md) | List of items the parcel contains |
**paymentStatus** | [**\Toppy\Sendcloud\Model\ShipmentBlobStatus**](ShipmentBlobStatus.md) |  |
**postalCode** | **string** |  |
**shippingMethod** | **int** | Foreign key indicating shipping method used | [optional]
**shippingMethodCheckoutName** | **string** | Human readable shipping method name |
**telephone** | **string** |  |
**toPostNumber** | **string** |  |
**toServicePoint** | **int** |  |
**toState** | **string** |  |
**totalOrderValue** | **float** | The total price of an order | [optional]
**updatedAt** | **\DateTime** | Timestamp indicating when the shipment was updated in the shop system. This value will be saved and accessible through &#x60;shipment_updated_at&#x60; field in GET response. |
**weight** | **float** | Total weight of the order. Cannot be smaler than 0.001 | [optional]
**checkoutPayload** | [**\Toppy\Sendcloud\Model\CheckoutPayload**](CheckoutPayload.md) |  | [optional]
**width** | **float** | Volumetric weight width | [optional]
**height** | **float** | Volumetric weight height | [optional]
**length** | **float** | Volumetric weight length | [optional]
**customsDetails** | [**\Toppy\Sendcloud\Model\CustomsInformation**](CustomsInformation.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
