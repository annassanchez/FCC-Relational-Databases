#!/bin/bash
#Student database
#1. The first thing you need to do is start the terminal. Do that by clicking the "hamburger" menu at the top left of the screen, going to the "terminal" section, and clicking "new terminal". Once you open a new one, type echo hello SQL into the terminal and press enter.
echo hello SQL∫
#2. You are started with two .csv files with info about your computer science students. You should take a look at them. The top row in each file has titles, and the rest are values for those titles. You will be adding all that info to a PostgreSQL database. Log into the psql interactive terminal with psql --username=freecodecamp --dbname=postgres to get started.
psql --username=freecodecamp --dbname=postgres
#3. View the existing databases with the \l shortcut command to see what's here.
\l
#4. All the info from the CSV files will go into a single database. Create a new database named students.
CREATE DATABASE students;
#5. View the databases again to make sure it got created.
\l
#6. There it is. Connect to your new database so you can start adding tables.
\c students;
#7. The CSV files have a bunch of students with info about them, and some courses and majors. You will have four tables. One for the students and their info, one for each major, another for each course, and a final one for showing what courses are included in each major. First, create the students table.
CREATE TABLE students();
#8. The second table will be for each unique major that appears in the data. Create a table named majors.
CREATE TABLE majors();
#9. The third table is for each unique course in the data. Create another table named courses.
CREATE TABLE courses();
#10. The final table will be a junction table for the majors and courses. Create it with the name majors_courses.
CREATE TABLE majors_courses();
#11. Use the display shortcut command to view your tables to make sure your satisfied with them.
\d
#12. Onto the columns. The students.csv file has four fields, you will make a column for each of those as well as an ID column. Add a column to your students table named student_id. Give it a type of SERIAL so it automatically increments and make it a PRIMARY KEY
ALTER TABLE students ADD COLUMN student_id SERIAL PRIMARY KEY;
#13. The first column in students.csv is first_name. Add a column to the students table with that name. Make it a type of VARCHAR(50) and give it the NOT NULL constraint.
ALTER TABLE students ADD COLUMN first_name VARCHAR(50) NOT NULL;
#14. The next column in the data is last_name. Add it to the students table. Give it the same data type and max-length as first_name and make sure it has the NOT NULL constraint.
ALTER TABLE students ADD COLUMN last_name VARCHAR(50) NOT NULL;
#15. The next column is for the major. Since you will have each major in another table this column will be a foreign key that references it. Create a column in the students table named major_id, give it a data type of INT for now. You will come back and set the foreign key later.
ALTER TABLE students ADD COLUMN major_id int;
#16. Create the last column, gpa. The data in the CSV shows that they are decimals with a length of 2 and 1 number is to the right of the decimal. So give it a data type of NUMERIC(2,1).
ALTER TABLE students ADD COLUMN gpa numeric(2,1);
#17. Use the shortcut command to display the details of the students table to make sure you like it.
\d students
#18. The foreign key is still missing. Let's fill in the majors table next. Add a major_id column to it. Make it a type of SERIAL and the PRIMARY KEY for this table.
ALTER TABLE majors ADD COLUMN major_id SERIAL PRIMARY KEY;
#19. This table will only have one other column for the name of the major. Add a column to it named major. Make it a VARCHAR with a max-length of 50 and give it the NOT NULL constraint.
ALTER TABLE majors ADD COLUMN major VARCHAR(50) NOT NULL;
#20. View the details of the majors table to make sure you like it.
\d majors
#21. This table looks good. Now, set the major_id column from the students table as a foreign key that references the major_id column from the majors table. Here's an example of how to do that: ALTER TABLE <table_name> ADD FOREIGN KEY(<column_name>) REFERENCES <referenced_table_name>(<referenced_column_name>);
ALTER TABLE students ADD FOREIGN KEY(major_id) REFERENCES majors(major_id);
#22. View the details of the students table again to make sure the key is there.
\d students
#23. Next, is the courses table. Add a course_id column to it. Give it a type of SERIAL and make it the primary key.
ALTER TABLE courses ADD COLUMN course_id SERIAL PRIMARY KEY;
#24. Add a course column to the courses table that's a type of VARCHAR. The course names are a little longer, so give them a max-length of 100. Also, make sure it can't accept null values.
ALTER TABLE courses ADD COLUMN course VARCHAR(100) NOT NULL;
#25. View the details of the courses table to make sure it looks good.
\d courses;
#26. One more table to go. The majors_courses junction table will have two columns, each referencing the primary key from two related table. First, add a major_id column to it. Just give it a type of INT for now.
ALTER TABLE majors_courses ADD COLUMN major_id INT;
#27. Set the major_id column you just created as a foreign key that references the major_id column from the majors table.
ALTER TABLE majors_courses ADD FOREIGN KEY(major_id) REFERENCES majors(major_id);
#28. Next, add a course_id column to the same table. Just give it a type of INT again for now.
ALTER TABLE majors_courses ADD COLUMN course_id INT;
#29. Set your new course_id column as a foreign key that references the other course_id column.
ALTER TABLE majors_courses ADD FOREIGN KEY(course_id) REFERENCES courses(course_id);
#30. View the details of the table you just worked on to make sure the structure is finished.
\d majors_courses;
#31. There's one thing missing. This table doesn't have a primary key. The data from courses.csv will go in this table. A single major will be in it multiple times, and same with a course. So neither of them can be a primary key. But there will never be a row with the same two values as another row. So the two columns together, are unique. You can create a composite primary key that uses more than one column as a unique pair like this: ALTER TABLE <table_name> ADD PRIMARY KEY(<column_name>, <column_name>); Add a composite primary key to the table using the two columns.
ALTER TABLE majors_courses ADD PRIMARY KEY(major_id, course_id);
#32. View the details of the table again.
\d majors_courses;
#33. View the details of the table again.
\d
#34. Next, you can start adding some info. Since the students table needs a major_id, you can add a major first. View the details of the majors table to see what info it expects.
\d majors
#35. It only needs the name of a major. The ID will be added automatically. Add the first major from the courses.csv file into the majors table. It's a VARCHAR, so make sure to put the value in single quotes.
INSERT INTO majors(major) VALUES('Database Administration');
#36. Use SELECT to view all the data in the majors table to make sure it got inserted correctly.
SELECT * FROM majors;
#37. Next, insert the first course from courses.csv into the courses table.
INSERT INTO courses(course) VALUES('Data Structures and Algorithms');
#38. View all the data in the courses table to make sure it got added.
SELECT * FROM courses;
#39. Next, you can add a row into the junction table. View the details of it to see what it expects.
\d majors_courses
#40. It wants a major_id and course_id. Add a row to majors_courses for the first entry in courses.csv.
INSERT INTO majors_courses(major_id, course_id) VALUES(1, 1);
#41. View all the data in the table you just added to.
SELECT * FROM majors_courses;
#42. Looks like the row got added. View the details of the students table to remind yourself what it expects so you can add the first student to the database.
\d students
#43. The output shows what the table needs. Insert the first person from students.csv into the students table.
INSERT INTO students(first_name,last_name,major_id,gpa) VALUES('Rhea','Kellems',1,2.5);
#44. Looks like it worked. View all the data in the students table to make sure.
SELECT * FROM students;
#45. Okay, you added a row into each table. It might be wise to review the data and the database structure. Adding the rest of the info one at a time would be tedious. You are going to make a script to do it for you. I recommend "splitting" the terminal for this part. You can do that by clicking the "hamburger" menu at the top left of the window, going to the "Terminal" menu, and clicking "Split Terminal". Once you've done that, use the touch command to create a file named insert_data.sh in your project folder.
touch insert_data.sh
#46. You should have two terminals open. One connected to PostgreSQL, and one for entering terminal commands. In the one for terminal commands, use the chmod command with the +x flag to give you new script executable permissions.
chmod +x insert_data.sh
#47. Open your new file and add a "shebang" that uses bash at the top. It looks like this: #!/bin/bash.
#!/bin/bash
#48. Below that, add a single line comment with the text, Script to insert data from courses.csv and students.csv into students database.
#Script to insert data from courses.csv and students.csv into students database
#49. First, you should add all the info from the courses.csv file since you need the major_id for inserting the student info. cat is a terminal command for printing the contents of a file. Here's an example: cat <filename>. Below the comment you added, use it to print courses.csv.
cat courses.csv
#50. Run your script to see if the file contents get printed.
./insert_data.sh
# 51. It worked. Instead of printing the content, you can pipe that output into a while loop so you can go through the rows one at a time. It looks like this:

