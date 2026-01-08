# # DHLExpressPickupCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**city** | **string** |  |
**name** | **string** | Contact person name. | [optional]
**countryState** | **string** |  | [optional]
**companyName** | **string** | Pickup address company name. | [optional]
**country** | **string** | ISO 3166-1 alpha-2 country code. |
**email** | **string** | Contact person email. | [optional]
**address** | **string** | Address line 1 of the pickup, this should include the house number. |
**address2** | **string** | Address line 2 of the pickup. | [optional]
**pickupFrom** | **\DateTime** | ISO 8601 DateTime that indicates from what time the pickup can take place. Preferably specified in UTC. When no timezone information is specified, we will use the timezone of the user their invoice address country. |
**pickupUntil** | **\DateTime** | ISO 8601 DateTime that indicates until what time the pickup can take place. Preferably specified in UTC. When no timezone information is specified, we will use the timezone of the user their invoice address country. | [optional]
**postalCode** | **string** |  |
**quantity** | **int** | Number of parcels that should be picked up. |
**telephone** | **string** | Contact person telephone number. | [optional]
**totalWeight** | **string** | Total weight in kilograms. |
**reference** | **string** | A reference number for your own administration. | [optional]
**specialInstructions** | **string** | Special instructions that the driver should take into account. | [optional]
**carrier** | **string** | The user selected carrier code for the pickup. | [optional]
**contract** | **int** | Id of the contract you want to be used for pickup request. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
