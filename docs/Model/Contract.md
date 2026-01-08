# # Contract

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier of the contract. | [optional]
**clientId** | **string** | Client ID of a contract | [optional]
**isActive** | **bool** | Contract&#39;s status | [optional]
**carrier** | [**\Toppy\Sendcloud\Model\ContractCarrier**](ContractCarrier.md) |  | [optional]
**name** | **string** | A custom name set by the user used to identify this contract throughout the platform. | [optional]
**country** | **string** | The country of the contract, as an ISO 3166-1 alpha-2. | [optional]
**isDefault** | **bool** | Indicates if the contract is marked as default. When you have multiple active direct contracts for the same carrier, default indicates that the contract will be prioritized over the other direct contracts for the same carrier, when no contract is explicitly  mentioned while creating a parcel. You can have only one default direct contract per carrier and it will always be False for the broker and subbroker. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
