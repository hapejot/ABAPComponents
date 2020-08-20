interface ZIF_ACMP_ACTIVE_COMPONENT
  public .


  types:
    tt_cmd_defs TYPE STANDARD TABLE OF REF TO zif_mydd_cmddefinition WITH EMPTY KEY .

  methods RESPONDES_TO
    importing
      !CMDDEF type ref to ZIF_MYDD_CMDDEFINITION
    returning
      value(RESULT) type ABAP_BOOL .
  methods PROCESS_CMD
    importing
      !CMD type ref to ZIF_MYDD_COMMAND
    returning
      value(DONE) type ABAP_BOOL .
  methods AVAILABLE_CMDS
    returning
      value(CMDS) type TT_CMD_DEFS .
endinterface.
