       IDENTIFICATION DIVISION.
       PROGRAM-ID. DayName.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DayNum PIC 9.

       PROCEDURE DIVISION.
           DISPLAY "Enter day number (1-7): "
           ACCEPT DayNum

           EVALUATE DayNum
               WHEN 1 DISPLAY "Sunday"
               WHEN 2 DISPLAY "Monday"
               WHEN 3 DISPLAY "Tuesday"
               WHEN 4 DISPLAY "Wednesday"
               WHEN 5 DISPLAY "Thursday"
               WHEN 6 DISPLAY "Friday"
               WHEN 7 DISPLAY "Saturday"
               WHEN OTHER DISPLAY "Invalid day"
           END-EVALUATE

           STOP RUN.
