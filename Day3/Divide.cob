       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVIDE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1      PIC 9(3).
       01 Num2      PIC 9(3).
       01 Quotient  PIC 9(3).
       01 Rem       PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Enter first number: "
           ACCEPT Num1

           DISPLAY "Enter second number: "
           ACCEPT Num2

           DIVIDE Num1 BY Num2 GIVING Quotient REMAINDER Rem

           DISPLAY "Quotient is: " Quotient
           DISPLAY "Remainder is: " Rem

           STOP RUN.
