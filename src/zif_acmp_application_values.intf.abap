"! <p class="shorttext synchronized" lang="en">Setting for the application</p>
INTERFACE zif_acmp_application_values
  PUBLIC .

  METHODS:
    "! get or set a single value
    value
      IMPORTING
                key           TYPE string
                val           TYPE string OPTIONAL
      RETURNING VALUE(result) TYPE string,
    "! get or set a set of values by passing a structure
    values
      IMPORTING
        sturct  TYPE any OPTIONAL
      CHANGING
        cstruct TYPE any OPTIONAL.
  METHODS sync .
ENDINTERFACE.
