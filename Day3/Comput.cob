       IDENTIFICATION DIVISION.
       PROGRAM-ID. ComputeExample.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1   PIC 9(3).
       01 Num2   PIC 9(3).
       01 Result PIC 9(5)V99.   *> allows 2 decimal places

       PROCEDURE DIVISION.
           DISPLAY "Enter first number: ".
           ACCEPT Num1.
           DISPLAY "Enter second number: ".
           ACCEPT Num2.

           COMPUTE Result = (Num1 + Num2) / 2.

           DISPLAY "Average is: " Result.
           STOP RUN.