      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SeqRead.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT StudentFile ASSIGN TO "STUDENTS.DAT"
       		              ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD StudentFile.
       01 StudentDetails.
           88  EndOfStudentFile  VALUE HIGH-VALUES.
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
           OPEN INPUT StudentFile
           READ StudentFile
               AT END SET EndOfStudentFile TO TRUE
           END-READ
           PERFORM UNTIL EndOfStudentFile
               DISPLAY StudentId SPACE StudentName
                   SPACE CourseCode SPACE YOBirth
               READ StudentFile
                   AT END SET EndOfStudentFile TO TRUE
               END-READ
           END-PERFORM
           CLOSE StudentFile
           STOP RUN.
       END PROGRAM SeqRead.
