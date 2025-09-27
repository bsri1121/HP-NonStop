       IDENTIFICATION DIVISION.
       PROGRAM-ID. TaxSlab.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Salary PIC 9(5).

       PROCEDURE DIVISION.
           DISPLAY "Enter your salary: "
           ACCEPT Salary

           EVALUATE TRUE
               WHEN Salary < 2000
                   DISPLAY "No Tax"
               WHEN Salary >= 2000 AND Salary <= 5000
                   DISPLAY "10% Tax"
               WHEN Salary >= 5001 AND Salary <= 10000
                   DISPLAY "20% Tax"
               WHEN Salary > 10000
                   DISPLAY "30% Tax"
               WHEN OTHER
                   DISPLAY "Invalid Salary"
           END-EVALUATE

           STOP RUN.
