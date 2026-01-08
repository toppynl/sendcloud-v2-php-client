# # Integration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID of an integration | [optional] [readonly]
**shopName** | **string** | Name of the shop | [readonly]
**shopUrl** | **string** | URL of the shop the integration connects to | [optional]
**system** | **string** | Type of shop/system the integration connects to | [readonly]
**failingSince** | **\DateTime** | Timestamp from when the integration is failing to fetch orders or to send feedback | [optional] [readonly]
**lastFetch** | **\DateTime** | The last time we managed to fetch data from this integration, used for rate limiting purposes | [optional] [readonly]
**lastUpdatedAt** | **\DateTime** | Timestamp when the integration was last updated | [readonly]
**servicePointEnabled** | **bool** | Flag for denoting if delivery to service points is enabled | [optional]
**servicePointCarriers** | **string[]** | A list of carriers available for the service point picker | [optional] [readonly]
**webhookActive** | **bool** | Flag indicating if updates for parcels should be send via the webhook | [optional]
**webhookUrl** | **string** | A URL to which Sendcloud communicates updates to a parcel | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
