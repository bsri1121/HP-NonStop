       IDENTIFICATION DIVISION.
       PROGRAM-ID. DivideExample.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1     PIC 9(3).
       01 Num2     PIC 9(3).
       01 Quotient PIC 9(3).
       01 Remainder PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Enter first number: ".
           ACCEPT Num1.
           DISPLAY "Enter second number: ".
           ACCEPT Num2.

           DIVIDE Num1 BY Num2 GIVING Quotient REMAINDER Remainder.

           DISPLAY "Quotient is: " Quotient.
           DISPLAY "Remainder is: " Remainder.
           STOP RUN.
