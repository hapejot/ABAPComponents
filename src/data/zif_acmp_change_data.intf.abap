interface ZIF_ACMP_CHANGE_DATA
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

    "! <p class="shorttext synchronized" lang="en"></p>
    "!
    "! @parameter iv_state | <p class="shorttext synchronized" lang="en">Default C - Changed or D - Deleted or I - Inserted</p>
    "! @parameter c_row | <p class="shorttext synchronized" lang="en"></p>
  methods POST_CHANGED_ROW
    importing
      !IV_STATE type C default 'C'
    changing
      !C_ROW type ANY .
  methods SAVE_CHANGES .
  methods HAS_CHANGES
    returning
      value(R_RESULT) type ABAP_BOOL .
endinterface.
