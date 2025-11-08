       IDENTIFICATION DIVISION.
       PROGRAM-ID. PayrollManager.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NAME       PIC A(30).
       01 WS-HOURS      PIC 9(3).
       01 WS-RATE       PIC 9(4)V99.
       01 WS-GROSS      PIC 9(6)V99.
       01 WS-TAX        PIC 9(6)V99.
       01 WS-NET        PIC 9(6)V99.

       PROCEDURE DIVISION.
       DISPLAY "Ingrese nombre del empleado: ".
       ACCEPT WS-NAME.
       DISPLAY "Horas trabajadas: ".
       ACCEPT WS-HOURS.
       DISPLAY "Tarifa por hora: ".
       ACCEPT WS-RATE.

       COMPUTE WS-GROSS = WS-HOURS * WS-RATE
       COMPUTE WS-TAX   = WS-GROSS * 0.15
       COMPUTE WS-NET   = WS-GROSS - WS-TAX

       DISPLAY "=============================".
       DISPLAY "Empleado: " WS-NAME
       DISPLAY "Bruto:    " WS-GROSS
       DISPLAY "Impuesto: " WS-TAX
       DISPLAY "Neto:     " WS-NET
       DISPLAY "=============================".

       STOP RUN.
