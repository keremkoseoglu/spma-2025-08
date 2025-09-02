CLASS ycl_amdp_tf_np DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.

    CLASS-METHODS get_flights FOR TABLE FUNCTION yi_amdp_tf_np.
ENDCLASS.


CLASS ycl_amdp_tf_np IMPLEMENTATION.
  METHOD get_flights
  BY DATABASE FUNCTION FOR HDB LANGUAGE SQLSCRIPT
  OPTIONS READ-ONLY
  USING sflight.

    tmp = select mandt, carrid, connid, fldate
          from sflight
          where mandt = :p_client;

    return select * from :tmp;
  ENDMETHOD.
ENDCLASS.
