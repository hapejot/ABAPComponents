INTERFACE zif_acmp_data_consumer
  PUBLIC .


  METHODS set_data_source       IMPORTING
                                  i_data_source TYPE REF TO zif_acmp_data_source .
ENDINTERFACE.
