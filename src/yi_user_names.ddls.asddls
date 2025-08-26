@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'User names'

@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.usageType: { serviceQuality: #X, sizeCategory: #S, dataClass: #MIXED }

define view entity YI_USER_NAMES
  as select from    usr21

    left outer join adrp
      on  adrp.persnumber  = usr21.persnumber
      and adrp.date_from  <= $session.system_date
      and adrp.nation      = ''
      and adrp.date_to    >= $session.system_date

{
  key usr21.bname,

      /* case when adrp.name_text is not null
      then adrp.name_text
      else usr21.bname
      end          as name */

      coalesce(adrp.name_text, usr21.bname) as name
}
