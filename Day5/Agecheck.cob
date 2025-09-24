identification division.
program-id. Agecheck.

Data Division.
   Working-Storage Section.
   01 Age PIC 9(3).

Procedure Division.
Display " Enter your Age: "
Accept Age.

   If Age > 18
        Display "Your are an Adult and can vote."
   Else 
        Display "Your are a Minor and cannot vote."
   End-If.

   Stop Run.
