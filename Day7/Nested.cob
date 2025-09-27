       IDENTIFICATION DIVISION.
       PROGRAM-ID. GradeCheck.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Marks PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Enter student marks: "
           ACCEPT Marks

           IF Marks >= 75
               DISPLAY "Grade A"
           ELSE
               IF Marks >= 50
                   DISPLAY "Grade B"
               ELSE
                   DISPLAY "Grade C"
               END-IF
           END-IF

           STOP RUN.
