CLASS ycl_air_json_factory DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS build_conn_airport_json RETURNING VALUE(result) TYPE string.
ENDCLASS.


CLASS ycl_air_json_factory IMPLEMENTATION.
  METHOD build_conn_airport_json.
    FINAL(obj2) = NEW ycl_connected_airports( ).
    FINAL(airport_list) = obj2->get_as_list( ).
    result = /ui2/cl_json=>serialize( airport_list ).

    " obj2->read_connections( ).
  ENDMETHOD.
ENDCLASS.
