      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. maisLoops.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WS-CONTAR   PIC 999.
       77  WS-CONDICAO PIC 999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "INFORME ATE QUANTO DESEJA CONTAR"
           ACCEPT WS-CONDICAO

           MOVE 1 TO WS-CONTAR

           PERFORM VARYING WS-CONTAR FROM 1 BY 1 UNTIL
                           WS-CONTAR GREATER THAN WS-CONDICAO
                   DISPLAY WS-CONTAR
           END-PERFORM

           PERFORM WITH TEST AFTER UNTIL WS-CONTAR EQUAL WS-CONDICAO
                   ADD 1 TO WS-CONTAR
                   DISPLAY WS-CONTAR
           END-PERFORM

           PERFORM WITH TEST BEFORE UNTIL
                             WS-CONTAR GREATER THAN WS-CONDICAO
                   DISPLAY WS-CONTAR
                   ADD 1 TO WS-CONTAR
           END-PERFORM

           STOP RUN.
       END PROGRAM maisLoops.
