@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #CHECK

@EndUserText.label: 'Sensitive invoice data'

@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.usageType: { serviceQuality: #X, sizeCategory: #S, dataClass: #MIXED }

define view entity YI_SENSITIVE_INVOICE_1
  as select from        snvoice

  association [1..1] to scarr   as _carrier  on _carrier.carrid = $projection.carrid
  association [1..1] to scustom as _customer on _customer.id = $projection.customid

{
  key carrid,
  key connid,
  key fldate,
  key bookid,
  key customid,
  key instno,

      @Semantics.amount.currencyCode: 'currency'
      amount,

      currency,

      _carrier,
      _customer
}
