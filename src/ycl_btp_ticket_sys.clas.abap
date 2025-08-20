CLASS ycl_btp_ticket_sys DEFINITION
  PUBLIC ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES yif_remote_ticket_sys
    FINAL METHODS accept_new_tickets
    ABSTRACT METHODS cancel_tickets.

    METHODS is_btp_available
      FINAL
      RETURNING VALUE(result) TYPE abap_bool.

  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.


CLASS ycl_btp_ticket_sys IMPLEMENTATION.
  METHOD yif_remote_ticket_sys~accept_new_tickets.
    NEW-LINE.
    WRITE 'Tickets sent to BTP'.
  ENDMETHOD.

  METHOD is_btp_available.
    result = abap_true.
  ENDMETHOD.
ENDCLASS.