#     cat courses.csv | while read MAJOR COURSE
#     do
#     <STATEMENTS>
#     done

# Each new line will be read into the variables, MAJOR and COURSE. Add the above to your cat command. In the STATEMENTS area, use echo to print the MAJOR variable.
cat courses.csv | while read MAJOR COURSE
do
    echo $MAJOR
done
#52. Run the script to see if it worked.
./insert_data.sh
#53. It's looping, but the MAJOR variable is only being set to the first word. There's a default IFS variable in bash. IFS stands for "Internal Field Separator". View it with declare -p IFS.
declare -p IFS
#54. This variable is used to determine word boundaries. It defaults to spaces, tabs, and new lines. This is why the MAJOR variable was set to only the first word on each line from the data. Between the while and read commands, set the IFS to a comma like this: IFS=","
cat courses.csv | while IFS="," read MAJOR COURSE
do
    echo $MAJOR
done
#55. Now, it should use the comma in the data to separate words instead of spaces. Run the script again to see if it's working.
./insert_data.sh
#56. Looks like that worked. It prints the whole major, including the space. Print the COURSE variable on the same line as where you print MAJOR to make sure it's all working.
cat courses.csv | while IFS="," read MAJOR COURSE
do
  echo $MAJOR $COURSE
done
#57. Run the script again to check.
./insert_data.sh
#58. Okay, your loop is working. You can use the MAJOR and COURSE variables to access the major or course when you need to insert data or query the database. Delete the echo line so you can figure out what to do next.
cat courses.csv | while IFS="," read MAJOR COURSE
do
done
#59. It helps to plan out what you want to happen. For each loop, you will want to add the major to the database if it isn't in there yet. Same for the course. Then add a row to the majors_courses table. Add these single line comments in your loop in this order: get major_id, if not found, insert major, get new major_id, get course_id, if not found, insert course, get new course_id, insert into majors_courses.
cat courses.csv | while IFS="," read MAJOR COURSE
do
    # get major_id

    # if not found

    # insert major

    # get new major_id

    # get course_id

    # if not found

    # insert course

    # get new course_id

    # insert into majors_courses

