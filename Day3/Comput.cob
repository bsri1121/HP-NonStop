       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARITHMATIC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1         PIC 9(3).
       01 Num2         PIC 9(3).
       01 TotalSum     PIC 9(4).
       01 Difference   PIC 9(4).
       01 Product      PIC 9(5).
       01 Quotient     PIC 9(3).
       01 Rem          PIC 9(3).
       01 ComputedVal  PIC 9(6)V99.

       PROCEDURE DIVISION.
           MOVE 25 TO Num1
           MOVE 10 TO Num2

       *> Addition
           ADD Num1 TO Num2 GIVING TotalSum
           DISPLAY "Sum = " TotalSum

       *> Subtraction
           SUBTRACT Num2 FROM Num1 GIVING Difference
           DISPLAY "Difference = " Difference

       *> Multiplication
           MULTIPLY Num1 BY Num2 GIVING Product
           DISPLAY "Product = " Product

       *> Division with remainder
           DIVIDE Num1 BY Num2 GIVING Quotient REMAINDER Rem
           DISPLAY "Quotient = " Quotient
           DISPLAY "Remainder = " Rem

       *> Compute Example (mix operations)
           COMPUTE ComputedVal = (Num1 + Num2) * 1.5
           DISPLAY "Computed Value = " ComputedVal

           STOP RUN.
