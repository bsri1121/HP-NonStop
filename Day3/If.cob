IDENTIFICATION DIVISION.
PROGRAM-ID. IfExample.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 NUM1         PIC 9(5) VALUE ZEROS.
01 NUM2         PIC 9(5) VALUE ZEROS.

PROCEDURE DIVISION.
DISPLAY "Enter first number: "
ACCEPT NUM1
DISPLAY "Enter second number: "
ACCEPT NUM2

IF NUM1 > NUM2
    DISPLAY "First number is greater than second number."
ELSE IF NUM1 < NUM2
    DISPLAY "Second number is greater than first number."
ELSE
    DISPLAY "Both numbers are equal."
END-IF

STOP RUN.