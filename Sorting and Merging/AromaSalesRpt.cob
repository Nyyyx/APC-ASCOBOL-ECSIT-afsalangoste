      ******************************************************************
      * Author:Nyx
      * Date:2/28/2017
      * Purpose:Aroma Sales
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. AromaSalesRpt.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT SalesFile ASSIGN TO "SALES.DAT"
               ORGANIZATION IS LINE SEQUENTIAL.

           SELECT WorkFile ASSIGN TO "SALE.TMP".
       DATA DIVISION.
       FILE SECTION.
       FD  SalesFile.
       01  SalesRec.
           02  Customer-Id         PIC 9(5).
           02  Customer-Name       PIC X(20).
           02  Oil-Id              PIC X(3).
           88  Essential-Oils      VALUE "E".
           88  Base-Oils           VALUE "B".
           02  Unity-Size          PIC 9.
           02  Unit-Sold           PIC 9(3).
       01  Qty-Sold                PIC 9(5).
       01  Sale-Value              PIC 9(9).



       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM AromaSalesRpt.
