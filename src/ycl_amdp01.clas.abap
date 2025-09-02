CLASS ycl_amdp01 DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.

    TYPES: BEGIN OF flight_dict,
             carrid   TYPE sflight-carrid,
             price    TYPE sflight-price,
             currency TYPE sflight-currency,
           END OF flight_dict,

           flight_list TYPE STANDARD TABLE OF flight_dict WITH KEY carrid price.

    CLASS-METHODS get_flights
      IMPORTING VALUE(mandt)   TYPE symandt
      EXPORTING VALUE(flights) TYPE flight_list.
ENDCLASS.


CLASS ycl_amdp01 IMPLEMENTATION.
  METHOD get_flights
  BY DATABASE PROCEDURE FOR HDB
  LANGUAGE SQLSCRIPT
  OPTIONS READ-ONLY
  USING sflight.

  flights =
    select carrid, sum( price ) as price, currency
    from sflight
    where mandt = :mandt
    group by carrid, currency;
  ENDMETHOD.
ENDCLASS.
