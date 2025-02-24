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