@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Association consumer'

@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.usageType: { serviceQuality: #X, sizeCategory: #S, dataClass: #MIXED }

define view entity YI_FLIGHT_ASSOCIATION_CONS
  as select from YI_FLIGHT_ASSOCIATION as _flight

{
  key _flight.carrid,
  key _flight.connid,
  key _flight.fldate,

      _flight._carrier.carrname,
      _flight._carrier.currcode as carrier_currency,
      _flight._booking.bookid,
      _flight._booking.customid as booking_customer
}
