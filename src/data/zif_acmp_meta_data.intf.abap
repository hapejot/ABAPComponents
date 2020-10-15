INTERFACE zif_acmp_meta_data
  PUBLIC .


  TYPES:
    tt_fieldnames TYPE STANDARD TABLE OF fieldname WITH DEFAULT KEY .
  TYPES:
    BEGIN OF mts_value,
      name  TYPE string,
      value TYPE string,
      text  TYPE string,
      count TYPE i,
    END OF mts_value .
  TYPES:
    mtt_values TYPE STANDARD TABLE OF mts_value WITH KEY name value text .

  CONSTANTS c_unchanged TYPE c VALUE 'U' ##NO_TEXT.
  CONSTANTS c_change TYPE c VALUE 'C' ##NO_TEXT.
  CONSTANTS c_insert TYPE c VALUE 'I' ##NO_TEXT.
  CONSTANTS c_delete TYPE c VALUE 'D' ##NO_TEXT.
  CONSTANTS mc_rowstate TYPE fieldname VALUE '__ROWSTATE__' ##NO_TEXT.
  CONSTANTS mc_rowid TYPE fieldname VALUE '__ROWID__' ##NO_TEXT.

  METHODS table_desc            RETURNING
                                  VALUE(r_result) TYPE REF TO cl_abap_tabledescr .
  METHODS field_info            CHANGING
                                  !cs_fcat TYPE any .
  METHODS key_fields            RETURNING
                                  VALUE(rt_fields) TYPE tt_fieldnames .
  METHODS name                  RETURNING
                                  VALUE(rv_name) TYPE dfies-tabname .
ENDINTERFACE.
