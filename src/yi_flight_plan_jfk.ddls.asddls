@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'JFK flight plans'

@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.usageType: { serviceQuality: #X, sizeCategory: #S, dataClass: #MIXED }

define view entity YI_FLIGHT_PLAN_JFK
  as select from YI_FLIGHT_PLAN_DEMO

{
  key carrid,
  key connid,

      airpfrom,
      airpto,
      from_name,
      to_name
}

where airpfrom = 'JFK'
   or airpto   = 'JFK'
