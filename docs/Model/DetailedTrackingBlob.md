# # DetailedTrackingBlob

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parcelId** | **string** | Unique ID for the parcel | [optional]
**carrierCode** | [**\Toppy\Sendcloud\V2\Model\Carrier**](Carrier.md) |  | [optional]
**createdAt** | **string** | Timestamp (ISO format) that indicates when the parcel was first tracked by Sendcloud’s systems. | [optional]
**carrierTrackingUrl** | **string** | Link to the carrier’s Tracking page for this parcel | [optional]
**sendcloudTrackingUrl** | **string** | Link to Sendcloud’s Tracking page for this parcel. Returns a valid URL only if the tracking page for the brand associated with the parcel has been published. | [optional]
**isReturn** | **bool** | Indicates whether this parcel is a return (incoming) shipment to the merchant. | [optional]
**isToServicePoint** | **bool** | Indicates whether this parcel is delivered to a service point (e.g. a supermarket, as opposed to a home address) | [optional]
**isMailBox** | **bool** | Indicates whether this parcel will be delivered to a mail box | [optional]
**expectedDeliveryDate** | **\DateTime** | Day when the parcel will be delivered (estimate, no timestamp) | [optional]
**statuses** | [**\Toppy\Sendcloud\V2\Model\DetailedTrackingBlobStatus[]**](DetailedTrackingBlobStatus.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
