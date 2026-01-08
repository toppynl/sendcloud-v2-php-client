# # ParcelStatusChangedWebhookParcel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Sendcloud unique identifier or the parcel | [optional]
**name** | **string** | Sender name | [optional]
**companyName** | **string** | Company name of the sender | [optional]
**address** | **string** | Address of the sender | [optional]
**addressDivided** | [**\Toppy\Sendcloud\Model\ParcelStatusChangedWebhookParcelAddressDivided**](ParcelStatusChangedWebhookParcelAddressDivided.md) |  | [optional]
**city** | **string** | City name | [optional]
**postalCode** | **string** | Postal code | [optional]
**telephone** | **string** | Telephone number of the contact person | [optional]
**email** | **string** | An email address of the person this parcel is supposed to be delivered to | [optional]
**dateCreated** | **string** | Date and time of when parcel created | [optional]
**trackingNumber** | **string** | Tracking number of the shipment | [optional]
**weight** | **string** | Weight of the parcel | [optional]
**label** | [**\Toppy\Sendcloud\Model\ParcelStatusChangedWebhookParcelLabel**](ParcelStatusChangedWebhookParcelLabel.md) |  | [optional]
**customsDeclaration** | **object** | An object with available printers that lists available links to the created customs declaration form. (deprecated in favour of documents) | [optional]
**status** | [**\Toppy\Sendcloud\Model\ParcelStatusChangedWebhookParcelStatus**](ParcelStatusChangedWebhookParcelStatus.md) |  | [optional]
**data** | **object** | A pakjegemak key is still supported within this object, but it is not recommended to use. Please use &#x60;to_service_point&#x60; property to use service points. | [optional]
**country** | [**\Toppy\Sendcloud\Model\ParcelStatusChangedWebhookParcelCountry**](ParcelStatusChangedWebhookParcelCountry.md) |  | [optional]
**shipment** | [**\Toppy\Sendcloud\Model\ParcelStatusChangedWebhookParcelShipment**](ParcelStatusChangedWebhookParcelShipment.md) |  | [optional]
**orderNumber** | **string** | Order number of your order | [optional]
**shipmentUuid** | **string** | Unique identifier that we assign to your shipment within the Sendcloud system. | [optional]
**externalOrderId** | **string** | Our system will ensure uniqueness of shipments with the combination of &#x60;external_order_id&#x60; and &#x60;external_shipment_id&#x60; | [optional]
**externalShipmentId** | **string** | Our system will ensure uniqueness of shipments with the combination of &#x60;external_order_id&#x60; and &#x60;external_shipment_id&#x60; | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
