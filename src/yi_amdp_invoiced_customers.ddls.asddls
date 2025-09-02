@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Invoiced customers, to call from AMDP'

@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.usageType: { serviceQuality: #X, sizeCategory: #S, dataClass: #MIXED }

define view entity YI_AMDP_INVOICED_CUSTOMERS
  as select distinct from snvoice

    inner join            scustom on scustom.id = snvoice.customid

{
  scustom.id,
  scustom.name,
  scustom.city,
  scustom.country
}
