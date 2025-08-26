CLASS ycl_customer_vir DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_sadl_exit_calc_element_read.
ENDCLASS.


CLASS ycl_customer_vir IMPLEMENTATION.
  METHOD if_sadl_exit_calc_element_read~calculate.
    DATA customers TYPE STANDARD TABLE OF yi_customer_vir WITH KEY id.

    customers = CORRESPONDING #( it_original_data ).

    MODIFY customers FROM VALUE #( virtual_greeting = 'HELLO' )
           TRANSPORTING virtual_greeting
           WHERE virtual_greeting IS INITIAL.

    ct_calculated_data = CORRESPONDING #( customers ).
  ENDMETHOD.

  METHOD if_sadl_exit_calc_element_read~get_calculation_info.
  ENDMETHOD.
ENDCLASS.
