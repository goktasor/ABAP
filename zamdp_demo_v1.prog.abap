*&---------------------------------------------------------------------*
*& Report zamdp_demo_v1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZAMDP_DEMO_V1.

PARAMETERS:P_VALUE  TYPE I DEFAULT 10,
           P_VALUE2 TYPE I DEFAULT 20.

START-OF-SELECTION.

  ZCL_AMDP_DEMO=>MULTIPLY_SIMPLE(
  EXPORTING
  IV_NUMBER1 = P_VALUE
  IV_NUMBER2 = P_VALUE2
  IV_CLIENT = SY-MANDT
  IMPORTING
  EV_RETURN = DATA(LV_RETURN)
  ).

  WRITE:LV_RETURN.