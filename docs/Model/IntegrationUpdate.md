# # IntegrationUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shopName** | **string** | Name of the shop | [optional] [readonly]
**shopUrl** | **string** | URL of the shop the integration connects to | [optional]
**lastUpdatedAt** | **\DateTime** | Timestamp when the integration was last updated | [optional] [readonly]
**servicePointEnabled** | **bool** | Flag for denoting if delivery to service points is enabled | [optional]
**servicePointCarriers** | **string[]** | A list of carriers available for the service point picker. At least one carrier must be provided if the service point delivery is enabled. | [optional]
**webhookActive** | **bool** | Flag indicating if updates for parcels should be send via the webhook | [optional]
**webhookUrl** | **string** | A URL to which Sendcloud communicates updates in a parcel | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
