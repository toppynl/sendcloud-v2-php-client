# # ServicePoint

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  |
**code** | **string** |  |
**isActive** | **bool** | Indicates whether the service point data was recently updated via scraping within a carrier-specific expiration period. This field reflects data freshness, not operational availability. To check if a service point is operationally open, use &#x60;open_tomorrow&#x60; or &#x60;open_upcoming_week&#x60; instead. |
**shopType** | **string** |  | [optional]
**generalShopType** | **string** | A normalized shop type indicating the general category of the service point. Carrier-specific shop types are mapped to a fixed set of values, such as &#x60;servicepoint&#x60;, &#x60;locker&#x60;, &#x60;post_office&#x60;, &#x60;carrier_depot&#x60;, etc. | [optional]
**extraData** | **object** | Can contain carrier specific data |
**name** | **string** |  |
**street** | **string** |  |
**houseNumber** | **string** |  |
**postalCode** | **string** |  |
**city** | **string** |  |
**latitude** | **string** |  |
**longitude** | **string** |  |
**email** | **string** |  |
**phone** | **string** |  |
**homepage** | **string** |  |
**carrier** | **string** |  |
**country** | **string** |  |
**formattedOpeningTimes** | [**\Toppy\Sendcloud\Model\ServicePointFormattedOpeningTimes**](ServicePointFormattedOpeningTimes.md) |  |
**openTomorrow** | **bool** | Indicates whether the service point will be open tomorrow based on its operating schedule. This field is calculated from &#x60;formatted_opening_times&#x60; and should be used to determine operational availability. |
**openUpcomingWeek** | **bool** | Indicates whether the service point will be open at least once during the next 7 days. This field is calculated from &#x60;formatted_opening_times&#x60; including any schedule exceptions, and should be used to determine operational availability. |
**distance** | **float** | Distance between the reference point and the service point in meters. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
