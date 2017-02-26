      ******************************************************************
      * Author:Nyx
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SeqWrite.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT StudentFile ASSIGN TO "STUDENTS.DAT"
       		              ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.

       FILE SECTION.
       FD StudentFile.
       01 StudentDetails.
           02  StudentId       PIC 99(9).
           02  StudentName.
               03 Surname      PIC X(10).
               03 Initials     PIC XX.
           02  DateOfBirth.
               03 YOBirth      PIC 9(4).
               03 MOBirth      PIC 9(2).
               03 DOBirth      PIC 9(2).
           02  CourseCode      PIC X(6).
           02  Gender          PIC X(6).

       PROCEDURE DIVISION.
       Begin.
           OPEN OUTPUT StudentFile
           DISPLAY "Enter student details using template below.  "
                                       "Enter no data to end."
           PERFORM GetStudentDetails
           PERFORM UNTIL StudentDetails = SPACES
           WRITE StudentDetails
           PERFORM GetStudentDetails
           END-PERFORM
           CLOSE StudentFile
           STOP RUN.

       GetStudentDetails.
           DISPLAY "Enter - StudId, Surname, Initials, "
           "YOB, MOB, DOB, Course, Gender"
           DISPLAY "NNNNNNNNNNSSSSSSSSSSIIYYYYMMDDCCCCCCGGGGGG"
           ACCEPT  StudentDetails.

       END PROGRAM SeqWrite.
