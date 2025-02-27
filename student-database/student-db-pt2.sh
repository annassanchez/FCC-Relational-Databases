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
#45. Start by viewing everything from the courses table in the psql prompt to see how you might be able to find this out.
SELECT * FROM courses;
#46. There's a few that contain the word Algorithms. You can use LIKE to find patterns in text like this: WHERE <column> LIKE '<pattern>'. An underscore (_) in a pattern will return rows that have any character in that spot. View the rows in this table with a course name that matches the pattern '_lgorithms'.
SELECT * FROM courses WHERE course LIKE '_lgorithms';
#47. That pattern matched only rows that had exactly one character, followed by lgorithms. Another pattern character is %. It means anything can be there. To find names that start with W, you could use W%. View the courses that end in lgorithms.
SELECT * FROM courses WHERE course LIKE '%lgorithms';
#48. It found two that time. Try viewing courses that start with Web.
SELECT * FROM courses WHERE course LIKE 'Web%';
#49. Combine the two pattern matching characters to show courses that have a second letter of e.
SELECT * FROM courses WHERE course LIKE '_e%';
#50. Nice job! Try viewing the courses with a space in their names.
SELECT * FROM courses WHERE course LIKE '% %';
#51. There they are. You can use NOT LIKE to find things that don't match a pattern. View courses that don't contain a space.
SELECT * FROM courses WHERE course NOT LIKE '% %';
#52. Five courses without a space. Try finding the ones that contain an A.
SELECT * FROM courses WHERE course LIKE '%A%';
#53. 6 rows. This showed all the courses with a capital A. ILIKE will ignore the case of the letters when matching. Use it to see the courses with an A or a.
SELECT * FROM courses WHERE course ILIKE '%A%';
#54. It found 11 rows that time. You can put NOT in front of ILIKE as well. Use it to see the courses that don't contain an A or a.
SELECT * FROM courses WHERE course NOT ILIKE '%A%';
#55. You combine these like any other conditions. View the courses that don't have a capital or lowercase A and have a space.
SELECT * FROM courses WHERE course NOT ILIKE '%A%' and course LIKE '% %';
#56. In your student info script, add an echo statement at the bottom like the other to print the results of the suggested query.
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
echo "$($PSQL "SELECT last_name FROM students WHERE last_name ILIKE '%sa%' or last_name LIKE '%r_'")"
#57. Run the script to see the results.
./student_info.sh
#58. Looks like five students meet those conditions. Add another echo command at the bottom, like the others. Make this one say: First name, last name, and GPA of students who have not selected a major and either their first name begins with 'D' or they have a GPA greater than 3.0:.
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
echo "$($PSQL "SELECT last_name FROM students WHERE last_name ILIKE '%sa%' or last_name LIKE '%r_'")"
echo -e "\nFirst name, last name, and GPA of students who have not selected a major and either their first name begins with 'D' or they have a GPA greater than 3.0:"
#59. Start by looking at all the data in the students table.
SELECT * FROM students;
#60. All the fields that are empty or blank are null. You can access them using IS NULL as a condition like this: WHERE <column> IS NULL. View the students who don't have a GPA.
SELECT * FROM students WHERE gpa IS NULL;
#61. Inversely, you can use IS NOT NULL to see rows that aren't null. View all the info on students that do have a GPA.
SELECT * FROM students WHERE gpa IS NOT NULL;
#62. View all the info on students who haven't chosen a major.
SELECT * FROM students WHERE major_id IS NULL;
#63. View the students who don't have a major, but don't include students without a GPA.
SELECT * FROM students WHERE major_id IS NULL and gpa is not null;
#64. One more. View the students who don't have a major and gpa.
SELECT * FROM students WHERE major_id IS NULL and gpa is null;
#65. In your script, add an echo command at the bottom to print the results the sentence is looking for.
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
echo "$($PSQL "SELECT last_name FROM students WHERE last_name ILIKE '%sa%' or last_name LIKE '%r_'")"
echo -e "\nFirst name, last name, and GPA of students who have not selected a major and either their first name begins with 'D' or they have a GPA greater than 3.0:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE major_id IS NULL and (first_name LIKE 'D%' or gpa > 3)")"
#66. Run the script to see the students that meet those conditions.
./student_info.sh
#67. There's three of them. Add another sentence, like the others that says Course name of the first five courses, in reverse alphabetical order, that have an 'e' as the second letter or end with an 's':
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
echo "$($PSQL "SELECT last_name FROM students WHERE last_name ILIKE '%sa%' or last_name LIKE '%r_'")"
echo -e "\nFirst name, last name, and GPA of students who have not selected a major and either their first name begins with 'D' or they have a GPA greater than 3.0:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE major_id IS NULL and (first_name LIKE 'D%' or gpa > 3)")"
echo -e "\nCourse name of the first five courses, in reverse alphabetical order, that have an 'e' as the second letter or end with an 's':"
#68. You can specify the order you want your results to be in by adding ORDER BY <column_name> at the end of a query. In the psql prompt, view all the info in the students table in order by the GPA's.
SELECT * FROM students ORDER BY gpa;
#69. That put the lowest GPA's at the top. When using ORDER BY, it will be in ascending (ASC) order by default. Add DESC (descending) at the end of the last query to put the highest ones at the top.
SELECT * FROM students ORDER BY gpa DESC;
#70. Now, the highest GPA's are at the top. You can add more columns to the order by separating them with a comma like this: ORDER BY <column_1>, <column_2>. Any matching values in the first ordered column will then be ordered by the next. View all the student info with the highest GPA's at the top, and in alphabetical order by first_name if the GPA's match.
SELECT * FROM students ORDER BY gpa DESC, first_name;
#71. Many times, you only want to return a certain number of rows. You can add LIMIT <number> at the end of the query to only get the amount you want. View the students in the same order as the last command, but only return the first 10 rows.
SELECT * FROM students ORDER BY gpa DESC, first_name LIMIT 10;
#72. The order of the keywords in your query matters. You cannot put LIMIT before ORDER BY, or either of them before WHERE. View the same number of students, in the same order, but don't get the ones who don't have a GPA.
SELECT * FROM students WHere gpa is not null ORDER BY gpa DESC, first_name LIMIT 10;
#73. In your script, add the echo command to print the rows the sentence is asking for.
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
echo "$($PSQL "SELECT last_name FROM students WHERE last_name ILIKE '%sa%' or last_name LIKE '%r_'")"
echo -e "\nFirst name, last name, and GPA of students who have not selected a major and either their first name begins with 'D' or they have a GPA greater than 3.0:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE major_id IS NULL and (first_name LIKE 'D%' or gpa > 3)")"
echo -e "\nCourse name of the first five courses, in reverse alphabetical order, that have an 'e' as the second letter or end with an 's':"
echo "$($PSQL "SELECT course FROM courses WHERE course LIKE '_e%' or course LIKE '%s' ORDER BY course DESC LIMIT 5")" 
#74. Run the script to see the courses.
./student_info.sh
#75. 😎 Add another echo command at the bottom of the script like the others. Make this one say, Average GPA of all students rounded to two decimal places:
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
echo "$($PSQL "SELECT last_name FROM students WHERE last_name ILIKE '%sa%' or last_name LIKE '%r_'")"
echo -e "\nFirst name, last name, and GPA of students who have not selected a major and either their first name begins with 'D' or they have a GPA greater than 3.0:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE major_id IS NULL and (first_name LIKE 'D%' or gpa > 3)")"
echo -e "\nCourse name of the first five courses, in reverse alphabetical order, that have an 'e' as the second letter or end with an 's':"
echo "$($PSQL "SELECT course FROM courses WHERE course LIKE '_e%' or course LIKE '%s' ORDER BY course DESC LIMIT 5")" 
echo -e "\nAverage GPA of all students rounded to two decimal places:"
#76. There's a number of mathematic functions to use with numerical columns. One of them is MIN, you can use it when selecting a column like this: SELECT MIN(<column>) FROM <table>. It will find the lowest value in the column. In the psql prompt, view the lowest value in the gpa column of the students table.
SELECT MIN(gpa) FROM students;
#77. Another one is MAX, use it to see the largest gpa of the same table.
SELECT MAX(gpa) FROM students;
#78. In the same fashion, use a SUM function find out what all the values of the major_id column in the students table add up to.
SELECT SUM(major_id) FROM students;
#79. AVG will give you the average of all the values in a column. Use it to see the average of the same column.
SELECT AVG(major_id) FROM students;
#80. You can round decimals up or down to the nearest whole number with CEIL and FLOOR, respectively. Use CEIL to round the average major_id up to the nearest whole number. Here's an example: CEIL(<number_to_round>).
SELECT CEIL(AVG(major_id)) FROM students;
#81. Or, you can round a number to the nearest whole number with ROUND. Use it to round the average of the major_id column to the nearest whole number.
SELECT ROUND(AVG(major_id)) FROM students;
#82. You can round to a specific number of decimal places by adding a comma and number to ROUND, like this: ROUND(<number_to_round>, <decimals_places>). Round the average of the major_id to five decimal places.
SELECT ROUND(AVG(major_id), 5) FROM students;
#83. You should be able to find what your script is asking for now. Add the command to print it.
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
echo "$($PSQL "SELECT last_name FROM students WHERE last_name ILIKE '%sa%' or last_name LIKE '%r_'")"
echo -e "\nFirst name, last name, and GPA of students who have not selected a major and either their first name begins with 'D' or they have a GPA greater than 3.0:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE major_id IS NULL and (first_name LIKE 'D%' or gpa > 3)")"
echo -e "\nCourse name of the first five courses, in reverse alphabetical order, that have an 'e' as the second letter or end with an 's':"
echo "$($PSQL "SELECT course FROM courses WHERE course LIKE '_e%' or course LIKE '%s' ORDER BY course DESC LIMIT 5")" 
echo -e "\nAverage GPA of all students rounded to two decimal places:"
echo "$($PSQL "SELECT ROUND(AVG(gpa), 2) FROM students")" 