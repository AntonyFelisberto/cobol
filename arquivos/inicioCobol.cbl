      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. inicioCobol.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       *>ESTUDOS PARTE 1
       77  WS-N1   PIC 9(02)   VALUE ZEROS.
       77  WS-N2   PIC 9(02)   VALUE ZEROS.
       77  WS-N3   PIC Z(03)   VALUE ZEROS. *> Z SERVE PARA TIRAR OS ZEROS A ESQUERDA
       *>ESTUDOS PARTE 1

       *>ESTUDOS PARTE 2
       01  WS-DATA  PIC X(10) VALUE SPACES.
       01  FILLER   REDEFINES  WS-DATA.
           03 WS-DATA-DD   PIC 9(02).
           03 FILLER       PIC X.
           03 WS-DATA-MM   PIC 9(02).
           03 FILLER       PIC X.  *> filler É UMA VARIAVEL CONSTANTE
           03 WS-DATA-AA   PIC 9(04).  *> X são valores numericos
       77  WS-NOME-MES-AUX PIC X(15) VALUE SPACES. *> X são valores autonumericos
       77  WS-TECLA-AUX    PIC X.
       77  FILLER          PIC X(10) VALUE "12/12/2021".

       01  WS-MESES-ANO     PIC 99 VALUE ZEROS.
           88  WS-MES-ATUAL    VALUE 1 THRU 12.

       01  WS-DIAS-MES PIC 99 VALUE ZEROS.
           88  WS-FEV-NB       VALUE 1 THRU 28. *> SAO QUE OS VALORES PODEM IR DE TAL VALOR A TAL VALOR
           88  WS-FEV-B        VALUE 1 THRU 29.
           88  WS-MES-30       VALUE 1 THRU 30.
           88  WS-MES-31       VALUE 1 THRU 31.
       *>ESTUDOS PARTE 2



       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           *>ESTUDOS PARTE 1
           MOVE 5 TO WS-N1
           MOVE 3 TO WS-N2
           COMPUTE WS-N3 = WS-N1 + WS-N2
           DISPLAY "O RESULTADO FOI: " WS-N3

           *>ESTUDOS PARTE 2
           DISPLAY "INICIO DO PROCESSAMENTO"

           MOVE 3 TO WS-MESES-ANO.

           IF WS-MES-ATUAL THEN
               DISPLAY "MES VERDADEIRO: " WS-MESES-ANO
           ELSE
               DISPLAY "ESSE MES NAO EXISTE" WS-MESES-ANO
           END-IF

           MOVE 31 TO WS-DIAS-MES

           EVALUATE WS-DIAS-MES
               WHEN 1 THRU 28
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 29
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 30
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 31
                   DISPLAY WS-DIAS-MES
               WHEN OTHER
                   DISPLAY "O DIA DO MES NÂO EXISTE " WS-DIAS-MES
           END-EVALUATE

           STOP RUN.

           MOVE SPACES TO WS-DATA
                          WS-NOME-MES-AUX
                          WS-TECLA-AUX.

       END PROGRAM inicioCobol.
