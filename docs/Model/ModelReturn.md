# # ModelReturn

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The unique identifier of this Return object | [optional]
**createdAt** | **\DateTime** | The creation date of this Return, in ISO 8601 format | [optional]
**reason** | **int** | Identifier of the reason for this return | [optional]
**outgoingParcel** | **int** | Identifier of the original outgoing Parcel object | [optional]
**incomingParcel** | **int** | Identifier of the incoming return Parcel object | [optional]
**message** | **string** | Return reason message as written by the customer | [optional]
**refund** | [**\Toppy\Sendcloud\Model\ReturnRefund**](ReturnRefund.md) |  | [optional]
**isCancellable** | **bool** | Whether the incoming return parcel can still be cancelled | [optional]
**returnFee** | **float** | The fee associated with this return | [optional]
**returnFeeCurrency** | **string** | Currency of the return fee in three-letter ISO 4217 format | [optional]
**labelCost** | **float** | Cost of the label for the incoming return parcel | [optional]
**labelCurrency** | **string** | Currency of the label cost in three-letter ISO 4217 format | [optional]
**itemsCost** | **float** | Total cost of the returned items | [optional]
**deliveredAt** | **\DateTime** | Delivery date of the incoming return parcel | [optional]
**deliveryOption** | **string** | The options the customer has for returning this parcel:  * drop\\_off\\_point: At a drop-off point - Print at home  * drop\\_off\\_labelless: At a drop-off point - No printer needed  * in\\_store: Return in store  * pickup: Arrange a pick-up | [optional]
**storeLocation** | **int** | The identifier of the in-store return address | [optional]
**outgoingParcelData** | [**\Toppy\Sendcloud\Model\ReturnParcel**](ReturnParcel.md) |  | [optional]
**incomingParcelData** | [**\Toppy\Sendcloud\Model\ReturnIncomingParcelData**](ReturnIncomingParcelData.md) |  | [optional]
**incomingParcelStatus** | [**\Toppy\Sendcloud\Model\ReturnIncomingParcelStatus**](ReturnIncomingParcelStatus.md) |  | [optional]
**images** | [**\Toppy\Sendcloud\Model\ReturnImageObject[]**](ReturnImageObject.md) | A list of images attached to a return | [optional]
**ruleModifications** | [**\Toppy\Sendcloud\Model\ReturnRuleModificationsInner[]**](ReturnRuleModificationsInner.md) | List of return rules applied to this Return | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
