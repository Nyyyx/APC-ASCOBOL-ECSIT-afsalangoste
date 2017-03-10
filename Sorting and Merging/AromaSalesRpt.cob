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
       SELECT Sales-File ASSIGN TO "SALES.DAT"
                 ORGANIZATION IS LINE SEQUENTIAL.

       SELECT SortSalesFile ASSIGN TO "SORTSALE.DAT"
                 ORGANIZATION IS LINE SEQUENTIAL.

        SELECT AromaSalesFile ASSIGN TO "AROMASALES.RPT"
                 ORGANIZATION IS LINE SEQUENTIAL.

       SELECT Work-File ASSIGN TO "SORT.TMP".

       DATA DIVISION.
       FILE SECTION.

       FD  Sales-File.
       01  Sales-Rec.
           02  sfCustomer-ID               PIC 9(5).
           02  sfCustomer-Name             PIC X(20).
           02  sfOil-ID.
               03  FILLER                  PIC X.
                   88 Essential-Oil        VALUE "E".
                   88 Base-Oil             VALUE "B".
               03  Oil-Number            PIC 99.
           02 sfUnit-Size                  PIC 9.
           02 sfUnit-Sold                  PIC 999.
           02 FILLER                       PIC X(5).

       FD  SortSalesFile.
       01  Sort-Sales                      PIC X(33).

       FD  AromaSalesFile.
       01  Summary-Report                  PIC X(64).

       SD Work-File.
       01  Work-Rec.
           02  wfCustomer-ID               PIC 9(5).
           02  wfCustomer-Name             PIC X(20).
           02  wfOil-ID.
               03  FILLER                  PIC X.
                   88 Essential-Oil        VALUE "E".
                   88 Base-Oil             VALUE "B".
               03  Oil-Number            PIC 99.
           02 wfUnit-Size                  PIC 9.
           02 wfUnit-Sold                  PIC 999.
           02 FILLER                       PIC X(5).

       WORKING-STORAGE SECTION.
       01  Oils-Table.
           02  Oil-Cost-Values.
               03 FILLER               PIC X(40)
               VALUE "0041003200450050002910250055003900650075".
               03 FILLER               PIC X(40)
               VALUE "0080004400500063006500550085004812500065".
               03 FILLER               PIC X(40)
               VALUE "0060005500670072006501250085006511150105".
           02  FILLER REDEFINES Oil-Cost-VALUES.
               03 OIL-COST           PIC 99V99 OCCURS 30 TIMES.

       01  FILLER                      PIC  X(64).
       01  Aromamora-Header.
           02  FILLER                  PIC X(14).
           02  Header-Title            PIC X(30)
           VALUE "AROMAMORA SUMMARY SALES REPORT".
       01  Header-LineBreak.
           02  FILLER                  PIC X(13).
           02  LineBreak               PIC X(32)
           VALUE ALL "-".
       01  FILLER                      PIC  X(64).
       01  FILLER                      PIC  X(64).
       01  Details.
           02  FILLER                  PIC X.
           02  Customer-Name           PIC X(13)  VALUE "CUSTOMER NAME".
           02  FILLER                  PIC X(8).
           02  Customer-ID             PIC X(7)    VALUE "CUST-ID".
           02  FILLER                  PIC X(3).
           02  Sales                   PIC X(5)    VALUE "SALES".
           02  FILLER                  PIC X(3).
           02  Quantity-Sold           PIC X(8)   VALUE "QTY SOLD".
           02  FILLER                  PIC X(3).
           02  Sales-Value             PIC X(11)  VALUE "SALES VALUE".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM AromaSalesRpt.