done
#60. You used the psql command to log in and interact with the database. You can use it to just run a single command and exit. Above your loop, add a PSQL variable that looks like this: PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c". This will allow you to query your database from your script. The important parts are the username, dbname, and the -c flag that is for running a single command and exiting. The rest of the flags are for formatting.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
cat courses.csv | while IFS="," read MAJOR COURSE
do
    # get major_id

    # if not found

    # insert major

    # get new major_id

    # get course_id

    # if not found

    # insert course

    # get new course_id

    # insert into majors_courses

done
#61. Now, you can query your database using the PSQL variable like this: $($PSQL "<query_here>"). The code in the parenthesis will run in a subshell, which is a separate bash process. Below the get major_id comment in your loop, create a MAJOR_ID variable. Set it equal to the result of a query that gets the major_id of the current MAJOR in the loop. Make sure to put your MAJOR variable in single quotes.
    >`PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
    cat courses.csv | while IFS="," read MAJOR COURSE
    do
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

        # if not found

        # insert major

        # get new major_id

        # get course_id

        # if not found

        # insert course

        # get new course_id

        # insert into majors_courses

    done`
#62. Below the variable you just created, use echo to print it so you can see it's value when you run the script.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
cat courses.csv | while IFS="," read MAJOR COURSE
do
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    echo $MAJOR_ID
    # if not found

    # insert major

    # get new major_id

    # get course_id

    # if not found

    # insert course

    # get new course_id

    # insert into majors_courses

