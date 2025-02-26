#1. The first thing you need to do is start the terminal. Do that by clicking the "hamburger" menu at the top left of the screen, going to the "terminal" section, and clicking "new terminal". Once you open a new one, type echo hello SQL into the terminal and press enter.
echo hello SQL
#2. In Part 1 of this tutorial, you created a students database and then a script to insert information about your computer science students into it. Log into the psql interactive terminal with psql --username=freecodecamp --dbname=postgres to see if it's here.
psql --username=freecodecamp --dbname=postgres
#3. List the databases.
\l
#4. Your database isn't here. You can use the .sql file you created at the end of Part 1 to rebuild it. I recommend "splitting" the terminal. You can do that by clicking the "hamburger" menu at the top left of the window, going to the "Terminal" menu, and clicking "Split Terminal". Once you've done that, enter psql -U postgres < students.sql in it to rebuild the database.
psql -U postgres < students.sql
#5. A lot of stuff happened in the terminal. That looks promising. In the psql prompt, view the databases again.
\l
#6. There's your students database. Connect to it.
\c students
#7. Now that you're connected. Display the tables and relations that are here to see if it's all correct.
\d
#8. That all looks right. View the details of the students table to make sure the stucture is right.
\d students
#9. Looks good. Make sure all the data is in the table, as well.
SELECT * FROM students;
#10. The data is all there. You should take a look at the details of the other tables and the data in them to make sure they look good. When you are done, use touch in the bash terminal to create student_info.sh. You are going to make a script to print info about your students.
touch student_info.sh
#11. Give your new file executable permissions.
chmod +x student_info.sh
#12. Add a shebang that uses bash at the top of your new script.
#!/bin/bash
#13. Below the shebang, add a comment that says Info about my computer science students from students database.
#Info about my computer science students from students database
#14. In the new script, use echo to print ~~ My Computer Science Students ~~. Use the -e flag with it to put a new line at the beginning and end of the text.
echo -e "\n~~ My Computer Science Students ~~\n"
#15. Run the script to make sure it's working.
./student_info.sh
#16. You will want to query the database again to get info about the students to display. Add the same PSQL variable you use in your insert_data.sh script. It looked like this: PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
#!/bin/bash
#Info about my computer science students from students database
echo -e "\n~~ My Computer Science Students ~~\n"
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
#17. Below the PSQL variable you just added, use echo to print First name, last name, and GPA of students with a 4.0 GPA:. Use the -e flag to put a new line at the beginning of the sentence.
#!/bin/bash
#Info about my computer science students from students database
echo -e "\n~~ My Computer Science Students ~~\n"
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo -e "\nFirst name, last name, and GPA of students with a 4.0 GPA:"
#18. You will want to print what that sentence is asking for. You should know how to make that query, but lets practice a little first. SQL stands for "Structured Query Language". It's the language you have been using to manage your relational databases. In the psql prompt, view all the data in the students table like you have done many times.
SELECT * FROM students;
#19. You should look at the column titles that were returned. The * gets all columns in a table with your query. You can return specific columns by putting the column name in the query instead of *. In the psql prompt, view just the first_name column from the students table.
SELECT first_name FROM students;
#20. Just the first_name column was returned that time. You can specify as many columns you want returned by separating them with commas. View the first_name, last_name and gpa columns from the students table.
SELECT first_name, last_name, gpa FROM students;
#21. You can return only rows you want by adding WHERE <condition> to your query. A condition can consist of a column, an operator, and a value. Use one of these to view the same columns as before but only rows WHERE gpa < 2.5.
SELECT first_name, last_name, gpa FROM students WHERE gpa < 2.5;
#22. The < only return rows where the gpa column was less than 2.5. Some other operators are: <, >, <=, >=. View the same columns, but only rows for students with a gpa greater than or equal to 3.8.
SELECT first_name, last_name, gpa FROM students WHERE gpa >= 3.8;
#23. That only returned students with a GPA of 3.8 or better. There's equal (=) and not equal (!=) operators as well. View the same columns for students that don't have a 4.0 gpa.
SELECT first_name, last_name, gpa FROM students WHERE gpa != 4.0;
#24. The right query will get you only the data you are looking for. Back in your student_info.sh file, add an echo command to the bottom that prints what the sentence above it asks for. Place double quotes around it like this: echo "$($PSQL "<query_here>")". This will make it so the output isn't all on one line.
#!/bin/bash
#Info about my computer science students from students database
echo -e "\n~~ My Computer Science Students ~~\n"
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo -e "\nFirst name, last name, and GPA of students with a 4.0 GPA:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0")"
#25. Run the script to see your students with the highest GPA's.
./student_info.sh
#26. Add another echo statement at the bottom of the script. Make it print All course names whose first letter is before 'D' in the alphabet:. Put a new line in front of it like the first sentence.
#!/bin/bash
#Info about my computer science students from students database
echo -e "\n~~ My Computer Science Students ~~\n"
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo -e "\nFirst name, last name, and GPA of students with a 4.0 GPA:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0")"
echo -e "\nAll course names whose first letter is before 'D' in the alphabet:"