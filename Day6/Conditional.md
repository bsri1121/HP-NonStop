Conditional Statements in COBOL

COBOL uses conditionals to make decisions in the program.

1. IF … ELSE

What it does:
Checks a condition. If it is true, one block runs; otherwise the ELSE block runs.

Example: Positive or Negative
       IDENTIFICATION DIVISION.
       PROGRAM-ID. IFEX1.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM PIC S9(4).

       PROCEDURE DIVISION.
           DISPLAY "ENTER A NUMBER: ".
           ACCEPT NUM.

           IF NUM >= 0
               DISPLAY "NUMBER IS POSITIVE"
           ELSE
               DISPLAY "NUMBER IS NEGATIVE"
           END-IF.

           STOP RUN.


Output:

ENTER A NUMBER:
-5
NUMBER IS NEGATIVE

2. Nested IF

What it does:
Puts an IF statement inside another. Used when more than one condition must be checked.

Example: Positive, Negative, or Zero
       IDENTIFICATION DIVISION.
       PROGRAM-ID. IFEX2.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM PIC S9(4).

       PROCEDURE DIVISION.
           DISPLAY "ENTER A NUMBER: ".
           ACCEPT NUM.

           IF NUM > 0
               DISPLAY "NUMBER IS POSITIVE"
           ELSE
               IF NUM < 0
                   DISPLAY "NUMBER IS NEGATIVE"
               ELSE
                   DISPLAY "NUMBER IS ZERO"
               END-IF
           END-IF.

           STOP RUN.


Output:

ENTER A NUMBER:
0
NUMBER IS ZERO

3. EVALUATE (like SWITCH-CASE)

What it does:

Used when there are multiple choices.

Looks cleaner than many IF statements.

Example: Student Grades
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVAL1.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MARKS PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "ENTER MARKS: ".
           ACCEPT MARKS.

           EVALUATE TRUE
               WHEN MARKS >= 90
                   DISPLAY "GRADE: A"
               WHEN MARKS >= 75
                   DISPLAY "GRADE: B"
               WHEN MARKS >= 50
                   DISPLAY "GRADE: C"
               WHEN OTHER
                   DISPLAY "GRADE: FAIL"
           END-EVALUATE.

           STOP RUN.

Output:

ENTER MARKS:
82
GRADE: B

4. EVALUATE with multiple values

What it does:

Can check multiple values in one WHEN.

Example: checking days of the week.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVAL2.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DAY PIC 9(1).

       PROCEDURE DIVISION.
           DISPLAY "ENTER DAY NUMBER (1=MON, 7=SUN): ".
           ACCEPT DAY.

           EVALUATE DAY
               WHEN 1 2 3 4 5
                   DISPLAY "WEEKDAY"
               WHEN 6 7
                   DISPLAY "WEEKEND"
               WHEN OTHER
                   DISPLAY "INVALID DAY"
           END-EVALUATE.

           STOP RUN.


Output:

ENTER DAY NUMBER (1=MON, 7=SUN):
6
WEEKEND

 Summary:

IF → Simple true/false decisions.

Nested IF → For checking multiple conditions step by step.

EVALUATE TRUE → For checking ranges or conditions.

EVALUATE variable → For checking multiple values.

