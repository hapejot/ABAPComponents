interface ZIF_ACMP_META_DATA
  public .


  types:
    tt_fieldnames TYPE STANDARD TABLE OF fieldname WITH DEFAULT KEY .
  types:
    BEGIN OF mts_value,
           name  TYPE string,
           value TYPE string,
           text  TYPE string,
           count TYPE i,
         END OF mts_value .
  types:
    mtt_values TYPE STANDARD TABLE OF mts_value WITH KEY name value text .

  constants C_UNCHANGED type C value 'U' ##NO_TEXT.
  constants C_CHANGE type C value 'C' ##NO_TEXT.
  constants C_INSERT type C value 'I' ##NO_TEXT.
  constants C_DELETE type C value 'D' ##NO_TEXT.
  constants MC_ROWSTATE type FIELDNAME value '__ROWSTATE__' ##NO_TEXT.
  constants MC_ROWID type FIELDNAME value '__ROWID__' ##NO_TEXT.

  events LIST_CHANGED .

  methods TABLE_DESC
    returning
      value(R_RESULT) type ref to CL_ABAP_TABLEDESCR .
  methods FIELD_INFO
    changing
      !CS_FCAT type ZBC_UI_S_FCAT .
  methods KEY_FIELDS
    returning
      value(RT_FIELDS) type ZFIELDNAME_TAB .
  methods NAME
    returning
      value(RV_NAME) type DFIES-TABNAME .
endinterface.
