REPORT yp_flight_plan.

TABLES spfli.

SELECT-OPTIONS:
s_carrid FOR spfli-carrid,
s_connid FOR spfli-connid.

START-OF-SELECTION.
  SELECT FROM yi_flight_plan_demo
         FIELDS *
         WHERE carrid IN @s_carrid
           AND connid IN @s_connid
         INTO TABLE @DATA(flight_plans).

  cl_salv_table=>factory( IMPORTING r_salv_table = DATA(alv)
                          CHANGING  t_table      = flight_plans ).

  alv->display( ).
