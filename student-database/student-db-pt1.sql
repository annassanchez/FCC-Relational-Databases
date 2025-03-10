--4. All the info from the CSV files will go into a single database. Create a new database named students.
CREATE DATABASE students;
--7. The CSV files have a bunch of students with info about them, and some courses and majors. You will have four tables. One for the students and their info, one for each major, another for each course, and a final one for showing what courses are included in each major. First, create the students table.
CREATE TABLE students();
--8. The second table will be for each unique major that appears in the data. Create a table named majors.
CREATE TABLE majors();
--9. The third table is for each unique course in the data. Create another table named courses.
CREATE TABLE courses();
--#10. The final table will be a junction table for the majors and courses. Create it with the name majors_courses.
CREATE TABLE majors_courses();
--#12. Onto the columns. The students.csv file has four fields, you will make a column for each of those as well as an ID column. Add a column to your students table named student_id. Give it a type of SERIAL so it automatically increments and make it a PRIMARY KEY
ALTER TABLE students ADD COLUMN student_id SERIAL PRIMARY KEY;
--#13. The first column in students.csv is first_name. Add a column to the students table with that name. Make it a type of VARCHAR(50) and give it the NOT NULL constraint.
ALTER TABLE students ADD COLUMN first_name VARCHAR(50) NOT NULL;
--#14. The next column in the data is last_name. Add it to the students table. Give it the same data type and max-length as first_name and make sure it has the NOT NULL constraint.
ALTER TABLE students ADD COLUMN last_name VARCHAR(50) NOT NULL;
--#15. The next column is for the major. Since you will have each major in another table this column will be a foreign key that references it. Create a column in the students table named major_id, give it a data type of INT for now. You will come back and set the foreign key later.
ALTER TABLE students ADD COLUMN major_id int;
--#16. Create the last column, gpa. The data in the CSV shows that they are decimals with a length of 2 and 1 number is to the right of the decimal. So give it a data type of NUMERIC(2,1).
ALTER TABLE students ADD COLUMN gpa numeric(2,1);
--#18. The foreign key is still missing. Let's fill in the majors table next. Add a major_id column to it. Make it a type of SERIAL and the PRIMARY KEY for this table.
ALTER TABLE majors ADD COLUMN major_id SERIAL PRIMARY KEY;
--#19. This table will only have one other column for the name of the major. Add a column to it named major. Make it a VARCHAR with a max-length of 50 and give it the NOT NULL constraint.
ALTER TABLE majors ADD COLUMN major VARCHAR(50) NOT NULL;
--#21. This table looks good. Now, set the major_id column from the students table as a foreign key that references the major_id column from the majors table. Here's an example of how to do that: ALTER TABLE <table_name> ADD FOREIGN KEY(<column_name>) REFERENCES <referenced_table_name>(<referenced_column_name>);
ALTER TABLE students ADD FOREIGN KEY(major_id) REFERENCES majors(major_id);
--#22. View the details of the students table again to make sure the key is there.
\d students
--#23. Next, is the courses table. Add a course_id column to it. Give it a type of SERIAL and make it the primary key.
ALTER TABLE courses ADD COLUMN course_id SERIAL PRIMARY KEY;
--#24. Add a course column to the courses table that's a type of VARCHAR. The course names are a little longer, so give them a max-length of 100. Also, make sure it can't accept null values.
ALTER TABLE courses ADD COLUMN course VARCHAR(100) NOT NULL;
--#26. One more table to go. The majors_courses junction table will have two columns, each referencing the primary key from two related table. First, add a major_id column to it. Just give it a type of INT for now.
ALTER TABLE majors_courses ADD COLUMN major_id INT;
--#27. Set the major_id column you just created as a foreign key that references the major_id column from the majors table.
ALTER TABLE majors_courses ADD FOREIGN KEY(major_id) REFERENCES majors(major_id);
--#28. Next, add a course_id column to the same table. Just give it a type of INT again for now.
ALTER TABLE majors_courses ADD COLUMN course_id INT;
--#29. Set your new course_id column as a foreign key that references the other course_id column.
ALTER TABLE majors_courses ADD FOREIGN KEY(course_id) REFERENCES courses(course_id);
--#31. There's one thing missing. This table doesn't have a primary key. The data from courses.csv will go in this table. A single major will be in it multiple times, and same with a course. So neither of them can be a primary key. But there will never be a row with the same two values as another row. So the two columns together, are unique. You can create a composite primary key that uses more than one column as a unique pair like this: ALTER TABLE <table_name> ADD PRIMARY KEY(<column_name>, <column_name>); Add a composite primary key to the table using the two columns.
ALTER TABLE majors_courses ADD PRIMARY KEY(major_id, course_id);
--#35. It only needs the name of a major. The ID will be added automatically. Add the first major from the courses.csv file into the majors table. It's a VARCHAR, so make sure to put the value in single quotes.
INSERT INTO majors(major) VALUES('Database Administration');
--#36. Use SELECT to view all the data in the majors table to make sure it got inserted correctly.
SELECT * FROM majors;
--#37. Next, insert the first course from courses.csv into the courses table.
INSERT INTO courses(course) VALUES('Data Structures and Algorithms');
--#38. View all the data in the courses table to make sure it got added.
SELECT * FROM courses;
--#40. It wants a major_id and course_id. Add a row to majors_courses for the first entry in courses.csv.
INSERT INTO majors_courses(major_id, course_id) VALUES(1, 1);
--#41. View all the data in the table you just added to.
SELECT * FROM majors_courses;
--#43. The output shows what the table needs. Insert the first person from students.csv into the students table.
INSERT INTO students(first_name,last_name,major_id,gpa) VALUES('Rhea','Kellems',1,2.5);
--#44. Looks like it worked. View all the data in the students table to make sure.
SELECT * FROM students;
--#72. In the psql prompt, use SELECT to view all the data from the majors table to see what the script added.
SELECT * FROM majors;
--73. I forgot you inserted Database Administration earlier. The script ran and inserted major from the top line of the file. Then it added the other two that weren't already in there. You can use TRUNCATE to delete all data from a table. In the psql prompt, try to delete all the data in the majors table by entering TRUNCATE majors;
TRUNCATE majors;
--74. It says you "cannot truncate a table referenced in a foreign key constraint." The students and majors_courses tables use the major_id from majors as a foreign key. So if you want to delete the data from majors, you need to delete the data from those two tables at the same time. Use TRUNCATE to delete the data from those three tables. Separate the tables with commas.
TRUNCATE majors, students, majors_courses;
--#75. View all the data in the majors table to make sure it's empty.
SELECT * FROM majors;
--#76. Looks like it worked. View all the data in the majors_courses table to see if that one is empty.
SELECT * FROM majors_courses;
--#77. It is, check the students table.
SELECT * FROM students;
--#78. Last, check the courses table.
SELECT * FROM courses;
--#79. There should still be one entry in there. Use TRUNCATE to delete all the data from the courses table. You will need to truncate any tables that use a column from it as a foreign key at the same time.
TRUNCATE courses, majors_courses;
--#80. View all the data in the courses table again.
SELECT * FROM courses;
--#82. It inserted four that time. In the psql prompt, view all the data in the majors table.
SELECT * FROM majors;
--#84. In the psql prompt, use TRUNCATE to delete all the data in the majors table.
TRUNCATE majors, students, majors_courses;
--#85. View all the data in majors table to make sure it's empty.
SELECT * FROM majors;
--#87. It only showed three inserts, that's a good sign. View all the data in majors table to make sure it's three you want.
SELECT * FROM majors;
--#90. In the psql prompt, truncate the majors table again so you can run the script and see the output.
TRUNCATE majors, students, majors_courses;
--#91. Check to make sure the table is empty. Then, run the script.
SELECT * FROM majors;
--#97. In the psql prompt, truncate the data from the majors table so you can run the script again.
TRUNCATE majors, students, majors_courses;
--#99. It looks like it worked. The test data has three unique courses, and three got added to the database. View the data in the courses table to make sure they are correct.
SELECT * FROM courses;
--#106. Looks like it works. You better look around to make sure. View the data in the majors table.
SELECT * FROM majors;
--#107. Cool, check the courses table.
SELECT * FROM courses;
--#108. Lastly, view the data in the majors_courses table. There should be four rows.
SELECT * FROM majors_courses;
--#128. I think it's working. View all the data in the students table to make sure it matches the CSV file.
SELECT * FROM students;
--#132. That was cool. View all the data in the students table to see what you ended up with.
SELECT * FROM students;
--#133. 31 rows. That's how many are in the CSV file. Perfect. Next, check the majors table.
SELECT * FROM majors;
--#134. 7 rows. There must be 7 unique majors in the CSV file. View what's in the courses table.
SELECT * FROM courses;
--#135. Looks like there's 17 unique courses in the CSV file. Last, view the data in majors_courses. This should have the same number of rows at the CSV file.
SELECT * FROM majors_courses;