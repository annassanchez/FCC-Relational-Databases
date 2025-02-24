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