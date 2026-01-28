# # InvoiceDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID of an invoice. | [optional]
**ref** | **string** | Reference of an invoice. In the format of {PODID}-{YEAR}-{COUNTRY}{INVOICENUMBER}. | [optional]
**type** | **string** | *periodical - Invoices that have been created automatically each month  *forced - Someone from the administration created an invoice manually  *initial - Invoice created for an initial payment  *other - Invoice that does not represent any type defined previously  *unblock_payment - Invoice to unblock shipment | [optional] [readonly]
**priceIncl** | **float** | The price including tax | [optional]
**priceExcl** | **float** | Price excluding the tax | [optional]
**isPayed** | **bool** | Displays &#x60;True&#x60; if invoice is paid. If the invoice is not paid, displays &#x60;False&#x60;. | [optional]
**date** | **\DateTime** | The creation date of the invoice in RFC3339 format | [optional]
**items** | [**\Toppy\Sendcloud\V2\Model\InvoiceDetailItemsInner[]**](InvoiceDetailItemsInner.md) | A list of the invoice items | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
