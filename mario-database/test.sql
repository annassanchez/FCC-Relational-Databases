-- 004 CREATE first database with CREATE DATABASE
CREATE DATABASE first_database;
-- 005 list all databases with \l
\l
-- 006 create a new database with CREATE DATABASE
CREATE DATABASE second_database;
-- 007 use \l again to list all databases
\l
-- 008 use \c to connect to the second_database
\c second_database;
-- 009 use \d to display the table in the second_database
\d
-- 010 create new tables with the CREATE TABLE clause
CREATE TABLE first_table();
-- 011 use \d to display all tables
\d
-- 012 create new table with the CREATE TABLE clause
CREATE TABLE second_table();
-- 013 use display \d to list the two newly created tables
\d
-- 014 you can use \d also on a given table adding the table name after \d table_name to see more details on a given table
\d second_table;
-- 015 use ALTER TABLE to add new columns to a table with this syntax: ALTER TABLE table_name ADD COLUMN column_name DATATYPE;
ALTER TABLE second_table ADD COLUMN first_column INT;
-- 016 use \d to display the changes on the second_table
\d second_table
-- 017 use ALTER TABLE to add new columns to second_table
ALTER TABLE second_table ADD COLUMN id INT;
-- 018 display the changes on the second_table with \d
\d second_table
-- 019 ALTER TABLE to add new columns to second_table
ALTER TABLE second_table ADD COLUMN age INT;
-- 020 display the changes on second_table with \d
\d second_table
-- 021 use ALTER TABLE to drop columns
ALTER TABLE second_table DROP COLUMN age;
-- 022 use \d to display the changes on second_table
\d second_table
-- 023 use ALTER TABLE to drop columns on second_table
ALTER TABLE second_table DROP COLUMN first_column;
-- 024 use ALTER TABLE to add columns to second_table
ALTER TABLE second_table ADD COLUMN name VARCHAR(30);
-- 025 display the changes on second_table with \d
\d second_table;
-- 026 use ALTER TABLE to rename column name to username
ALTER TABLE second_table RENAME name TO username;
-- 027 use \d to display the changes on the new table
\d second_table
-- 028 use INSERT INTO table_name(column1, column2) VALUES (value1, value2) to add values to second_table
INSERT INTO second_table(id, username) VALUES(1,'Samus');
-- 029 use SELECT columns FROM table_name to preview the changes on the table
SELECT * FROM second_table;
-- 030 use INSERT INTO to add values to second_table
INSERT INTO second_table(id, username) VALUES(2,'Mario');
-- 031 use SELECT to display the table second_table
SELECT * FROM second_table;
-- 032 use INSERT INTO to add more values to second_table
INSERT INTO second_table(id, username) VALUES(3,'Luigi');
