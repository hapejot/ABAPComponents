interface ZIF_ACMP_SCREEN_ADAPTER
  public .


  methods CALL_SCREEN
    importing
      !I_DYNNR type DYNNR .
  methods CALL_SCREEN_AT
    importing
      !I_LEFT type I
      !I_TOP type I
      !I_RIGHT type I
      !I_BOTTOM type I
      !I_DYNNR type DYNNR .
endinterface.
