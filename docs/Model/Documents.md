# # Documents

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **string** | The type of the document. See the list below for available types. | [optional]
**size** | **string** | The paper size of the document, you can expect: a4 and a6. | [optional]
**link** | **string** | A link to the document, which allows downloading of the document in PDF, PNG, and ZPL. Learn more about the &lt;a href&#x3D;\&quot;https://api.sendcloud.dev/docs/sendcloud-public-api/integrations/operations/list-integration-shipments\&quot; target&#x3D;\&quot;_blank\&quot;&gt;**endpoint**&lt;/a&gt;.   Send a GET request to https://panel.sendcloud.sc/api/v2/parcels/{parcelID}/documents/label using your parcel ID.  You can pick the resolution in the parameters of the request. The default value is 203 dpi. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
