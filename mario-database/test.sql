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
-- 033 use SELECT to display the new values added to the table
SELECT * FROM second_table;
-- 034 use DELETE FROM table_name WHERE condition; to delete rows from a table given a condition
DELETE FROM second_table WHERE username='Luigi';
-- 035 use SELECT to display the table
select * FROM second_table;
-- 036 use DELETE FROM to delete the row by a given condition
DELETE FROM second_table WHERE username='Mario';
-- 037 use DELETE FROM to delete a row by a given condition
DELETE FROM second_table WHERE username='Samus';
-- 038 SELECT columns from table to diplay if the rows have been deleted
SELECT * FROM second_table;
-- 039 use \d to display the details from second_table and see if the columns where deleted
\d second_table
-- 040 use ALTER TABLE to drop columns
ALTER TABLE second_table DROP COLUMN username;
ALTER TABLE second_table DROP COLUMN name;
-- 041 use ALTER TABLE to drop the id column
ALTER TABLE second_table DROP COLUMN id;
-- 042 display this database to see the changes
\d
-- 043 use DROP TABLE table_name to drop second_table from your database
DROP TABLE second_table;
-- 044 use DROP TABLE to drop first_table
DROP TABLE first_table;
-- 045 use \l to list all databases
\l
-- 046 use ALTER DATABASE database_name RENAME TO new_database_name to rename the database to mario_database
ALTER DATABASE first_database RENAME TO mario_database;
-- 047 use \l to list all databases
\l
-- 048 connect to the newly created database
\c mario_database
-- 049 use DROP DATABASE to remove second_database
DROP DATABASE second_database;
-- 050 list all elements on the databases to make sure is done
\l
-- 051 display the changes to make sure
\d
-- 052 create new table with CREATE TABLE
CREATE TABLE characters();
-- 053 use ALTER TABLE to add column to the characters table
ALTER TABLE characters ADD COLUMN character_id SERIAL;
-- 054 use \d to display the newly created columns to characters table
\d characters
-- 055 use ALTER TABLE to add new columns to characters table
ALTER TABLE characters ADD COLUMN name VARCHAR(30) NOT NULL;
-- 056 use ALTER TABLE to add new columns to characters table
ALTER TABLE characters ADD COLUMN homeland VARCHAR(60);
-- 057 use ALTER TABLE to add new columns to characters table
ALTER TABLE characters ADD COLUMN favorite_color VARCHAR(30);
-- 058 use \d to display the details from the charactes table
\d characters
-- 059 use INSERT INTO to add new values to characters table
INSERT INTO characters(name, homeland, favorite_color) VALUES('Mario', 'Mushroom Kingdom', 'Red');