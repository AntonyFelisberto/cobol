      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ifs.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-VARIAVEIS.
           03  WS-NUM-1    PIC S9(08)V99.  *>S9 numerico com casas decimais
           03  WS-NUM-2    PIC S9(08)V99.
           03  WS-TEXTO    PIC X(20).
           03  WS-STATUS   PIC 9.
           03  WS-LINHA    PIC 99.
           03  WS-COD      PIC 9.
           03  WS-CAMPO    PIC 99.
           03  WS-DADO     PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM P100-INICIALIZA
           PERFORM P500-CALC
           PERFORM P900-FIM
           .

       P000-ERRO.
           DISPLAY "ERRO DE PROCESSAMENTO".
           PERFORM P900-FIM.

       P100-INICIALIZA.
           INITIALISE WS-VARIAVEIS.

       P500-CALC.
           SET WS-NUM-2    TO 5

           COMPUTE WS-NUM-1 = WS-NUM-1 + (WS-NUM-2 * 3)
                   ON SIZE ERROR PERFORM P000-ERRO
           END-COMPUTE

           MOVE "TEXTO"    TO WS-TEXTO



           IF WS-NUM-2 IS NUMERIC THEN
               DISPLAY "CAMPO NUMERICO"
           ELSE
               DISPLAY "CAMPO NAO NUMERICO"
               PERFORM P000-ERRO
           END-IF
           .

           DISPLAY "INFORME UM VALOR PARA O STATUS"
           ACCEPT  WS-STATUS

           IF WS-STATUS = 11 THEN
               DISPLAY "ERROS"

           IF WS-STATUS = 1
               DISPLAY "HOMEM"
           IF WS-STATUS = 2
               DISPLAY "MULHER"
           IF WS-STATUS = 3
               DISPLAY "OUTRO"
           IF WS-STATUS GREATER 3
               PERFORM P000-ERRO.

           DISPLAY "INFORME O NUMERO DA LINHA"
           ACCEPT WS-LINHA

           DISPLAY "INFORME O NUMERO DO CODIGO"
           ACCEPT WS-COD

           DISPLAY "INFORME O NUMERO DO CAMPO"
           ACCEPT WS-CAMPO

           DISPLAY "INFORME O NUMERO DO DADO"
           ACCEPT WS-DADO

           IF WS-LINHA = 30
               DISPLAY "OK, LINHA MAIOR QUE 30.".

           IF WS-LINHA GREATER 30
               DISPLAY "OK, LINHA MAIOR QUE 30."
           ELSE
               PERFORM P000-ERRO.

           IF WS-COD = 2
               DISPLAY "OK, CODIGO CORRETO"
           ELSE
               PERFORM P000-ERRO.

           IF WS-CAMPO NOT LESS WS-DADO
               DISPLAY "OK"
           ELSE
               PERFORM P000-ERRO.


           IF WS-TEXTO IS NUMERIC THEN
               DISPLAY "CAMPO NUMERICO"
           ELSE
               DISPLAY "CAMPO NAO NUMERICO"
               PERFORM P000-ERRO
           END-IF
           .

           COMPUTE WS-NUM-1 = WS-NUM-2 * -1

           IF WS-NUM-1 IS NEGATIVE THEN
               DISPLAY "OK É NEGATIVO"
           ELSE
               DISPLAY "OK NAO É NEGATIVO"
           END-IF
           .

           IF WS-NUM-1 IS POSITIVE THEN
               DISPLAY "OK NAO É NEGATIVO"
           ELSE
               DISPLAY "OK É NEGATIVO"
           END-IF
           .

           IF WS-NUM-2 GREATER THAN (WS-NUM-1 ** 2 - 4 * WS-NUM-2)
               DISPLAY "OK CALCULO CORRETO " WS-NUM-2
           ELSE
               DISPLAY "NAO OK " WS-NUM-2
           END-IF
           .

           IF WS-NUM-2 NOT GREATER THAN (WS-NUM-1 ** 2 - 4 * WS-NUM-2)
               DISPLAY "OK CALCULO CORRETO " WS-NUM-2
           ELSE
               DISPLAY "NAO OK " WS-NUM-2
           END-IF
           .

       P900-FIM.
           STOP RUN.

       END PROGRAM ifs.
