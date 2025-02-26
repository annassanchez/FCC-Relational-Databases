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
#27. Practice first. In the psql prompt, view all the data in the majors table.
SELECT * FROM majors;
#28. The operators you used with numbers in the last section can be used on text as well. Use the = to view all majors named Game Design. Don't forget that You need single quotes around text values.
SELECT * FROM majors WHERE major = 'Game Design';
#29. Next, view all the rows not equal to Game Design.
SELECT * FROM majors WHERE major != 'Game Design';
#30. Use the greater than operator to see majors that come after it alphabetically.
SELECT * FROM majors WHERE major > 'Game Design';
#31. Game Design was not included in the results because it is not > 'Game Design'. Try it with the greater than or equal to operator.
SELECT * FROM majors WHERE major >= 'Game Design';
#32. It included Game Design in the results that time. So if you want to see results that start with a G or after, you could use major >= 'G'. View the majors that come before G.
SELECT * FROM majors WHERE major < 'G';
#33. In your script, add an echo at the bottom to print the suggested info like you did before. Make sure to use double quotes where needed.
#!/bin/bash
#Info about my computer science students from students database
echo -e "\n~~ My Computer Science Students ~~\n"
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo -e "\nFirst name, last name, and GPA of students with a 4.0 GPA:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0")"
echo -e "\nAll course names whose first letter is before 'D' in the alphabet:"
echo "$($PSQL "SELECT course FROM courses WHERE course < 'D'")"
#34. Run the script to see what course names come before the letter D.
./student_info.sh
#35. Looks like there is five of them. Add another sentence like the others that says: First name, last name, and GPA of students whose last name begins with an 'R' or after and have a GPA greater than 3.8 or less than 2.0:
#!/bin/bash
#Info about my computer science students from students database
echo -e "\n~~ My Computer Science Students ~~\n"
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo -e "\nFirst name, last name, and GPA of students with a 4.0 GPA:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0")"
echo -e "\nAll course names whose first letter is before 'D' in the alphabet:"
echo "$($PSQL "SELECT course FROM courses WHERE course < 'D'")"
echo -e "\nFirst name, last name, and GPA of students whose last name begins with an 'R' or after and have a GPA greater than 3.8 or less than 2.0:"
#36. To find that, start by using the psql prompt to view all the data in the students table.
SELECT * FROM students;
#37. It returned 31 rows. Use the same command, but only return the rows for students whose last name comes before M in the alphabet.
SELECT * FROM students WHERE last_name < 'M';
#38. That returned 18 rows. You can use multiple conditions after WHERE with AND or OR, among others. Just add the keyword and another condition. In the psql prompt, use the same command as before, but add an OR to also return rows of students with a 3.9 GPA.
SELECT * FROM students WHERE last_name < 'M' or gpa = 3.9;
#39. It showed rows where one of the conditions was true, there was one more than last time. Enter the previous command, but use AND to view only students that meet both conditions.
SELECT * FROM students WHERE last_name < 'M' AND gpa = 3.9;
#40. Now it only shows rows where both conditions are true, one person. Enter the previous command, but add a third condition of OR gpa < 2.3.
SELECT * FROM students WHERE last_name < 'M' AND gpa = 3.9 OR gpa < 2.3;
#41. This showed all students whose GPA is less than 2.3 because the final OR condition was true for them. It didn't matter what their last name started with. You can group conditions together with parenthesis like this: WHERE <condition_1> AND (<condition_2> OR <condition_2>). This would only return rows where <condition_1> is true and one of the others is true. View students whose last name is before M that have a GPA of 3.9 or less than 2.3.
SELECT * FROM students WHERE last_name < 'M' AND (gpa = 3.9 OR gpa < 2.3);
#42. Two students meet those conditions. Back in the student info file, add an echo command at the bottom to print the suggested rows.
#!/bin/bash
#Info about my computer science students from students database
echo -e "\n~~ My Computer Science Students ~~\n"
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo -e "\nFirst name, last name, and GPA of students with a 4.0 GPA:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0")"
echo -e "\nAll course names whose first letter is before 'D' in the alphabet:"
echo "$($PSQL "SELECT course FROM courses WHERE course < 'D'")"
echo -e "\nFirst name, last name, and GPA of students whose last name begins with an 'R' or after and have a GPA greater than 3.8 or less than 2.0:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE last_name >= 'R' AND (gpa > 3.8 OR gpa < 2.0)")"
#43. Run the script to see the results.
./student_info.sh
#44. Moving along. Add another echo command, like the others, with a sentence that says: Last name of students whose last name contains a case insensitive 'sa' or have an 'r' as the second to last letter:
#!/bin/bash
#Info about my computer science students from students database
echo -e "\n~~ My Computer Science Students ~~\n"
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo -e "\nFirst name, last name, and GPA of students with a 4.0 GPA:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0")"
echo -e "\nAll course names whose first letter is before 'D' in the alphabet:"
echo "$($PSQL "SELECT course FROM courses WHERE course < 'D'")"
echo -e "\nFirst name, last name, and GPA of students whose last name begins with an 'R' or after and have a GPA greater than 3.8 or less than 2.0:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE last_name >= 'R' AND (gpa > 3.8 OR gpa < 2.0)")"
echo -e "\nLast name of students whose last name contains a case insensitive 'sa' or have an 'r' as the second to last letter:"