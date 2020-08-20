interface ZIF_ACMP_DATASET
  public .


  types:
    t_projects TYPE STANDARD TABLE OF zxrm_project WITH DEFAULT KEY .

  methods READ_OVERVIEW .
  methods PROJECTS
    returning
      value(R_PROJECTS) type T_PROJECTS .
  methods PROJECT
    importing
      !I_PROJECT type ZXRM_PROJECT-ID
    returning
      value(R_ROW) type ZXRM_PROJECT .
  methods SET_PROJECT
    importing
      !I_ROW type ZXRM_PROJECT .
  methods SAVE .
  methods TABLE .
endinterface.
