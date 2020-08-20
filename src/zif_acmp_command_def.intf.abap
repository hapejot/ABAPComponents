interface ZIF_ACMP_COMMAND_DEF
  public .


  methods EXEC
    importing
      !CMD type ref to ZIF_MYDD_COMMAND
    returning
      value(DONE) type ABAP_BOOL .
endinterface.
