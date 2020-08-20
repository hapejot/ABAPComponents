interface ZIF_ACMP_DATA_SOURCE
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

    "! <p class="shorttext synchronized" lang="en">Preread data into internal cache</p>
    "!
  methods READ .
    "! <p class="shorttext synchronized" lang="en">Get the n-th chunk of read data</p>
    "! this requires read to be executed first.
    "! @parameter i_page | <p class="shorttext synchronized" lang="en"></p>
    "! @parameter c_data | <p class="shorttext synchronized" lang="en"></p>
  methods GET_PAGE
    importing
      !I_PAGE type I
    changing
      !C_DATA type STANDARD TABLE .
    "! <p class="shorttext synchronized" lang="en">retrieve some values of the data source</p>
    "! the query is given by a structure defined within free selection. So even many tables can be used
    "! to restrict the result set.
    "! @parameter i_query | <p class="shorttext synchronized" lang="en">query definition</p>
    "! @parameter ct_tab | <p class="shorttext synchronized" lang="en">resultset as one to one field from database</p>
  methods RETRIEVE_MULTIPLE
    importing
      !I_QUERY type ref to ZCL_BC_QUERY
    changing
      !CT_TAB type STANDARD TABLE .
  methods RETRIVE
    importing
      !I_KEY type ANY
    changing
      !C_STRCT type ANY .
endinterface.
