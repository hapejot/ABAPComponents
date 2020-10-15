INTERFACE zif_acmp_data_source
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

  EVENTS changed .

  "! <p class="shorttext synchronized" lang="en">retrieve some values of the data source</p>
  "! the query is given by a structure defined within free selection. So even many tables can be used
  "! to restrict the result set.
  "! @parameter i_query | <p class="shorttext synchronized" lang="en">query definition</p>
  "! @parameter ct_tab | <p class="shorttext synchronized" lang="en">resultset as one to one field from database</p>
  METHODS retrieve_multiple     IMPORTING
                                  !i_query TYPE REF TO zif_acmp_query
                                CHANGING
                                  !ct_tab  TYPE STANDARD TABLE .
  METHODS retrive               IMPORTING
                                  !i_key   TYPE any
                                CHANGING
                                  !c_strct TYPE any .
ENDINTERFACE.
