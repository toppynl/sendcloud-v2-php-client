# toppy/sendcloud-client

Complete Sendcloud API v2 specification - merged from official sendcloud.dev documentation

For more information, please visit [https://sendcloud.dev](https://sendcloud.dev).

## Installation & Usage

### Requirements

PHP 7.2 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

Your project is free to choose the http client of your choice
Please require packages that will provide http client functionality:
https://packagist.org/providers/psr/http-client-implementation
https://packagist.org/providers/php-http/async-client-implementation
https://packagist.org/providers/psr/http-factory-implementation

As an example:

```
composer require guzzlehttp/guzzle php-http/guzzle7-adapter http-interop/http-factory-guzzle
```

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/toppy/sendcloud-client/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure HTTP basic authorization: HTTPBasicAuth
$config = Toppy\Sendcloud\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new Toppy\Sendcloud\Api\BrandsApi(
    // If you want use custom http client, pass your client which implements `Psr\Http\Client\ClientInterface`.
    // This is optional, `Psr18ClientDiscovery` will be used to find http client. For instance `GuzzleHttp\Client` implements that interface
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->scPublicV2BrandsGetAllUserBrands();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrandsApi->scPublicV2BrandsGetAllUserBrands: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://panel.sendcloud.sc/api/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BrandsApi* | [**scPublicV2BrandsGetAllUserBrands**](docs/Api/BrandsApi.md#scpublicv2brandsgetalluserbrands) | **GET** /brands | Retrieve a list of brands
*BrandsApi* | [**scPublicV2BrandsGetUserBrandById**](docs/Api/BrandsApi.md#scpublicv2brandsgetuserbrandbyid) | **GET** /brands/{id} | Retrieve a brand
*CustomsDocumentsDownloadApi* | [**scPublicV2ScpGetCustomsDocumentMultipleNormalPrinter**](docs/Api/CustomsDocumentsDownloadApi.md#scpublicv2scpgetcustomsdocumentmultiplenormalprinter) | **GET** /customs_declaration/normal_printer | Retrieve multiple customs declaration PDFs
*CustomsDocumentsDownloadApi* | [**scPublicV2ScpGetCustomsDocumentNormalPrinter**](docs/Api/CustomsDocumentsDownloadApi.md#scpublicv2scpgetcustomsdocumentnormalprinter) | **GET** /customs_declaration/normal_printer/{parcel_id} | Retrieve a customs declaration PDF
*IntegrationsApi* | [**scPublicV2OrdersDeleteDeleteAnIntegration**](docs/Api/IntegrationsApi.md#scpublicv2ordersdeletedeleteanintegration) | **DELETE** /integrations/{id} | Delete an integration
*IntegrationsApi* | [**scPublicV2OrdersGetRetrieveAListOfIntegrations**](docs/Api/IntegrationsApi.md#scpublicv2ordersgetretrievealistofintegrations) | **GET** /integrations | Retrieve a list of integrations
*IntegrationsApi* | [**scPublicV2OrdersGetRetrieveAnIntegration**](docs/Api/IntegrationsApi.md#scpublicv2ordersgetretrieveanintegration) | **GET** /integrations/{id} | Retrieve an integration
*IntegrationsApi* | [**scPublicV2OrdersGetRetrieveIntegrationLogs**](docs/Api/IntegrationsApi.md#scpublicv2ordersgetretrieveintegrationlogs) | **GET** /integrations/{id}/logs | Retrieve exception logs for a specific integration
*IntegrationsApi* | [**scPublicV2OrdersGetRetrieveIntegrationsLogs**](docs/Api/IntegrationsApi.md#scpublicv2ordersgetretrieveintegrationslogs) | **GET** /integrations/logs | Retrieve all integration exception logs
*IntegrationsApi* | [**scPublicV2OrdersPatchPartialUpdateAnIntegration**](docs/Api/IntegrationsApi.md#scpublicv2orderspatchpartialupdateanintegration) | **PATCH** /integrations/{id} | Partially update an integration
*IntegrationsApi* | [**scPublicV2OrdersPostCreateIntegrationLogs**](docs/Api/IntegrationsApi.md#scpublicv2orderspostcreateintegrationlogs) | **POST** /integrations/{id}/logs | Create integration exceptions logs
*IntegrationsApi* | [**scPublicV2OrdersPutUpdateAnIntegration**](docs/Api/IntegrationsApi.md#scpublicv2ordersputupdateanintegration) | **PUT** /integrations/{id} | Update an integration
*InvoicesApi* | [**scPublicV2ScpGetAllUserInvoices**](docs/Api/InvoicesApi.md#scpublicv2scpgetalluserinvoices) | **GET** /user/invoices | Retrieve a list of invoices
*InvoicesApi* | [**scPublicV2ScpGetInvoiceById**](docs/Api/InvoicesApi.md#scpublicv2scpgetinvoicebyid) | **GET** /user/invoices/{id} | Retrieve a specific invoice
*LabelDownloadApi* | [**scPublicV2ScpGetLabelDocumentLabelPrinter**](docs/Api/LabelDownloadApi.md#scpublicv2scpgetlabeldocumentlabelprinter) | **GET** /labels/label_printer/{parcel_id} | Retrieve a specific PDF label for a label printer
*LabelDownloadApi* | [**scPublicV2ScpGetLabelDocumentMultipleLabelPrinter**](docs/Api/LabelDownloadApi.md#scpublicv2scpgetlabeldocumentmultiplelabelprinter) | **GET** /labels/label_printer | Retrieve PDF labels for a label printer
*LabelDownloadApi* | [**scPublicV2ScpGetLabelDocumentMultipleNormalPrinter**](docs/Api/LabelDownloadApi.md#scpublicv2scpgetlabeldocumentmultiplenormalprinter) | **GET** /labels/normal_printer | Retrieve multiple PDF labels
*LabelDownloadApi* | [**scPublicV2ScpGetLabelDocumentNormalPrinter**](docs/Api/LabelDownloadApi.md#scpublicv2scpgetlabeldocumentnormalprinter) | **GET** /labels/normal_printer/{parcel_id} | Retrieve a PDF label
*LabelsApi* | [**scPublicV2ScpGetLabelByParcelId**](docs/Api/LabelsApi.md#scpublicv2scpgetlabelbyparcelid) | **GET** /labels/{parcel_id} | Retrieve a label for a specific parcel
*LabelsApi* | [**scPublicV2ScpPostLabelByParcelIds**](docs/Api/LabelsApi.md#scpublicv2scppostlabelbyparcelids) | **POST** /labels | Bulk PDF label printing
*ParcelStatusesApi* | [**scPublicV2ScpGetRetrieveAllParcelStatuses**](docs/Api/ParcelStatusesApi.md#scpublicv2scpgetretrieveallparcelstatuses) | **GET** /parcels/statuses | Retrieve a list of parcel statuses
*ParcelsApi* | [**scPublicV2ScpGetAllParcels**](docs/Api/ParcelsApi.md#scpublicv2scpgetallparcels) | **GET** /parcels | Retrieve parcels
*ParcelsApi* | [**scPublicV2ScpGetParcelById**](docs/Api/ParcelsApi.md#scpublicv2scpgetparcelbyid) | **GET** /parcels/{id} | Retrieve a parcel
*ParcelsApi* | [**scPublicV2ScpGetReturnPortalUrl**](docs/Api/ParcelsApi.md#scpublicv2scpgetreturnportalurl) | **GET** /parcels/{id}/return_portal_url | Retrieve a return portal URL
*ParcelsApi* | [**scPublicV2ScpPostCancelSpecific**](docs/Api/ParcelsApi.md#scpublicv2scppostcancelspecific) | **POST** /parcels/{id}/cancel | Cancel a parcel
*ParcelsApi* | [**scPublicV2ScpPostCreateParcel**](docs/Api/ParcelsApi.md#scpublicv2scppostcreateparcel) | **POST** /parcels | Create a parcel or parcels
*ParcelsApi* | [**scPublicV2ScpPutUpdateAParcel**](docs/Api/ParcelsApi.md#scpublicv2scpputupdateaparcel) | **PUT** /parcels | Update a parcel
*ReturnsApi* | [**scPublicV2ScpGetAllReturns**](docs/Api/ReturnsApi.md#scpublicv2scpgetallreturns) | **GET** /returns | Retrieve a list of returns
*ReturnsApi* | [**scPublicV2ScpGetReturnById**](docs/Api/ReturnsApi.md#scpublicv2scpgetreturnbyid) | **GET** /returns/{id} | Retrieve a return
*SenderAddressApi* | [**scPublicV2AddressesGetAllSenderAddresses**](docs/Api/SenderAddressApi.md#scpublicv2addressesgetallsenderaddresses) | **GET** /user/addresses/sender | Retrieve a list of sender addresses
*SenderAddressApi* | [**scPublicV2AddressesGetSenderAddressById**](docs/Api/SenderAddressApi.md#scpublicv2addressesgetsenderaddressbyid) | **GET** /user/addresses/sender/{id} | Retrieve a sender address
*ServicePointsApi* | [**scPublicV2ServicepointsGetCarriers**](docs/Api/ServicePointsApi.md#scpublicv2servicepointsgetcarriers) | **GET** /carriers | Retrieve a list of service point carriers
*ServicePointsApi* | [**scPublicV2ServicepointsGetCheckAvailability**](docs/Api/ServicePointsApi.md#scpublicv2servicepointsgetcheckavailability) | **GET** /service-points/{service_point_id}/check-availability | Retrieve availability of a service point
*ServicePointsApi* | [**scPublicV2ServicepointsGetServicePointById**](docs/Api/ServicePointsApi.md#scpublicv2servicepointsgetservicepointbyid) | **GET** /service-points/{service_point_id} | Retrieve a service point
*ServicePointsApi* | [**scPublicV2ServicepointsGetServicePoints**](docs/Api/ServicePointsApi.md#scpublicv2servicepointsgetservicepoints) | **GET** /service-points | Retrieve a list of service points
*ServicePointsApi* | [**scPublicV2ServicepointsGetStore**](docs/Api/ServicePointsApi.md#scpublicv2servicepointsgetstore) | **GET** /service-points/{shop_type}/store | Create a selected service point object
*ServicePointsApi* | [**scPublicV2ServicepointsPostCheckAndStore**](docs/Api/ServicePointsApi.md#scpublicv2servicepointspostcheckandstore) | **POST** /service-points/check_and_store | Create a selected servicepoint record after checking its availability
*ServicePointsApi* | [**scPublicV2ServicepointsPostItemsFitInShipment**](docs/Api/ServicePointsApi.md#scpublicv2servicepointspostitemsfitinshipment) | **POST** /service-points/items_fit_in_shipment | Service point carrier dimension check
*ShipmentsApi* | [**scPublicV2OrdersGetRetrieveAListOfShipments**](docs/Api/ShipmentsApi.md#scpublicv2ordersgetretrievealistofshipments) | **GET** /integrations/{id}/shipments | Retrieve a list of shipments
*ShipmentsApi* | [**scPublicV2OrdersPostCreateAListOfShipments**](docs/Api/ShipmentsApi.md#scpublicv2orderspostcreatealistofshipments) | **POST** /integrations/{id}/shipments | Create or update a list of shipments
*ShipmentsApi* | [**scPublicV2OrdersPostDeleteAShipment**](docs/Api/ShipmentsApi.md#scpublicv2orderspostdeleteashipment) | **POST** /integrations/{id}/shipments/delete | Delete a shipment
*ShippingMethodsApi* | [**scPublicV2ScpGetAllShippingMethods**](docs/Api/ShippingMethodsApi.md#scpublicv2scpgetallshippingmethods) | **GET** /shipping_methods | Retrieve a list of shipping methods
*ShippingMethodsApi* | [**scPublicV2ScpGetShippingMethodById**](docs/Api/ShippingMethodsApi.md#scpublicv2scpgetshippingmethodbyid) | **GET** /shipping_methods/{id} | Retrieve a shipping method
*TrackingApi* | [**scPublicV2TrackingGetDetailedTrackingInformation**](docs/Api/TrackingApi.md#scpublicv2trackinggetdetailedtrackinginformation) | **GET** /tracking/{tracking_number} | Retrieve tracking information of a parcel

## Models

- [Address](docs/Model/Address.md)
- [AddressDivided](docs/Model/AddressDivided.md)
- [BatchOfParcelsCreatedResponse](docs/Model/BatchOfParcelsCreatedResponse.md)
- [Brand](docs/Model/Brand.md)
- [BrandCustomizationSettings](docs/Model/BrandCustomizationSettings.md)
- [BrandCustomizationSettingsFooter](docs/Model/BrandCustomizationSettingsFooter.md)
- [BrandCustomizationSettingsFooterSocialMedia](docs/Model/BrandCustomizationSettingsFooterSocialMedia.md)
- [BrandCustomizationSettingsHeader](docs/Model/BrandCustomizationSettingsHeader.md)
- [BrandFeatures](docs/Model/BrandFeatures.md)
- [BrandPrintLogo](docs/Model/BrandPrintLogo.md)
- [BrandScreenLogo](docs/Model/BrandScreenLogo.md)
- [CancelParcelStatus](docs/Model/CancelParcelStatus.md)
- [Carrier](docs/Model/Carrier.md)
- [CarrierErrors](docs/Model/CarrierErrors.md)
- [CheckoutPayload](docs/Model/CheckoutPayload.md)
- [CheckoutPayloadDeliveryMethodData](docs/Model/CheckoutPayloadDeliveryMethodData.md)
- [CostsObject](docs/Model/CostsObject.md)
- [Country](docs/Model/Country.md)
- [CountryCodes](docs/Model/CountryCodes.md)
- [CreateABatchOfParcels](docs/Model/CreateABatchOfParcels.md)
- [CreateASingleParcel](docs/Model/CreateASingleParcel.md)
- [CreateParcelError](docs/Model/CreateParcelError.md)
- [CreateParcelErrorError](docs/Model/CreateParcelErrorError.md)
- [CustomsDocumentsAssociatedWithTheLabel](docs/Model/CustomsDocumentsAssociatedWithTheLabel.md)
- [CustomsInformation](docs/Model/CustomsInformation.md)
- [DangerousGoods](docs/Model/DangerousGoods.md)
- [DetailedTrackingBlob](docs/Model/DetailedTrackingBlob.md)
- [DetailedTrackingBlobStatus](docs/Model/DetailedTrackingBlobStatus.md)
- [Documents](docs/Model/Documents.md)
- [FailedToCreateParcelsResponse](docs/Model/FailedToCreateParcelsResponse.md)
- [FailedToCreateParcelsResponseFailedParcelsInner](docs/Model/FailedToCreateParcelsResponseFailedParcelsInner.md)
- [IncomingParcelCustomsInformation](docs/Model/IncomingParcelCustomsInformation.md)
- [IncomingParcelCustomsInformationImporterOfRecord](docs/Model/IncomingParcelCustomsInformationImporterOfRecord.md)
- [Integration](docs/Model/Integration.md)
- [IntegrationLog](docs/Model/IntegrationLog.md)
- [IntegrationUpdate](docs/Model/IntegrationUpdate.md)
- [Invoice](docs/Model/Invoice.md)
- [InvoiceDetail](docs/Model/InvoiceDetail.md)
- [InvoiceDetailItemsInner](docs/Model/InvoiceDetailItemsInner.md)
- [InvoicesError](docs/Model/InvoicesError.md)
- [Label](docs/Model/Label.md)
- [LabelMultipleResponse](docs/Model/LabelMultipleResponse.md)
- [LabelObject](docs/Model/LabelObject.md)
- [LabelObject1](docs/Model/LabelObject1.md)
- [LabelSingleResponse](docs/Model/LabelSingleResponse.md)
- [ModelReturn](docs/Model/ModelReturn.md)
- [ParcelCreation](docs/Model/ParcelCreation.md)
- [ParcelCustomsInformation](docs/Model/ParcelCustomsInformation.md)
- [ParcelCustomsInformationImporterOfRecord](docs/Model/ParcelCustomsInformationImporterOfRecord.md)
- [ParcelCustomsInformationReturnData](docs/Model/ParcelCustomsInformationReturnData.md)
- [ParcelCustomsInformationTaxNumbers](docs/Model/ParcelCustomsInformationTaxNumbers.md)
- [ParcelItem](docs/Model/ParcelItem.md)
- [ParcelItems](docs/Model/ParcelItems.md)
- [ParcelResponseFull](docs/Model/ParcelResponseFull.md)
- [ParcelResponseShort](docs/Model/ParcelResponseShort.md)
- [ParcelResponseShortCarrier](docs/Model/ParcelResponseShortCarrier.md)
- [RequestObject](docs/Model/RequestObject.md)
- [ResponseObject](docs/Model/ResponseObject.md)
- [ReturnImageObject](docs/Model/ReturnImageObject.md)
- [ReturnIncomingParcelData](docs/Model/ReturnIncomingParcelData.md)
- [ReturnIncomingParcelStatus](docs/Model/ReturnIncomingParcelStatus.md)
- [ReturnParcel](docs/Model/ReturnParcel.md)
- [ReturnParcelRulesInner](docs/Model/ReturnParcelRulesInner.md)
- [ReturnParcelRulesInnerModificationsInner](docs/Model/ReturnParcelRulesInnerModificationsInner.md)
- [ReturnRefund](docs/Model/ReturnRefund.md)
- [ReturnRefundRefundType](docs/Model/ReturnRefundRefundType.md)
- [ReturnRuleModificationsInner](docs/Model/ReturnRuleModificationsInner.md)
- [ScPublicV2AddressesGetAllSenderAddresses200Response](docs/Model/ScPublicV2AddressesGetAllSenderAddresses200Response.md)
- [ScPublicV2AddressesGetSenderAddressById200Response](docs/Model/ScPublicV2AddressesGetSenderAddressById200Response.md)
- [ScPublicV2AddressesGetSenderAddressById404Response](docs/Model/ScPublicV2AddressesGetSenderAddressById404Response.md)
- [ScPublicV2AddressesGetSenderAddressById404ResponseError](docs/Model/ScPublicV2AddressesGetSenderAddressById404ResponseError.md)
- [ScPublicV2BrandsGetAllUserBrands200Response](docs/Model/ScPublicV2BrandsGetAllUserBrands200Response.md)
- [ScPublicV2BrandsGetUserBrandById404Response](docs/Model/ScPublicV2BrandsGetUserBrandById404Response.md)
- [ScPublicV2BrandsGetUserBrandById404ResponseError](docs/Model/ScPublicV2BrandsGetUserBrandById404ResponseError.md)
- [ScPublicV2OrdersGetRetrieveAListOfShipments200Response](docs/Model/ScPublicV2OrdersGetRetrieveAListOfShipments200Response.md)
- [ScPublicV2OrdersGetRetrieveAListOfShipments404Response](docs/Model/ScPublicV2OrdersGetRetrieveAListOfShipments404Response.md)
- [ScPublicV2OrdersGetRetrieveAListOfShipments404ResponseError](docs/Model/ScPublicV2OrdersGetRetrieveAListOfShipments404ResponseError.md)
- [ScPublicV2OrdersGetRetrieveAnIntegration404Response](docs/Model/ScPublicV2OrdersGetRetrieveAnIntegration404Response.md)
- [ScPublicV2OrdersGetRetrieveAnIntegration404ResponseError](docs/Model/ScPublicV2OrdersGetRetrieveAnIntegration404ResponseError.md)
- [ScPublicV2OrdersGetRetrieveIntegrationsLogs200Response](docs/Model/ScPublicV2OrdersGetRetrieveIntegrationsLogs200Response.md)
- [ScPublicV2OrdersPostCreateAListOfShipments200ResponseInner](docs/Model/ScPublicV2OrdersPostCreateAListOfShipments200ResponseInner.md)
- [ScPublicV2OrdersPostDeleteAShipment400Response](docs/Model/ScPublicV2OrdersPostDeleteAShipment400Response.md)
- [ScPublicV2OrdersPostDeleteAShipment400ResponseError](docs/Model/ScPublicV2OrdersPostDeleteAShipment400ResponseError.md)
- [ScPublicV2OrdersPostDeleteAShipmentRequest](docs/Model/ScPublicV2OrdersPostDeleteAShipmentRequest.md)
- [ScPublicV2OrdersPostDeleteAShipmentRequestOneOf](docs/Model/ScPublicV2OrdersPostDeleteAShipmentRequestOneOf.md)
- [ScPublicV2OrdersPostDeleteAShipmentRequestOneOf1](docs/Model/ScPublicV2OrdersPostDeleteAShipmentRequestOneOf1.md)
- [ScPublicV2OrdersPutUpdateAnIntegration400Response](docs/Model/ScPublicV2OrdersPutUpdateAnIntegration400Response.md)
- [ScPublicV2OrdersPutUpdateAnIntegration400ResponseError](docs/Model/ScPublicV2OrdersPutUpdateAnIntegration400ResponseError.md)
- [ScPublicV2ScpGetAllParcels200Response](docs/Model/ScPublicV2ScpGetAllParcels200Response.md)
- [ScPublicV2ScpGetAllReturns200Response](docs/Model/ScPublicV2ScpGetAllReturns200Response.md)
- [ScPublicV2ScpGetAllShippingMethods200Response](docs/Model/ScPublicV2ScpGetAllShippingMethods200Response.md)
- [ScPublicV2ScpGetAllUserInvoices200Response](docs/Model/ScPublicV2ScpGetAllUserInvoices200Response.md)
- [ScPublicV2ScpGetInvoiceById200Response](docs/Model/ScPublicV2ScpGetInvoiceById200Response.md)
- [ScPublicV2ScpGetLabelDocumentNormalPrinter400Response](docs/Model/ScPublicV2ScpGetLabelDocumentNormalPrinter400Response.md)
- [ScPublicV2ScpGetParcelById200Response](docs/Model/ScPublicV2ScpGetParcelById200Response.md)
- [ScPublicV2ScpGetRetrieveAllParcelStatuses200ResponseInner](docs/Model/ScPublicV2ScpGetRetrieveAllParcelStatuses200ResponseInner.md)
- [ScPublicV2ScpGetReturnById404Response](docs/Model/ScPublicV2ScpGetReturnById404Response.md)
- [ScPublicV2ScpGetReturnById404ResponseError](docs/Model/ScPublicV2ScpGetReturnById404ResponseError.md)
- [ScPublicV2ScpGetReturnPortalUrl200Response](docs/Model/ScPublicV2ScpGetReturnPortalUrl200Response.md)
- [ScPublicV2ScpGetShippingMethodById200Response](docs/Model/ScPublicV2ScpGetShippingMethodById200Response.md)
- [ScPublicV2ScpGetShippingMethodById404Response](docs/Model/ScPublicV2ScpGetShippingMethodById404Response.md)
- [ScPublicV2ScpGetShippingMethodById404ResponseError](docs/Model/ScPublicV2ScpGetShippingMethodById404ResponseError.md)
- [ScPublicV2ScpPostCreateParcel200Response](docs/Model/ScPublicV2ScpPostCreateParcel200Response.md)
- [ScPublicV2ScpPostCreateParcelRequest](docs/Model/ScPublicV2ScpPostCreateParcelRequest.md)
- [ScPublicV2ScpPostLabelByParcelIdsRequest](docs/Model/ScPublicV2ScpPostLabelByParcelIdsRequest.md)
- [ScPublicV2ScpPostLabelByParcelIdsRequestLabel](docs/Model/ScPublicV2ScpPostLabelByParcelIdsRequestLabel.md)
- [ScPublicV2ScpPutUpdateAParcel200Response](docs/Model/ScPublicV2ScpPutUpdateAParcel200Response.md)
- [ScPublicV2ScpPutUpdateAParcelRequest](docs/Model/ScPublicV2ScpPutUpdateAParcelRequest.md)
- [ScPublicV2ServicepointsGetServicePoints400Response](docs/Model/ScPublicV2ServicepointsGetServicePoints400Response.md)
- [ScPublicV2ServicepointsGetServicePoints400ResponseError](docs/Model/ScPublicV2ServicepointsGetServicePoints400ResponseError.md)
- [ScPublicV2ServicepointsGetStore201Response](docs/Model/ScPublicV2ServicepointsGetStore201Response.md)
- [ScPublicV2ServicepointsPostCheckAndStore200Response](docs/Model/ScPublicV2ServicepointsPostCheckAndStore200Response.md)
- [ScPublicV2ServicepointsPostItemsFitInShipment200Response](docs/Model/ScPublicV2ServicepointsPostItemsFitInShipment200Response.md)
- [ScPublicV2ServicepointsPostItemsFitInShipmentRequest](docs/Model/ScPublicV2ServicepointsPostItemsFitInShipmentRequest.md)
- [ScPublicV2TrackingGetDetailedTrackingInformation404Response](docs/Model/ScPublicV2TrackingGetDetailedTrackingInformation404Response.md)
- [ServicePoint](docs/Model/ServicePoint.md)
- [ServicePointFormattedOpeningTimes](docs/Model/ServicePointFormattedOpeningTimes.md)
- [Shipment](docs/Model/Shipment.md)
- [ShipmentBlobOrder](docs/Model/ShipmentBlobOrder.md)
- [ShipmentBlobOrderCreate](docs/Model/ShipmentBlobOrderCreate.md)
- [ShipmentBlobStatus](docs/Model/ShipmentBlobStatus.md)
- [ShipmentCreateUpdateLog](docs/Model/ShipmentCreateUpdateLog.md)
- [ShipmentErrorLog](docs/Model/ShipmentErrorLog.md)
- [ShippingMethod](docs/Model/ShippingMethod.md)
- [ShippingMethodCountriesInner](docs/Model/ShippingMethodCountriesInner.md)
- [ShippingPriceBreakdownInner](docs/Model/ShippingPriceBreakdownInner.md)
- [SingleParcelCreatedResponse](docs/Model/SingleParcelCreatedResponse.md)
- [Status](docs/Model/Status.md)
- [TaxInformationAboutSenderReceiverAndImporterOfRecords](docs/Model/TaxInformationAboutSenderReceiverAndImporterOfRecords.md)
- [TaxNumber](docs/Model/TaxNumber.md)

## Authorization

### HTTPBasicAuth

- **Type**: HTTP basic authentication


### OAuth2

- **Type**: `OAuth`
- **Flow**: `application`
- **Authorization URL**: ``
- **Scopes**: 
    - **api**: Full API access


### OAuth2

- **Type**: `OAuth`
- **Flow**: `accessCode`
- **Authorization URL**: `https://account.sendcloud.com/oauth2/auth`
- **Scopes**: 
    - **api**: Full API access

## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

contact@sendcloud.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `2.0.0`
    - Package version: `0.2.0`
    - Generator version: `7.18.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
