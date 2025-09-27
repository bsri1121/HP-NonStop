       IDENTIFICATION DIVISION.
       PROGRAM-ID. IfElseExample.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num PIC S9(3).

       PROCEDURE DIVISION.
           DISPLAY "Enter a number: "
           ACCEPT Num

           IF Num > 0
               DISPLAY "The number is Positive."
           ELSE
               IF Num < 0
                   DISPLAY "The number is Negative."
               ELSE
                   DISPLAY "The number is Zero."
               END-IF
           END-IF

           STOP RUN.
