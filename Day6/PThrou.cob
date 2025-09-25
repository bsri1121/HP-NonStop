       IDENTIFICATION DIVISION.
       PROGRAM-ID. PThrou.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1   PIC 9(3) VALUE 10.
       01 Num2   PIC 9(3) VALUE 5.
       01 Result PIC 9(5).

       PROCEDURE DIVISION.

           PERFORM AddPara THROUGH MultiplyPara
           STOP RUN.
       
       *> Paragraph to add numbers
       AddPara.
           ADD Num1 TO Num2 GIVING Result
           DISPLAY "Addition Result: " Result
           .

       *> Paragraph to subtract numbers
       SubtractPara.
           SUBTRACT Num2 FROM Num1 GIVING Result
           DISPLAY "Subtraction Result: " Result
           .

       *> Paragraph to multiply numbers
       MultiplyPara.
           MULTIPLY Num1 BY Num2 GIVING Result
           DISPLAY "Multiplication Result: " Result
           .
