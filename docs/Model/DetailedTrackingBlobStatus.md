# # DetailedTrackingBlobStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**carrierUpdateTimestamp** | **string** | Timestamp (ISO format): when did the carrier move the parcel to this status | [optional]
**parcelStatusHistoryId** | **string** | ID of the historical status | [optional]
**parentStatus** | **string** | Current delivery status of the parcel. Aggregates variations of status messages sent by multiple carriers with similar meanings, into one user-friendly status message issued by Sendcloud. | [optional]
**carrierCode** | [**\Toppy\Sendcloud\V2\Model\Carrier**](Carrier.md) |  | [optional]
**carrierMessage** | **string** | Status description specified by the carrier, more detailed than parent_status | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
