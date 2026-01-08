# # ParcelCreation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Identifier of the parcel (ignored when creating) | [optional]
**name** | **string** | Name of the recipient |
**companyName** | **string** | Company name of the recipient the parcel will be shipped to | [optional]
**contract** | **int** | Id of the contract that you would like to use to create the parcel with. | [optional]
**address** | **string** | Address of the recipient |
**address2** | **string** | Additional address information, e.g. 2nd level | [optional]
**houseNumber** | **string** | House number of the recipient | [optional]
**city** | **string** | City of the recipient |
**postalCode** | **string** | Zip code of the recipient |
**telephone** | **string** | Phone number of the recipient | [optional]
**requestLabel** | **bool** | Should the parcel request a label. This property used to be called requestLabel. We kept it backwards compatible by still accepting the previous name. | [optional]
**email** | **string** | E-mail address of the recipient | [optional]
**data** | **object** | This field previously served to store a &#x60;pakjegemak&#x60; key; however, the data provided in this field is no longer stored or used anymore. Please use &#x60;to_service_point&#x60; property to use service points. | [optional]
**country** | **string** | Country of the recipient |
**shipment** | [**\Toppy\Sendcloud\Model\Shipment**](Shipment.md) |  | [optional]
**weight** | **string** | Weight of the parcel in kilograms, if none given the default weight from settings is used. If you provide no weight in your request we’ll use the default weight set in your settings. | [optional]
**orderNumber** | **string** | Order number of your order | [optional]
**insuredValue** | **int** | This field is mutually exclusive with the &#x60;total_insured_value&#x60;. Amount of Sendcloud Insurance to add.   This must be a positive value, larger than 2. If a value between 0 and 2 is sent, it is rounded up to 2. The maximum insurance is 5000.  This field does not take the carrier provided shipping method insurance into consideration.  &lt;br&gt;&lt;br&gt; Note: this value is an integer. If decimal numbers are sent, these are rounded up to the nearest whole number. Example: sending 72.35 results in a &#x60;insured_value&#x60; of 73.&lt;br&gt;&lt;br&gt; Note: For multicollo shipments, where the &#x60;quantity&#x60; is greater than 1, the specified insurance amount applies per parcel, not to the shipment as a whole. For example, if you ship 5 parcels and set the &#x60;insured_value&#x60; to 500 EUR/GBP, each parcel will be insured for 500 EUR/GBP. This results in a total shipment coverage of 5 x 500 &#x3D; 2500 EUR/GBP. | [optional]
**totalOrderValueCurrency** | **string** | The currency of the total order value. Validated against a format of “XYZ” (ISO 4217). | [optional]
**totalOrderValue** | **string** | The value paid by the buyer (via various payment methods supported by the shop(cash on delivery, pre-paid or post-paid), it will also be used for the cash on delivery amount for example “99.99”. | [optional]
**quantity** | **int** | Create a multi-collo shipment. Default value: 1. Minimal value: 1. Maximal value: 20. When request_label is true, it is required to use the Create multiple parcels method, since multiple parcels will be returned. When request_label is false, the number of parcels will be set according to this value in the incoming order overview. | [optional]
**shippingMethodCheckoutName** | **string** | Shipping method name selected by buyer during the checkout | [optional]
**toPostNumber** | **string** | Code required in case of PO Box or post locker delivery | [optional]
**countryState** | **string** | Code of the state (e.g. NY for New York) or province (e.g. RM for Rome). Destinations that require this field are USA, Canada, Italy and Australia. Errors related to this field will mention the to_state field. | [optional]
**senderAddress** | **int** | ID of the SenderAddress  **Keep in mind that this id will not be saved / reflected in the created order (Incoming Orders View / Pack&amp;Go) in case &#x60;request_label&#x60; is &#x60;false&#x60;.** | [optional]
**customsInvoiceNr** | **string** | Customs invoice number. Deprecated in favor of the &#x60;customs_information&#x60; object. | [optional]
**customsShipmentType** | **int** | Customs shipment type. Deprecated in favor of the &#x60;customs_information&#x60; object.    * &#x60;0&#x60; - Gift   * &#x60;1&#x60; - Documents   * &#x60;2&#x60; - Commercial Goods   * &#x60;3&#x60; - Commercial Sample   * &#x60;4&#x60; - Returned Goods | [optional]
**externalReference** | **string** | A reference to be assigned to this parcel. Must be unique across parcels. This field is used to create idempotence. | [optional]
**reference** | **string** | A reference to be assigned to this parcel. Multiple parcels can have the same reference. | [optional] [default to '0']
**toServicePoint** | **int** | ID of the selected service point | [optional]
**totalInsuredValue** | **int** | This field is mutually exclusive with the &#x60;insured_value&#x60;. Amount of total insurance to add.  This must be a positive value, larger than 2. If a value between 0 and 2 is sent, it is rounded up to 2. The maximum insurance is 5000 plus your shipping method’s insurance depending on the carrier.  This field works by automatically calculating how much Sendcloud Insurance you’d need to add plus your shipping method’s insurance so it matches the exact value you’ve given.  As an example, DPD insures all their shipments by 520€ by default.  If you pass the &#x60;total_insured_value&#x60;: 5000 your shipment will have a total insurance coverage of 5000€, but you’re only paying for 4480€. &lt;br&gt;&lt;br&gt; Note: this value is an integer. If decimal numbers are sent, these are rounded up to the nearest whole number. Example: sending 72.35 results in a &#x60;total_insured_value&#x60; of 73. &lt;br&gt;&lt;br&gt; Note: For multicollo shipments, where the &#x60;quantity&#x60; is greater than 1, the specified insurance amount applies per parcel, not to the shipment as a whole. For example, if you ship 5 parcels and set the &#x60;insured_value&#x60; to 500 EUR/GBP, each parcel will be insured for 500 EUR/GBP. This results in a total shipment coverage of 5 x 500 &#x3D; 2500 EUR/GBP. | [optional]
**shipmentUuid** | **string** | Unique identifier that we assign to your shipment within the Sendcloud system. | [optional]
**parcelItems** | [**\Toppy\Sendcloud\Model\ParcelItem[]**](ParcelItem.md) | List of items the order contains. Check the structure of a parcel_item in the “Parcel_items” section (remember, it’s a list of them!). | [optional]
**isReturn** | **bool** | Set to true if this parcel is a return | [optional]
**length** | **string** | Parcel length in centimeters (will be used for volumetric weight calculation) | [optional]
**width** | **string** | Parcel width in centimeters (will be used for volumetric weight calculation) | [optional]
**height** | **string** | Parcel height in centimeters (will be used for volumetric weight calculation). Note: You must provide length, width and height all at once for calculating volumetric weight or passing them as-is to carriers that require these properties Parcel height in centimeters (will be used for volumetric weight calculation). Note: You must provide length, width and height all at once for calculating volumetric weight or passing them as-is to carriers that require these properties | [optional]
**requestLabelAsync** | **bool** | Makes sure that the label is requested asynchronously. The parcel is returned, but without label. You will need to poll for status changes on the parcel. | [optional]
**applyShippingRules** | **bool** | When set to True configured shipping rules will be applied before creating the label and announcing the Parcel | [optional]
**fromName** | **string** | Name of the sender (when creating a return parcel) | [optional]
**fromCompanyName** | **string** | Company name of the sender the parcel will be shipped from (when creating a return parcel) | [optional]
**fromAddress1** | **string** | Address of the sender (when creating a return parcel) | [optional]
**fromAddress2** | **string** | Additional address information of the sender (when creating a return parcel) | [optional]
**fromHouseNumber** | **string** | House number of the sender (when creating a return parcel) | [optional]
**fromCity** | **string** | City of the sender (when creating a return parcel) | [optional]
**fromPostalCode** | **string** | Zip code of the sender | [optional]
**fromCountry** | **string** | Country of the sender (when creating a return parcel) | [optional]
**fromTelephone** | **string** | Phone number of the sender (when creating a return parcel) | [optional]
**fromEmail** | **string** | E-mail address of the sender (when creating a return parcel) | [optional]
**fromVatNumber** | **string** | VAT number of the sender (when creating a return parcel). Deprecated in favor of the &#x60;customs_information&#x60; object. | [optional]
**fromEoriNumber** | **string** | EORI number of the sender (when creating a return parcel). Deprecated in favor of the &#x60;customs_information&#x60; object. | [optional]
**fromInboundVatNumber** | **string** | GB VAT number - needed for shipments from Europe to GB (when creating a return parcel). Deprecated in favor of the &#x60;customs_information&#x60; object. | [optional]
**fromInboundEoriNumber** | **string** | GB EORI number - needed for shipments from Europe to GB (when creating a return parcel). Deprecated in favor of the &#x60;customs_information&#x60; object. | [optional]
**fromIossNumber** | **string** | IOSS(Import One-Stop Shop) number of the sender (when creating a return parcel). Deprecated in favor of the &#x60;customs_information&#x60; object. | [optional]
**customsInformation** | [**\Toppy\Sendcloud\Model\ParcelCustomsInformation**](ParcelCustomsInformation.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
