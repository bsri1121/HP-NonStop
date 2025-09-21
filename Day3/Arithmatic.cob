
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Arithmatic.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1        PIC 9(3).
       01 Num2        PIC 9(3).
       01 Sum         PIC 9(4).
       01 Difference  PIC 9(4).
       01 Product     PIC 9(5).
       01 Quotient    PIC 9(3).
       01 Remainder   PIC 9(3).
       01 ComputedVal PIC 9(6)V99.

       PROCEDURE DIVISION.
           DISPLAY "Enter first number: ".
           ACCEPT Num1.
           DISPLAY "Enter second number: ".
           ACCEPT Num2.

      * Addition
           ADD Num1 TO Num2 GIVING Sum.
           DISPLAY "Sum = " Sum.

      * Subtraction
           SUBTRACT Num2 FROM Num1 GIVING Difference.
           DISPLAY "Difference (Num1 - Num2) = " Difference.

      * Multiplication
           MULTIPLY Num1 BY Num2 GIVING Product.
           DISPLAY "Product = " Product.

      * Division with remainder
           DIVIDE Num1 BY Num2 GIVING Quotient REMAINDER Remainder.
           DISPLAY "Quotient = " Quotient.
           DISPLAY "Remainder = " Remainder.

      * Compute Example (mix operations)
           COMPUTE ComputedVal = (Num1 + Num2) * (Num1 - Num2) / 2.
           DISPLAY "Computed Value = " ComputedVal.

           STOP RUN.
