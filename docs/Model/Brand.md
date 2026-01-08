# # Brand

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The unique identifier of the brand | [readonly]
**name** | **string** | The brand name |
**color** | **string** | Hex code of the primary brand color | [optional]
**secondaryColor** | **string** | Hex code of the secondary brand color | [optional]
**website** | **string** | The website of the specific brand, usually used for display purposes | [optional]
**screenLogo** | [**\Toppy\Sendcloud\Model\BrandScreenLogo**](BrandScreenLogo.md) |  | [optional]
**overlayLogo** | **object** | Deprecated. Returns an empty object to not break backward compatibility | [optional]
**printLogo** | [**\Toppy\Sendcloud\Model\BrandPrintLogo**](BrandPrintLogo.md) |  | [optional]
**overlayThumb** | **object** | Deprecated. Returns an empty object to not break backward compatibility | [optional]
**screenThumb** | **string** | Thumbnail of the screen logo | [optional]
**printThumb** | **string** | Thumbnail of the print logo | [optional]
**notifyReplyToEmail** | **string** | Email address used for &#x60;reply to&#x60; actions for tracking email notifications | [optional]
**domain** | **string** | A user-defined domain for use with the tracking page and the return portal features. |
**notifyBccEmail** | **string** | [BCC email](https://en.wikipedia.org/wiki/Blind_carbon_copy) address used for &#x60;reply to&#x60; actions for tracking email notifications | [optional]
**hidePoweredBy** | **bool** | Indicates if the \&quot;powered by Sendcloud\&quot; message should be displayed on features which display the user&#39;s brand, such as the tracking page | [optional] [default to false]
**googleAnalyticsId** | **string** | A user-defined string representing the Google Analytics ID | [optional]
**features** | [**\Toppy\Sendcloud\Model\BrandFeatures**](BrandFeatures.md) |  |
**customizationSettings** | [**\Toppy\Sendcloud\Model\BrandCustomizationSettings**](BrandCustomizationSettings.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
