# # IntegrationLog

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID of an log record | [optional] [readonly]
**integrationId** | **int** | ID of an integration to which this log belongs | [optional]
**userId** | **int** | ID of a user to which this log belongs | [optional]
**baseUrl** | **string** | Base shop URL |
**fullUrl** | **string** | Full path to resource where error happened | [optional]
**method** | **string** | HTTP method caused an error | [optional]
**responseCode** | **int** | Standard HTTP error code | [optional]
**response** | [**\Toppy\Sendcloud\Model\ResponseObject**](ResponseObject.md) |  | [optional]
**request** | [**\Toppy\Sendcloud\Model\RequestObject**](RequestObject.md) |  | [optional]
**createdAt** | **\DateTime** | Timestamp indicating when an exception occurred. If the fields is not presented in the request, current date will be set | [optional]
**exceptionType** | **string** | Internal field to store Python exception type. We use this field to suggest our users the ways how they can fix issues. | [optional]
**exception** | **string** | Human readable description of exception | [optional]
**protected** | **bool** | An indication whether or not request/response is obfuscated | [optional] [readonly]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
