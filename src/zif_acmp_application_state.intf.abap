interface ZIF_ACMP_APPLICATION_STATE
  public .


  methods SET_STATE
    importing
      !IV_APPKEY type STRING
      !IV_VALUE type STRING
    returning
      value(RO_STAT) type ref to ZIF_BC_APP_STATE .
  methods SYNC .
endinterface.
