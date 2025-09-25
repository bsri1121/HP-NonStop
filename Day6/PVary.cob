IDENTIFICATION DIVISION.
PROGRAM-ID. PVary.

Data Division.
    Working-Storage Section.
    01 N PIC 9(2).
    01 I PIC 9(2).
    01 Product PIC 9(3).

Procedure Division.
    Display " Enter a number: ".
    Accept N.

    Perform Varying I from 1 by 1 until I > 10
        Compute Product = N * I
        DISPLAY N " * " I " = " Product
    End-Perform.

    Stop Run.
