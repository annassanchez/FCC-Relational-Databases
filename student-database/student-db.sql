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