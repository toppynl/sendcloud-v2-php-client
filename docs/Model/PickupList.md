# # PickupList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier of the pickup. |
**carrier** | **string** |  |
**country** | **string** | ISO 3166-1 alpha-2 country code. |
**trackingNumber** | **string** |  | [optional]
**pickupFrom** | **\DateTime** | ISO 8601 DateTime when the pickup should take place. |
**pickupUntil** | **\DateTime** | ISO 8601 DateTime of the pickup location close time. This could be useful in case the pickup is delayed. | [optional]
**pickupStatus** | **string** |  |
**createdAt** | **\DateTime** | ISO 8601 DateTime at which the pickup is created. |
**cancelledAt** | **\DateTime** | ISO 8601 DateTime at which the pickup is cancelled. |
**contract** | **int** | Id of the contract that is used to create the pickup. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
