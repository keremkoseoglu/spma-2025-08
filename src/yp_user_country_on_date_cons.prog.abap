REPORT yp_user_country_on_date_cons.

PARAMETERS p_datum TYPE sydatum OBLIGATORY DEFAULT sy-datum.

START-OF-SELECTION.
  SELECT FROM yi_user_country_on_date( key_date = @p_datum )
         FIELDS *
         INTO TABLE @DATA(user_countries).

  cl_salv_table=>factory( IMPORTING r_salv_table = DATA(alv)
                          CHANGING  t_table      = user_countries ).

  alv->display( ).
