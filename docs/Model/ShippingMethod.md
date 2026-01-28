# # ShippingMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier of the shipping method. |
**name** | **string** | Name of the shipping method, it should give an idea what the shipping method can be used for. |
**carrier** | **string** | A &#x60;carrier_code&#x60; which will indicate which carrier provides the shipping method. |
**minWeight** | **string** | Minimum allowed weight of the parcel for this shipping method. |
**maxWeight** | **string** | Maximum allowed weight of the parcel for this shipping method. |
**servicePointInput** | **string** | Will be either &#x60;required&#x60; when the shipping method is meant to ship a parcel to a service point, or &#x60;none&#x60; when this is not the case. |
**price** | **int** | A legacy property which will always be &#x60;0&#x60;, should not be used! |
**countries** | [**\Toppy\Sendcloud\V2\Model\ShippingMethodCountriesInner[]**](ShippingMethodCountriesInner.md) | A list of countries that you can ship to with the shipping method. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
