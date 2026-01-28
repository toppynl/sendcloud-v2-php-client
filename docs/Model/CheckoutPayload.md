# # CheckoutPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**senderAddressId** | **int** | The sender_address_id associated with the order |
**shippingProduct** | **object** | The shipping product with the associated functionalities of the order. See example payload. The &#x60;code&#x60;, &#x60;name&#x60; and &#x60;selected_functionalities&#x60; fields are **all required**. This data follows from the chosen &#x60;delivery_method&#x60; (by the end-consumer). |
**deliveryMethodType** | **string** | The type of the delivery method. Needs to be either &#x60;standard_delivery&#x60;, &#x60;nominated_day_delivery&#x60; or &#x60;same_day_delivery&#x60;. |
**deliveryMethodData** | [**\Toppy\Sendcloud\V2\Model\CheckoutPayloadDeliveryMethodData**](CheckoutPayloadDeliveryMethodData.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
