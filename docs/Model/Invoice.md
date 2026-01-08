# # Invoice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID of an invoice. |
**ref** | **string** | Reference of an invoice. In the format of {PODID}-{YEAR}-{COUNTRY}{INVOICENUMBER}. |
**type** | **string** | *periodical - Invoices that have been created automatically each month  *forced - Someone from the administration created an invoice manually  *initial - Invoice created for an initial payment  *other - Invoice that does not represent any type defined previously  *unblock_payment - Invoice unblocking the payment | [readonly]
**priceIncl** | **float** | The price including tax |
**priceExcl** | **float** | Price excluding the tax |
**isPayed** | **bool** | Displays &#x60;True&#x60; if invoice is paid. If the invoice is not paid, displays &#x60;False&#x60;. |
**date** | **string** | The creation date of the invoice |
**items** | **string** | Link to the invoice |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
