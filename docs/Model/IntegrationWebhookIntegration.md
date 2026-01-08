# # IntegrationWebhookIntegration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | A unique identifier for an integration within Sendcloud | [optional]
**shopName** | **string** | The integration name as configured under the [integration settings in Sendcloud](https://app.sendcloud.com/v2/settings/integrations/manage) | [optional]
**shopUrl** | **string** | The integration url | [optional]
**system** | **string** | The integration type | [optional]
**failingSince** | **\DateTime** | A date time indicating when in time Sendcloud lost connection to the integration. | [optional]
**lastFetch** | **\DateTime** | A date time indicating when was the last successful order fetching. | [optional]
**lastUpdatedAt** | **\DateTime** | A date time indicating when the integration settings were updated. | [optional]
**servicePointEnabled** | **bool** | True if you have configured [service point](https://support.sendcloud.com/hc/en-us/articles/360026097951-FAQ-Service-Points) support for your integration. | [optional]
**servicePointCarriers** | **string[]** | The service point carriers configured for your integration | [optional]
**webhookActive** | **bool** | True if you have enabled webhooks, False otherwise | [optional]
**webhookUrl** | **string** | Your integration URL to be used by Sendcloud to communicate with. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
