# # ShippingProductMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The shipping method unique identifier. |
**name** | **string** | A human friendly name for the shipping method. |
**shippingProductCode** | **string** | A unique identifier for the shipping product, which the shipping method belongs to. |
**leadTimeHours** | **array<string,array<string,float>>** | Expected lead time for this shipping method for the filtered &#x60;from_country&#x60;-&gt;&#x60;to_country&#x60; pair. |
**functionalities** | [**\Toppy\Sendcloud\Model\ShippingFunctionalities**](ShippingFunctionalities.md) |  |
**properties** | [**\Toppy\Sendcloud\Model\ShippingProductMethodProperties**](ShippingProductMethodProperties.md) |  |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
