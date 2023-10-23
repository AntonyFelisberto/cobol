      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. accepts.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WS-MOSTRA   PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           ACCEPT WS-MOSTRA FROM DATE
           DISPLAY WS-MOSTRA

           ACCEPT WS-MOSTRA FROM DATE YYYYMMDD
           DISPLAY WS-MOSTRA

           ACCEPT WS-MOSTRA FROM DAY
           DISPLAY WS-MOSTRA

           ACCEPT WS-MOSTRA FROM DAY YYYYDDD
           DISPLAY WS-MOSTRA

           ACCEPT WS-MOSTRA FROM DAY-OF-WEEK
           DISPLAY WS-MOSTRA

           ACCEPT WS-MOSTRA FROM TIME
           DISPLAY WS-MOSTRA

           DISPLAY "DIGITE ALGO"
           ACCEPT WS-MOSTRA
           DISPLAY "WS-MOSTRA " WS-MOSTRA " " 45 " "

           STOP RUN.
       END PROGRAM accepts.