done
#63. Run the script to see what happens.
./insert_data.sh
#64. So it went through each major from the CSV file and tried to find major_id for each one from the database. Looks like it only found the one you manually inserted earlier. The rest were empty. Below your first if not found comment, add an if condition that checks if the MAJOR_ID variable is empty. You can do that with this test: [[ -z $MAJOR_ID ]]. Place the next two comments in the statements area of the if.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
cat courses.csv | while IFS="," read MAJOR COURSE
do
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    echo $MAJOR_ID
    # if not found

    if [[ -z $MAJOR_ID ]]
    then
        # insert major

        # get new major_id

    fi

    # get course_id

    # if not found

    # insert course

    # get new course_id

    # insert into majors_courses

done
#65. The loop will go into this if whenever a major isn't found. Here, you will want to insert the major and then get the new id. You will need the ID for inserting data into the majors_courses table later. Below your insert major comment, create an INSERT_MAJOR_RESULT variable. Set it's value to a query that inserts the current major into the database. Don't forget to use single quotes around the value.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
cat courses.csv | while IFS="," read MAJOR COURSE
do
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    echo $MAJOR_ID
    # if not found

    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL INSERT INTO majors(major) VALUES($MAJOR))
        # get new major_id

    fi

    # get course_id

    # if not found

    # insert course

    # get new course_id

    # insert into majors_courses

done
#66. Below the variable you just created, use echo to print it.
    >`PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
    cat courses.csv | while IFS="," read MAJOR COURSE
    do
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
        echo $MAJOR_ID
        # if not found

        if [[ -z $MAJOR_ID ]]
        then
            # insert major
            INSERT_MAJOR_RESULT=$($PSQL INSERT INTO majors(major) VALUES($MAJOR))
            echo $INSERT_MAJOR_RESULT
            # get new major_id

        fi

        # get course_id

        # if not found

        # insert course

        # get new course_id

        # insert into majors_courses

    done`
#67. Instead of running through all the data in the CSV file, you should make some test data. In the terminal, use the copy (cp) command to copy the courses.csv into a new file named courses_test.csv.
cp courses.csv courses_test.csv
#69. Back in the insert_data.sh script, change your cat command to loop through the test file instead of the full one.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

cat courses_test.csv | while IFS="," read MAJOR COURSE
do
  # get major_id
  MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
  echo $MAJOR_ID

  # if not found
  if [[ -z $MAJOR_ID ]]
  then
    # insert major
    INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
    echo $INSERT_MAJOR_RESULT

    # get new major_id

  fi

  # get course_id

  # if not found

  # insert course

  # get new course_id

  # insert into majors_courses

done
#70. Run the script. It will go through the test data and insert a major into the database each time it doesn't find one already there and print the MAJOR_ID and INSERT_MAJOR_RESULT variables.
./insert_data.sh
#71. Looks like it found an ID that was already in the database twice and inserted three new items into the database. You don't need to print the ID anymore so delete the echo $MAJOR_ID line.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

cat courses_test.csv | while IFS="," read MAJOR COURSE
do
# get major_id
MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

# if not found
if [[ -z $MAJOR_ID ]]
then
    # insert major
    INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
    echo $INSERT_MAJOR_RESULT

    # get new major_id

fi

# get course_id

# if not found

# insert course

# get new course_id

# insert into majors_courses

done
#72. In the psql prompt, use SELECT to view all the data from the majors table to see what the script added.
SELECT * FROM majors;
#73. I forgot you inserted Database Administration earlier. The script ran and inserted major from the top line of the file. Then it added the other two that weren't already in there. You can use TRUNCATE to delete all data from a table. In the psql prompt, try to delete all the data in the majors table by entering TRUNCATE majors;
TRUNCATE majors;
#74. It says you "cannot truncate a table referenced in a foreign key constraint." The students and majors_courses tables use the major_id from majors as a foreign key. So if you want to delete the data from majors, you need to delete the data from those two tables at the same time. Use TRUNCATE to delete the data from those three tables. Separate the tables with commas.
TRUNCATE majors, students, majors_courses;
#75. View all the data in the majors table to make sure it's empty.
SELECT * FROM majors;
#76. Looks like it worked. View all the data in the majors_courses table to see if that one is empty.
SELECT * FROM majors_courses;
#77. It is, check the students table.
SELECT * FROM students;
#78. Last, check the courses table.
SELECT * FROM courses;
#79. There should still be one entry in there. Use TRUNCATE to delete all the data from the courses table. You will need to truncate any tables that use a column from it as a foreign key at the same time.
TRUNCATE courses, majors_courses;
#80. View all the data in the courses table again.
SELECT * FROM courses;
#81. Now the database is completely empty. Run the script again to see what gets inserted when the database is empty.
./insert_data.sh
#82. It inserted four that time. In the psql prompt, view all the data in the majors table.
SELECT * FROM majors;
#83. You won't want to add the first line from the CSV file to the database since those are just titles. In your script, add an if condition at the top of your loop that checks if $MAJOR != major. Put all the existing code and comments in your loop in it's statements area so it only does any of it if it's not the first line.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        echo $INSERT_MAJOR_RESULT

        # get new major_id

    fi

    # get course_id

    # if not found

    # insert course

    # get new course_id

    # insert into majors_courses
    fi
