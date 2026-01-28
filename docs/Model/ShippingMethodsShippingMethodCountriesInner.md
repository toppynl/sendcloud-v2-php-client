# # ShippingMethodsShippingMethodCountriesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Countries that you can ship to with the shipping method. | [optional]
**name** | **string** | Name of the country. | [optional]
**price** | **float** | Indicates what it will cost to use the shipping method. Will be 0 if the user has enabled a direct contract for corresponding the carrier. | [optional]
**iso2** | **string** | ISO 3166-1 alpha-2 code of the country. | [optional]
**iso3** | **string** | ISO 3166-1 alpha-3 code of the country. | [optional]
**leadTimeHours** | **int** | Lead time of the shipping method in hours | [optional]
**priceBreakdown** | [**\Toppy\Sendcloud\V2\Model\ShippingPriceBreakdownInner[]**](ShippingPriceBreakdownInner.md) | A Sendcloud shipping price breakdown. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
