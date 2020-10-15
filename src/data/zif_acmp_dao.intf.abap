"! <p class="shorttext synchronized" lang="en">DAO</p>
INTERFACE zif_acmp_dao
  PUBLIC .


  "! <p class="shorttext synchronized" lang="en">Retrieve one single row identified by row id</p>
  "!
  "! @raising   zcx_bc_not_found | <p class="shorttext synchronized" lang="en">object not found</p>
  METHODS retrieve              IMPORTING
                                  !id     TYPE zrowid
                                CHANGING
                                  !cs_row TYPE any
                                RAISING
                                  zcx_bc_not_found .
  "! <p class="shorttext synchronized" lang="en">Retrieve multiple rows identified by a query object</p>
  METHODS retrieve_multiple     IMPORTING
                                  !query   TYPE string
                                CHANGING
                                  !ct_rows TYPE STANDARD TABLE .
  "! <p class="shorttext synchronized" lang="en">create a row, returning the new rowid</p>
  METHODS create                IMPORTING
                                  !is_row TYPE any .
  "! <p class="shorttext synchronized" lang="en">delete one row, identified by row id</p>
  METHODS delete                IMPORTING
                                  !id TYPE zrowid .
  "! <p class="shorttext synchronized" lang="en">update one row</p>
  METHODS update                IMPORTING
                                  !is_row TYPE any .
  "! <p class="shorttext synchronized" lang="en">create or update one row, returning the row id</p>
  METHODS save                  IMPORTING
                                  !is_row     TYPE any
                                RETURNING
                                  VALUE(r_id) TYPE zrowid .
  "! <p class="shorttext synchronized" lang="en">adding pre or pos processors, for the rows</p>
  METHODS add_plugin .
ENDINTERFACE.
