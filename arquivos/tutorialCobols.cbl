      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. tutorialCobols.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Hello world"
           DISPLAY 1+1

           *>IFS DE APRENDIZADO
           IF 1 EQUALS 2
               DISPLAY 1
           END-IF

           IF 1 EQUALS 2
               DISPLAY 1.

           IF 1 EQUALS 2
               DISPLAY 1
           ELSE
               DISPLAY "FUCK YOU".

           IF 0 NOT EQUALS 1
               DISPLAY 2.

           IF 1 > 1
               DISPLAY "ERROU".
           IF "SOUTH_PARK" = "SOUTH_PARK"
               DISPLAY "TIMMY".
           *>IFS DE APRENDIZADO
           STOP RUN.
       END PROGRAM tutorialCobols.
