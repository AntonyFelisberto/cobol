      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. evaluates.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-VARIAVEIS.
           03  WS-MES      PIC 99.
           03  WS-STATUS   PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            INITIALISE WS-VARIAVEIS

            DISPLAY "INFORME O NUMERO DE UM MES"
            ACCEPT WS-MES

            DISPLAY "INFORME UM NUMERO DE STATUS"
            DISPLAY WS-STATUS

            EVALUATE WS-MES
               WHEN 01
                   DISPLAY "JANEIRO"
               WHEN 02
                   DISPLAY "FEVEREIRO"
               WHEN 03
                   DISPLAY "MARÇO"
               WHEN OTHER
                   DISPLAY "MES INVALIDO"
            END-EVALUATE

            EVALUATE WS-STATUS
               WHEN 01
                   DISPLAY "HOMEM"
               WHEN 02
                   DISPLAY "MULHER"
               WHEN 03
                   DISPLAY "OUTRO"
               WHEN OTHER
                   DISPLAY "STATUS INVALIDO"
            END-EVALUATE

            STOP RUN.
       END PROGRAM evaluates.
