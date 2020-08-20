INTERFACE zif_acmp_logger
  PUBLIC .


  METHODS add                   IMPORTING
                                  msgstruct TYPE any OPTIONAL
                                  msgid     TYPE sy-msgid DEFAULT sy-msgid
                                  msgty     TYPE sy-msgty DEFAULT sy-msgty
                                  msgno     TYPE sy-msgno DEFAULT sy-msgno
                                  msgv1     TYPE any DEFAULT sy-msgv1
                                  msgv2     TYPE any DEFAULT sy-msgv2
                                  msgv3     TYPE any DEFAULT sy-msgv3
                                  msgv4     TYPE any DEFAULT sy-msgv4.

  METHODS info                  IMPORTING
                                  msgstruct TYPE any.

  METHODS error                 IMPORTING
                                  msgstruct TYPE any.

  METHODS status                IMPORTING
                                  msgstruct TYPE any.

  METHODS warn                  IMPORTING
                                  msgstruct TYPE any.

  METHODS sync .
ENDINTERFACE.
