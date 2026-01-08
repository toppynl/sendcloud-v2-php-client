# # ScPublicV2ScpPostPickupRequestInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**city** | **string** |  |
**name** | **string** | Contact person name. |
**countryState** | **string** |  |
**companyName** | **string** | Pickup address company name. |
**country** | **string** | ISO 3166-1 alpha-2 country code. |
**email** | **string** | Contact person email. | [optional]
**address** | **string** | Address line 1 of the pickup, this should include the house number. |
**address2** | **string** | Address line 2 of the pickup. | [optional]
**pickupFrom** | **\DateTime** | ISO 8601 DateTime that indicates from what time the pickup can take place. Preferably specified in UTC. When no timezone information is specified, we will use the timezone of the user their invoice address country. |
**pickupUntil** | **\DateTime** | ISO 8601 DateTime that indicates until what time the pickup can take place. Preferably specified in UTC. When no timezone information is specified, we will use the timezone of the user their invoice address country. |
**postalCode** | **string** |  |
**quantity** | **int** | Number of parcels that should be picked up. |
**telephone** | **string** | Contact person telephone number. |
**totalWeight** | **string** | Total weight in kilograms. |
**reference** | **string** | A reference number for your own administration. |
**specialInstructions** | **string** | Special instructions that the driver should take into account. | [optional]
**carrier** | **string** | The user selected carrier code for the pickup. |
**contract** | **int** | Id of the contract you want to be used for pickup request. | [optional]
**originDetail** | [**\Toppy\Sendcloud\Model\OriginDetail**](OriginDetail.md) |  |
**palletQuantity** | **int** | Number of pallets that should be picked up.The number of parcels or the number of pallets must be specified. | [optional]
**totalVolumeWeight** | [**\Toppy\Sendcloud\Model\PickupVolumeWeight**](PickupVolumeWeight.md) |  |
**isAlternateAddress** | **bool** | Indicates if pickup address is a different address than that specified in a customer&#39;s profile. | [optional]
**isResidential** | **bool** | Indicates if the pickup address is commercial or residential. | [optional]
**isOverweight** | **bool** | Indicates if at least any package is over 70 lbs or 32 kgs. | [optional]
**room** | **string** | Room number. | [optional]
**floor** | **string** | Floor number. | [optional]
**items** | [**\Toppy\Sendcloud\Model\UPSItems[]**](UPSItems.md) | The container providing the information about how many items should be picked up. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