done
#84. In the psql prompt, use TRUNCATE to delete all the data in the majors table.
TRUNCATE majors, students, majors_courses;
#85. View all the data in majors table to make sure it's empty.
SELECT * FROM majors;
#86. Run the script to make sure it's not adding the first line anymore.
./insert_data.sh
#87. It only showed three inserts, that's a good sign. View all the data in majors table to make sure it's three you want.
SELECT * FROM majors;
#88. There's three unique majors in your test data. Those were the three added to the database, so it looks like it's working. Delete the line where you print INSERT_MAJOR_RESULT.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")

        # get new major_id

    fi

    # get course_id

    # if not found

    # insert course

    # get new course_id

    # insert into majors_courses
    fi
done
#89. You want a nicer message when something get's inserted so it's more informative. Below your INSERT_MAJOR_RESULT variable, add an if statement that checks if the variable is equal to INSERT 0 1, which was what it was printing. Use echo to print Inserted into majors, $MAJOR in the statements area of the if.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id

    fi

    # get course_id

    # if not found

    # insert course

    # get new course_id

    # insert into majors_courses
    fi
done
#90. In the psql prompt, truncate the majors table again so you can run the script and see the output.
TRUNCATE majors, students, majors_courses;
#91. Check to make sure the table is empty. Then, run the script.
SELECT * FROM majors;
./insert_data.sh
#92. It's starting to come together. Below your get new major_id comment, set the MAJOR_ID variable to a query that gets the new major_id from the database.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id

    # if not found

    # insert course

    # get new course_id

    # insert into majors_courses
    fi
done
#93. So the script will insert the majors correctly. Next are the courses. It will be the same steps as for the majors. Below your get course_id comment, add a COURSE_ID variable that gets the course_id from the database. Remember that your COURSE variable will have the current course in the loop.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    # insert course

    # get new course_id

    # insert into majors_courses
    fi
done
#94. It's the same as the majors, so below the second if not found comment, add an if statement that checks if the query was empty so you can insert the course if needed. Place the existing insert course and get new course_id comments in the statements area of the if.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        # get new course_id
    fi

    # insert into majors_courses
    fi
done
#95. Below the insert course comment, create an INSERT_COURSE_RESULT variable that inserts the course into the database.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        # get new course_id
    fi

    # insert into majors_courses
    fi
done
#96. The variable should be INSERT 0 1 again if something gets inserted. Below the variable you just created, add an if condition that checks if it is and print Inserted into courses, $COURSE using echo in it's statements area.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
    fi

    # insert into majors_courses
    fi
done
#97. In the psql prompt, truncate the data from the majors table so you can run the script again.
TRUNCATE majors, students, majors_courses;
#98. Run the script to see if the courses get inserted into the database.
./insert_data.sh
#99. It looks like it worked. The test data has three unique courses, and three got added to the database. View the data in the courses table to make sure they are correct.
SELECT * FROM courses;
#100. It looks like it worked. The test data has three unique courses, and three got added to the database. View the data in the courses table to make sure they are correct.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
    fi

    # insert into majors_courses
    fi
