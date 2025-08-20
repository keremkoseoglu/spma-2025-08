CLASS ycl_ticket_ai_trg_sys DEFINITION
  PUBLIC
  INHERITING FROM ycl_ticket_ai_sys FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

  PROTECTED SECTION.
    METHODS create_tickets_in_remote_sys REDEFINITION.
    METHODS cancel_tickets_in_remote_sys REDEFINITION.

  PRIVATE SECTION.
ENDCLASS.


CLASS ycl_ticket_ai_trg_sys IMPLEMENTATION.
  METHOD cancel_tickets_in_remote_sys.
    " Cancel ticket in the remote system
    super->cancel_tickets_in_remote_sys( json ).

    " Do an extra trigger
    NEW-LINE.
    WRITE 'Extra cancellation trigger done'.
  ENDMETHOD.

  METHOD create_tickets_in_remote_sys.
    " Create ticket in the remote system
    super->create_tickets_in_remote_sys( json ).

    " Do an extra trigger
    NEW-LINE.
    WRITE 'Extra creation trigger done'.
  ENDMETHOD.
ENDCLASS.
