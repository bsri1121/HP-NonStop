Identification Division.
program-ID. Until.

Data Division.
    Working-Storage Section.
    01 Num PIC 9(4).
    01 Fact PIC 9(10) value 1.

    Local-Storage Section.

Procedure Division.

    Display "Enter a number to find it's factorial: ".
    ACCEPT Num.

    Perform UNTIL Num = 1
        Multiply Num by Fact 
        Subtract 1 from Num
    End-Perform.

    Display "Factorial is: " Fact.

    Stop Run.
