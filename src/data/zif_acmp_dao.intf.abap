interface ZIF_ACMP_DAO
  public .


  methods RETRIEVE
    importing
      !ID type ZROWID
    changing
      !CS_ROW type ANY
    raising
      ZCX_BC_NOT_FOUND .
  methods RETRIEVE_MULTIPLE
    importing
      !QUERY type STRING
    changing
      !CT_ROWS type STANDARD TABLE .
  methods CREATE
    importing
      !IS_ROW type ANY .
  methods DELETE
    importing
      !ID type ZROWID .
  methods UPDATE
    importing
      !IS_ROW type ANY .
  methods SAVE
    importing
      !IS_ROW type ANY
    returning
      value(R_ID) type ZROWID .
  methods ADD_PLUGIN .
endinterface.
