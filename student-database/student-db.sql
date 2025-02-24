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