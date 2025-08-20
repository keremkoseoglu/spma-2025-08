REPORT yp_ticket_sync.

DATA remote_sys TYPE REF TO yif_remote_ticket_sys.

PARAMETERS: p_bonus RADIOBUTTON GROUP rg1,
            p_secur RADIOBUTTON GROUP rg1.

START-OF-SELECTION.
  CASE abap_true.
    WHEN p_bonus.
      DATA(bonus_sys) = NEW ycl_ticket_bonus_sys( ).
      remote_sys ?= bonus_sys.

    WHEN p_secur.
      DATA(security_sys) = NEW ycl_ticket_security_sys( ).
      remote_sys = CAST #( security_sys ).
  ENDCASE.

  SELECT * FROM sticket INTO TABLE @DATA(tickets). " Dummy
  remote_sys->accept_new_tickets( CORRESPONDING #( tickets ) ).
