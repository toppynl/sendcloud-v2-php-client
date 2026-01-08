# # DPDPickup

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier of the pickup. |
**carrier** | **string** | The user selected carrier code for the pickup. |
**country** | **string** | ISO 3166-1 alpha-2 country code. |
**city** | **string** |  |
**name** | **string** | Contact person name. |
**countryState** | **string** | A country state (if applicable). | [optional]
**companyName** | **string** | Pickup address company name. |
**email** | **string** | Contact person email. | [optional]
**address** | **string** | Address line 1 of the pickup, this should include the house number. |
**address2** | **string** | Address line 2 of the pickup. | [optional]
**postalCode** | **string** |  |
**quantity** | **int** | Number of parcels that should be picked up. Minimum amount of parcels is 10 in case of DE. |
**telephone** | **string** | Contact person telephone number. |
**totalWeight** | **string** | Total weight in kilograms. |
**reference** | **string** | A reference number for your own administration. | [optional]
**specialInstructions** | **string** | Special instructions that the driver should take into account. | [optional]
**trackingNumber** | **string** |  | [optional]
**pickupFrom** | **\DateTime** | ISO 8601 DateTime when the pickup should take place. |
**pickupUntil** | **\DateTime** | ISO 8601 DateTime of the pickup location close time. This could be useful in case the pickup is delayed. | [optional]
**pickupStatus** | **string** |  |
**createdAt** | **\DateTime** | ISO 8601 DateTime at which the pickup is created. |
**cancelledAt** | **\DateTime** | ISO 8601 DateTime at which the pickup is cancelled. | [optional]
**contract** | **int** | Id of the contract that is used to create the pickup. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