done
#101. Run the script to see if it works.
./insert_data.sh
#102. Awesome. That makes it easier. Below your get new course_id comment, set the COURSE_ID to the newly inserted course_id.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM coursesWHERE course='$COURSE'")
    fi

    # insert into majors_courses
    fi
done
#103. One more thing to add for this file. Below the insert into majors_courses courses comment, create a INSERT_MAJORS_COURSES_RESULT variable. Use it and the MAJOR_ID and COURSE_ID variables you created to insert a row into the majors_courses table. Make sure the query has the major_id column first. Also, you won't need any quotes around the values for the ID's.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM coursesWHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    fi
done
#104. Below the variable you just created, add an if condition that checks if it's equal to INSERT 0 1 like the others. In it's statements area, use echo to print Inserted into majors_courses, $MAJOR : $COURSE.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
#105. Run the script. Your tables should get truncated and then it should go through the loop and add all the data from the courses_test.csv into the three tables of the database.
./insert_data.sh
#106. Looks like it works. You better look around to make sure. View the data in the majors table.
SELECT * FROM majors;
#107. Cool, check the courses table.
SELECT * FROM courses;
#108. Lastly, view the data in the majors_courses table. There should be four rows.
SELECT * FROM majors_courses;
#109. Alright, that part of the script is done. Next, you need to add everything from the students.csv file. Make some test data again. In the terminal, use the copy command to copy students.csv into a file named students_test.csv.
cp students.csv students_test.csv
#111. You want to loop through all this info like you did for the other CSV file. The process is the same. Below your existing loop, use cat to print your new test file. Pipe the results into a while loop, setting the IFS to a comma again, and then use read to create FIRST, LAST, MAJOR and GPA variables from the data. In the loop, use echo to print the FIRST variable.
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
do
    echo $FIRST
done
#112. Run the script to see if it prints the FIRST (first_name) variable correctly. It will take a second since it has to go through the first loop.
./insert_data.sh
#113. It works 😅 It printed the first item in each row of the CSV file. It's printing the first line again, you will have to take care of that. First, delete the echo line.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
do
done
#114. Add an if condition to the loop that checks if the FIRST variable is not equal to first_name so it doesn't do anything for the first line of the file. Don't put anything in the statements area for now.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
do
if [[ $FIRST != first_name ]]
then
fi
done    
#115. All the columns in the CSV file can be inserted directly into the database except for the major. You will need to get the major_id again for that. There's some null values in there as well, so you will need to use null if the major_id isn't found. Add four single line comments in your loop; get major_id, if not found, set to null, and insert student in that order.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
do
if [[ $FIRST != first_name ]]
then
    # get major_id

    # if not found

    # set to null

    # insert student

