      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-REG-1.
           03 WS-CODIGO        PIC 9(02).
           03 WS-NOME          PIC X(15).
           03 WS-TEL           PIC X(09).

       01  WS-REG-2.
           03  WS-CODIGO       PIC 9(02).
           03  WS-NOME         PIC X(15).
           03  WS-TEL          PIC X(09).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           *> MOVE SUBSTITUI O ITEM, MOVE CORR SUBSTITUI TODOS OS ITENS
           *> ADD ADICIONA AO ITEM O VALOR, ADD CORR ADICIONA AO ITEM TODOS OS VALORES, SÓ SERVE PARA NUMERICOS
           MOVE "01CARLOS GOMES9 514-1234"    TO WS-REG-1
           MOVE 02                            TO WS-CODIGO OF WS-REG-2

           DISPLAY WS-REG-1.
           DISPLAY WS-REG-2.

           ADD CORR WS-REG-1   TO WS-REG-2

           DISPLAY WS-REG-1.
           DISPLAY WS-REG-2.

           MOVE CORR WS-REG-1   TO WS-REG-2

           DISPLAY WS-REG-1.
           DISPLAY WS-REG-2.

           ADD WS-CODIGO OF WS-REG-1          TO WS-CODIGO OF WS-REG-2  *>QUANDO O OPERADOR É ALFANUMERICO NO CASO X, VOCE TEM QUE USAR MOVE PARA SUBSTITUIR OS DADOS, JA SE FOR OUTRO VOCE PODE USAR O ADD QUE ADICIONA VALOR AOS DADOS
           MOVE WS-NOME  OF WS-REG-1          TO WS-NOME   OF WS-REG-2
           MOVE WS-TEL   OF WS-REG-1          TO WS-TEL    OF WS-REG-2

           DISPLAY WS-REG-1.
           DISPLAY WS-REG-2.

           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
