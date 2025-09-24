       IDENTIFICATION DIVISION.
       PROGRAM-ID. IfExample.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1    PIC 9(3).
       01 Num2    PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Enter first number: "
           ACCEPT Num1

           DISPLAY "Enter second number: "
           ACCEPT Num2

           IF Num1 > Num2
               DISPLAY "Num1 is greater than Num2"
           ELSE
               DISPLAY "Num2 is greater or equal to Num1"
           END-IF

           STOP RUN.

