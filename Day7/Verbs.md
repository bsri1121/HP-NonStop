COBOL Basic Verbs:

COBOL uses verbs to perform actions. Some of the most common ones are:

ACCEPT

DISPLAY

INITIALIZE

MOVE

We’ll cover them one by one.

1. ACCEPT

Purpose:

Reads input from the user or from a file.

Typically used to take input from the keyboard.

Syntax:

ACCEPT variable.


Example:

       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCEPT-EX.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USER-NAME PIC A(20).

       PROCEDURE DIVISION.
           DISPLAY "ENTER YOUR NAME: ".
           ACCEPT USER-NAME.
           DISPLAY "HELLO, " USER-NAME.
           STOP RUN.


Example run:

ENTER YOUR NAME:
SRINIVAS
HELLO, SRINIVAS

2. DISPLAY

Purpose:

Prints a message or variable to the screen (console).

Can display strings, numeric variables, or both.

Syntax:

DISPLAY "Message".
DISPLAY variable.
DISPLAY "Text: " variable.


Example:

       IDENTIFICATION DIVISION.
       PROGRAM-ID. DISPLAY-EX.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AGE PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "ENTER YOUR AGE: ".
           ACCEPT AGE.
           DISPLAY "YOUR AGE IS: " AGE.
           STOP RUN.


Example run:

ENTER YOUR AGE:
25
YOUR AGE IS: 025

3. INITIALIZE

Purpose:

Sets numeric variables to zero and alphabetic/alphanumeric variables to spaces.

Useful to clear variables before using them.

Syntax:

INITIALIZE variable.


Example:

       IDENTIFICATION DIVISION.
       PROGRAM-ID. INITIALIZE-EX.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NAME PIC A(10) VALUE "SRINIVAS".
       01 AGE  PIC 9(3) VALUE 25.

       PROCEDURE DIVISION.
           DISPLAY "BEFORE INITIALIZE: " NAME " AGE=" AGE
           INITIALIZE NAME AGE
           DISPLAY "AFTER INITIALIZE: " NAME " AGE=" AGE
           STOP RUN.


Output:

BEFORE INITIALIZE: SRINIVAS AGE=025
AFTER INITIALIZE:            AGE=000

4. MOVE

Purpose:

Copies a value from one variable (or literal) to another variable.

Can be used with numeric, alphabetic, or alphanumeric data.

Syntax:

MOVE source TO destination.


Example:

       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVE-EX.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NAME PIC A(10).
       01 USER-NAME PIC A(10) VALUE "SRINIVAS".

       PROCEDURE DIVISION.
           DISPLAY "BEFORE MOVE: " NAME
           MOVE USER-NAME TO NAME
           DISPLAY "AFTER MOVE: " NAME
           STOP RUN.


Output:

BEFORE MOVE:
AFTER MOVE: SRINIVAS
