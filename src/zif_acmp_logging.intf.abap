interface ZIF_ACMP_LOGGING
  public .


  methods LOGGER
    importing
      !LOGGER type ref to ZIF_ACMP_LOGGING optional
    returning
      value(RESULT) type ref to ZIF_ACMP_LOGGING .
endinterface.
