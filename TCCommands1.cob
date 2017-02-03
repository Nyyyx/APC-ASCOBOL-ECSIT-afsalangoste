      ******************************************************************
      * Author:Nyx
      * Date:2/3/2017
      * Purpose:Learning Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TCCommands1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 StudentInfo.
           02 StudentInitials      PIC XX.
           02 StudentYear          PIC 9(4).
           02 StudentNumber        PIC 9(6).

       01 StudentDescription.
           02 StudentGender        PIC X.
           02 StudentComments      PIC X(15).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Please Input Initials, Student Number(YEAR NUMBER)".
           DISPLAY "Sample: AF2013-100100 ".
           ACCEPT StudentInfo.
           DISPLAY "Student's Initials are " StudentInitials.
           DISPLAY "With Student Number " StudentYear"-"StudentNumber.
           MOVE ALL "x" TO StudentComments.
           DISPLAY StudentComments.
           STOP RUN.
       END PROGRAM TCCommands1.
