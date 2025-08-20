REPORT yp_connected_airports.

START-OF-SELECTION.
  DATA(obj1)        = NEW ycl_connected_airports( ).
  DATA(airport_alv) = obj1->get_as_list( ).
  cl_demo_output=>display_data( airport_alv ).
