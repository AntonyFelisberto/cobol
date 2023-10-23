      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. displays.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WS-MOSTRA   PIC X(10)   VALUE "MENSAGEM".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world".
            DISPLAY "OLA " WS-MOSTRA.
            STOP RUN.
       END PROGRAM displays.
