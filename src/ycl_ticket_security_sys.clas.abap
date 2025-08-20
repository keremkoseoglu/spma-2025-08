CLASS ycl_ticket_security_sys DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES yif_remote_ticket_sys.
ENDCLASS.


CLASS ycl_ticket_security_sys IMPLEMENTATION.
  METHOD yif_remote_ticket_sys~accept_new_tickets.
    NEW-LINE.
    WRITE 'Tickets sent to security system'.
  ENDMETHOD.

  METHOD yif_remote_ticket_sys~cancel_tickets.
    NEW-LINE.
    WRITE 'Tickets cancelled from security system'.
  ENDMETHOD.
ENDCLASS.