fi
done
#116. Below the new get major_id comment, set the MAJOR_ID variable to a query that gets the major_id for the current students major.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
do
if [[ $FIRST != first_name ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

    # if not found

    # set to null

    # insert student

fi
done    
#117. Below that, use echo to print the variable so you can see if it's working.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
do
if [[ $FIRST != first_name ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    echo $MAJOR_ID
    # if not found

    # set to null

    # insert student

fi
done
#118. Run the script to see what happens.
./insert_data.sh
#119. Looking at the test data, it found the ID for all of it except the null value. Below the newest if not found comment, add an if that checks if the variable is empty. Put the set to null comment in its statements area.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
do
if [[ $FIRST != first_name ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    echo $MAJOR_ID
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # set to null
    fi
    # set to null

    # insert student

fi
done
#120. When you go to insert the student data, you want to use the MAJOR_ID if it's found, or null if not. Below the set to null comment, set the MAJOR_ID variable to null so you can use it to insert the data.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
do
if [[ $FIRST != first_name ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    echo $MAJOR_ID
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # set to null
        MAJOR_ID=null
    fi
    # set to null

    # insert student

fi
done
#121. Move the echo $MAJOR_ID line to below the if statement so you can run the script and see the value of the variable if the major_id is or isn't found.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
do
if [[ $FIRST != first_name ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # set to null
        MAJOR_ID=null
        echo $MAJOR_ID
    fi
    # set to null

    # insert student

fi
done
#122. Run the script to see what happens.
./insert_data.sh
#123. Okay, that should work for inserting the student. Delete the echo $MAJOR_ID line.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
    do
    if [[ $FIRST != first_name ]]
    then
        # get major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
        
        # if not found
        if [[ -z $MAJOR_ID ]]
        then
            # set to null
            MAJOR_ID=null
        fi
        # set to null

        # insert student

    fi
    done
#124. One last thing to add. In the psql prompt, view the details of the students table so you can see what columns to add.
\d students
#125. You will need to set the four columns when adding the student info. All of them except student_id. Below the insert student comment, create an INSERT_STUDENT_RESULT variable that adds the student to the database. Add the columns in the order they appear in the data, and make sure to only put the two VARCHAR columns in single quotes.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
    do
    if [[ $FIRST != first_name ]]
    then
        # get major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
        
        # if not found
        if [[ -z $MAJOR_ID ]]
        then
            # set to null
            MAJOR_ID=null
        fi

        # insert student
        INSERT_STUDENT_RESULT=$($PSQL "INSERT INTO students(first_name, last_name, major_id, gpa) VALUES('$FIRST', '$LAST', $MAJOR_ID, $GPA)")
    fi
    done
#126. Below the variable you just created, add an if statement that checks if it's equal to INSERT 0 1 like the others. If it is, use echo to print Inserted into students, <first_name> <last_name>.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses_test.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
    do
    if [[ $FIRST != first_name ]]
    then
        # get major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
        
        # if not found
        if [[ -z $MAJOR_ID ]]
        then
            # set to null
            MAJOR_ID=null
        fi

        # insert student
        INSERT_STUDENT_RESULT=$($PSQL "INSERT INTO students(first_name, last_name, major_id, gpa) VALUES('$FIRST', '$LAST', $MAJOR_ID, $GPA)")
        if [[ $INSERT_STUDENT_RESULT == "INSERT 0 1" ]]
        then
            echo "Inserted into students, $FIRST : $LAST"
        fi
fi
done
#127. Run the script to see if the students are getting added.
./insert_data.sh
#128. I think it's working. View all the data in the students table to make sure it matches the CSV file.
SELECT * FROM students;
#129. Excellent. It added all the students from the test data. Time to try it with the original files. Change the cat courses_test.csv line to use the original file again.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students_test.csv | while IFS="," read FIRST LAST MAJOR GPA
    do
    if [[ $FIRST != first_name ]]
    then
        # get major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
        
        # if not found
        if [[ -z $MAJOR_ID ]]
        then
            # set to null
            MAJOR_ID=null
        fi

        # insert student
        INSERT_STUDENT_RESULT=$($PSQL "INSERT INTO students(first_name, last_name, major_id, gpa) VALUES('$FIRST', '$LAST', $MAJOR_ID, $GPA)")
        if [[ $INSERT_STUDENT_RESULT == "INSERT 0 1" ]]
        then
            echo "Inserted into students, $FIRST : $LAST"
        fi
fi
done
#130. Next, change the cat students_test.csv line to use the original file as well.
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")
cat courses.csv | while IFS="," read MAJOR COURSE
do
if [[ $MAJOR != major ]]
then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    # if not found
    if [[ -z $MAJOR_ID ]]
    then
        # insert major
        INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
        if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors, $MAJOR
        fi
        # get new major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found

    if [[ -z $COURSE_ID ]]
    then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
    INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
        then
            echo Inserted into majors_courses, $MAJOR : $COURSE
    fi
fi
done
cat students.csv | while IFS="," read FIRST LAST MAJOR GPA
    do
    if [[ $FIRST != first_name ]]
    then
        # get major_id
        MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
        
        # if not found
        if [[ -z $MAJOR_ID ]]
        then
            # set to null
            MAJOR_ID=null
        fi

        # insert student
        INSERT_STUDENT_RESULT=$($PSQL "INSERT INTO students(first_name, last_name, major_id, gpa) VALUES('$FIRST', '$LAST', $MAJOR_ID, $GPA)")
        if [[ $INSERT_STUDENT_RESULT == "INSERT 0 1" ]]
        then
            echo "Inserted into students, $FIRST : $LAST"
        fi
fi
done  