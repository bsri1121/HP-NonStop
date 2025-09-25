Identification division.
program-ID. Ntimes.

Data division.
    working-storage section.
    01 num PIC 9(3).
    01 ntimes PIC 9(2).
    01 sumofall PIC 9(7) VALUE 0.

    
procedure division.

   Display "Hom Many times you want to print this no: ".
   Accept ntimes.

   Perform ntimes times
     Display " Enter your number: "
     ACCEPT num
     Display " Sum of all Numbers; "
     Add num to sumofall
     Display " Total Sum of all Numbers: " sumofall
   End-Perform.

   Stop Run.

