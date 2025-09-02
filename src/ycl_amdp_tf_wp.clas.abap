CLASS ycl_amdp_tf_wp DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.

    CLASS-METHODS get_flights FOR TABLE FUNCTION yi_amdp_tf_wp.
ENDCLASS.


CLASS ycl_amdp_tf_wp IMPLEMENTATION.
  METHOD get_flights
  BY DATABASE FUNCTION FOR HDB LANGUAGE SQLSCRIPT
  OPTIONS READ-ONLY
  USING sflight.

    return
      select mandt, carrid, connid, fldate
      from sflight
      where mandt  = :p_client and
            carrid = :p_carrid;

  ENDMETHOD.
ENDCLASS.
