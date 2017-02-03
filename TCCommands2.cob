      ******************************************************************
      * Author:Nyx
      * Date:2/3/2017
      * Purpose:Learning Cobol Programming
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TCCommands2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Students.
           02 Males    PIC 9(3)    VALUE 611.
           02 Females  PIC 9(4)    VALUE 1225.
           02 TotalStudents    PIC 9999.

       01 Money.
           02 Cash     PIC 9(3) VALUE 123.
           02 Cheque   PIC 9(4) VALUE 1533.
           02 Total    PIC 9(4) VALUE 1000.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ADD Cash,20 TO Total.
           DISPLAY Total.

           STOP RUN.
       END PROGRAM TCCommands2.
