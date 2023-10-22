      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. arraysEstaticos.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-FINANCIAMENTO.
           03 WS-CLIENTE   PIC X(20).
           03 WS-OBJETO    PIC X(20).
           03 WS-VALOR     PIC 9(06)V99.
           03 WS-PARCELAS  PIC $$.$$9,99 OCCURS 12 TIMES.

           *>03 WS-PARCELAS  PIC 9(05)V99    OCCURS 12 TIMES.  MODELO SEM CASAS DECIMAIS

       01 WS-VARIAVEIS.
           03 WS-VR-PARCELAS   PIC 9(05)V99.
           03 WS-IND           PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           INITIALISE  WS-VARIAVEIS

           DISPLAY "INFORME O NOME DO CLIENTE: "
           ACCEPT WS-CLIENTE
           DISPLAY "INFORME O OBJETO FINANCIADOR: "
           ACCEPT WS-OBJETO
           DISPLAY "INFORMAR O VALOR DO OBJETO: "
           ACCEPT WS-VALOR

           COMPUTE WS-VR-PARCELAS = WS-VALOR / 12

           PERFORM UNTIL WS-IND EQUAL 12
               ADD 1                   TO WS-IND
               MOVE WS-VR-PARCELAS     TO WS-PARCELAS(WS-IND)
           END-PERFORM

           PERFORM VARYING WS-IND FROM 1 BY 1 UNTIL WS-IND > 12
               DISPLAY "PARCELA " WS-IND ": " WS-PARCELAS(WS-IND)
           END-PERFORM

           STOP RUN.
       END PROGRAM arraysEstaticos.
