"! <p class="shorttext synchronized" lang="en">Setting for the application</p>
interface ZIF_ACMP_APPLICATION_VALUES
  public .


  "! <p class="shorttext synchronized" lang="en">get or set a single value</p>
  methods VALUE
    importing
      !KEY type STRING
      !VAL type STRING optional
    returning
      value(RESULT) type STRING .
  "! <p class="shorttext synchronized" lang="en">get or set multiple values from a structure</p>
  methods VALUES
    importing
      !STURCT type ANY optional
    changing
      !CSTRUCT type ANY optional .
  "! <p class="shorttext synchronized" lang="en">tell the object to synchronize data with repository</p>
  methods SYNC .
endinterface.
