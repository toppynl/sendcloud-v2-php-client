# # ReturnParcel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**trackingUrl** | **string** | URL to the tracking page of the carrier, to follow the status updates of the parcel | [optional]
**trackingNumber** | **string** | Tracking number of the parcel as created by the carrier | [optional]
**parcelStatus** | **int** | Identifier of the Parcel Status | [optional]
**globalStatusSlug** | **string** | Lookup key for the Parcel Status | [optional]
**brandName** | **string** | Name of the brand associated with this Parcel | [optional]
**orderNumber** | **string** | Identifier of the order associated with this Parcel | [optional]
**fromEmail** | **string** | Email address of the sender of this Parcel | [optional]
**deleted** | **bool** | Whether this Parcel was marked as deleted | [optional]
**colloCount** | **int** | Number of individual Parcel objects associated with this shipment | [optional]
**fromCountry** | **string** | Originating country of this Parcel in two-letter ISO 3166 format | [optional]
**fromName** | **string** | Name of the sender of this Parcel | [optional]
**shippingMethod** | **int** | Identifier of the Shipping Method chosen for this Parcel | [optional]
**extraData** | **object** | Arbitrary data about this parcel | [optional]
**rules** | [**\Toppy\Sendcloud\Model\ReturnParcelRulesInner[]**](ReturnParcelRulesInner.md) | List of policy rules applied to this Parcel. DEPRECATED, Use &#x60;rule_modifications&#x60; field of the Return object instead. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
