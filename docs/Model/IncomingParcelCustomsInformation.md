# # IncomingParcelCustomsInformation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customsInvoiceNr** | **string** | Customs invoice number |
**customsShipmentType** | **int** | Customs shipment type. For Returns, this field is always set to 4 which corresponds to RETURNED_GOODS. |
**exportType** | **string** | Export type documentation serves to categorize international shipments into three primary classifications: Private exports, intended for personal use; Commercial B2C exports, directed towards individual consumers; and Commercial B2B exports, involving business-to-business transactions. These distinctions facilitate adherence to regulatory requirements and ensure the orderly movement of goods across international boundaries. | [optional]
**invoiceDate** | **\DateTime** | The date when the commercial invoice for the goods was issued (ISO 8601). | [optional]
**discountGranted** | **string** | Shipper&#39;s granted discount amount to user. | [optional]
**freightCosts** | **string** | Charges associated with the transportation of the goods to their destination paid by the receiver. | [optional]
**insuranceCosts** | **string** | The costs of insurance coverage for the goods during transit paid by the receiver. | [optional]
**otherCosts** | **string** | Additional costs or charges associated with the shipment that are not covered by freight and insurance paid by the receiver. | [optional]
**generalNotes** | **string** | Exporter or shipper can include any additional information or special instructions related to the goods being shipped. This section is used to provide details that may not be covered in other parts of the invoice but are relevant for customs clearance. | [optional]
**additionalDeclarationStatements** | **string[]** | List of additional declaration statements. Each statement may contain specific details about the nature of the goods being shipped, their origin, or any additional information required by customs authorities. The content of an additional declaration statement can vary based on the requirements of the importing and exporting countries, as well as the nature of the goods being transported. | [optional]
**importerOfRecord** | [**\Toppy\Sendcloud\Model\IncomingParcelCustomsInformationImporterOfRecord**](IncomingParcelCustomsInformationImporterOfRecord.md) |  | [optional]
**taxNumbers** | [**\Toppy\Sendcloud\Model\ParcelCustomsInformationTaxNumbers**](ParcelCustomsInformationTaxNumbers.md) |  | [optional]
**returnData** | [**\Toppy\Sendcloud\Model\ParcelCustomsInformationReturnData**](ParcelCustomsInformationReturnData.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
