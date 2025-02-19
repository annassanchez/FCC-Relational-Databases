-- 002 log in
--psql --username=freecodecamp --dbname=postgres
-- 03 list databases
\l
-- psql -d postgres
-- \i test.sql
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
--ALTER TABLE second_table DROP COLUMN name;
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
-- 060 use select to display changes
SELECT * FROM characters;
-- 061 use INSERT INTO to add rows to the characters table
INSERT INTO characters(name, homeland, favorite_color) VALUES('Luigi', 'Mushroom Kingdom', 'Green');
-- 062 use SELECT to display the new rows added 
SELECT * FROM characters;
-- 063 use INSERT INTO to add a row to the characters table
INSERT INTO characters(name, homeland, favorite_color) VALUES('Peach', 'Mushroom Kingdom', 'Pink');
-- 064 use INSERT INTO to add multiple rows to the characters table 
INSERT INTO characters(name, homeland, favorite_color)
VALUES('Toadstool', 'Mushroom Kingdom', 'Red'),
('Bowser', 'Mushroom Kingdom', 'Green');
-- 065 use INSERT INTO to add multiple rows to the characters table
INSERT INTO characters(name, homeland, favorite_color)
VALUES('Daisy', 'Sarasaland', 'Yellow'),
('Yoshi', 'Dinosaur Land', 'Green');
-- 066 use SELECT to display the characters table
SELECT * FROM characters;
-- 067 use UPDATE to change a value given a condition
UPDATE characters SET favorite_color='Orange' WHERE name='Daisy';
-- 068 use SELECT to display the update
SELECT * FROM characters;
-- 069 use UPDATE to change the value to update name='Toad' where favorite_color='Red'
UPDATE characters SET name='Toad' WHERE favorite_color='Red';
-- 070 use SELECT to display the values on the table changed
SELECT * FROM characters;
-- 071 use UPDATE to set name='Mario' to the condition character_id=2
UPDATE characters SET name='Mario' WHERE character_id=2;
-- 072 use SELECT to display the changes on the characters table
SELECT * FROM characters;
-- 073 use UPDATE to set favorite_color='Blue' where character_id=5
UPDATE characters SET favorite_color='Blue' WHERE character_id=5;
-- 074 use UPDATE to set favorite_color='Yellow' where character_id=6
UPDATE characters SET favorite_color='Yellow' WHERE character_id=6;
-- 075 use UPDATE to set homeland='Koopa Kingdom' where character_id=6
UPDATE characters SET homeland='Koopa Kingdom' WHERE character_id=6;
-- 076 select all columns from the characters table
SELECT * FROM characters;
-- 077 SELECT ORDER BY to display the table ordered by character_id
SELECT * FROM characters ORDER BY character_id;
-- 078 ALTER TABLE add promary key to key
ALTER TABLE characters ADD PRIMARY KEY(name);
-- 079 check the character table details with \d
\d characters 
-- 080 display the character table to see the primary key
ALTER TABLE characters DROP CONSTRAINT characters_pkey;
-- 081 view the details on the characters table to see if its gone
\d characters
-- 082 ALTER TABLE ADD PRIMARY KEY
ALTER TABLE characters ADD PRIMARY KEY(character_id);
-- 083 display the details from the characters table
\d characters;
-- 084 use CREATE TABLE to create the more_info table
CREATE TABLE more_info();
-- 085 display the details on the mario database 
\d 
-- 086 display the details on the characters table
\d characters
-- 087 add new column to more_info with ALTER TABLE ADD COLUMN
ALTER TABLE more_info ADD COLUMN more_info_id SERIAL;
-- 088 add new primary key to a column with ALTER TABLE ADD PRIMARY KEY
ALTER TABLE more_info ADD PRIMARY KEY(more_info_id);
-- 089 display details from the table
\d
-- 090 add new column birthday to more_info with ALTER TABLE ADD COLUMN 
ALTER TABLE more_info ADD COLUMN birthday DATE;
-- 091 add height column to more_info that's type INT
ALTER TABLE more_info ADD COLUMN height INT;
-- 092 add column weight to more_info thats type NUMERIC
ALTER TABLE more_info ADD COLUMN weight NUMERIC(4,1);
-- 093 display details from more_info
\d more_info;
-- 094 add column character_id and turn it into a foreign key that references the character_id column from characters
ALTER TABLE more_info ADD COLUMN character_id INT REFERENCES characters(character_id);
-- 095 display details from more_info
\d more_info;
-- 096 add another constraint to the character_id column
ALTER TABLE more_info ADD UNIQUE(character_id);
-- 097 use alter column to add the condition NOT NULL to character_id
ALTER TABLE more_info ALTER COLUMN character_id SET NOT NULL;
-- 098 display the details from the more_info layer
\d more_info;
-- 099 select the column character_id from the characters table to see the ids youll need for your foreign key column
SELECT character_id FROM characters;
-- 100 select columns character_id, name from the characters table
SELECT character_id, name FROM characters;
-- 101 insert values into more_info table 
INSERT INTO more_info(character_id, birthday, height, weight) VALUES(1, '1981-07-09', 155, 64.5);
-- 102 select values from more_info
SELECT * FROM more_info;
-- 103 select values from chracters to see what is the new character_id to add
SELECT character_id, name from characters;
-- 104 insert another row into more_info
INSERT INTO more_info(character_id, birthday, height, weight) VALUES(2, '1983-07-14', 175, 48.8);
-- 105 select all values from more_info to see the newly added row
SELECT * FROM more_info;
-- 106 check character_id, name from the characters table to see what to add to the more_info layer
SELECT character_id, name FROM characters;
-- 107 insert another row into more_info
INSERT INTO more_info(character_id, birthday, height, weight) VALUES(3, '1985-10-18', 173, 52.2);
-- 108 select character_id, name from characters following a condition
SELECT character_id, name FROM characters WHERE name='Toad';
-- 109 insert another row to the more_info table
INSERT INTO more_info(character_id, birthday, height, weight) VALUES(4, '1950-01-10', 66, 35.6);
-- 110 select all more_info layer to see the values added 
SELECT * FROM more_info;
-- 111 select character_id, name from characters to see the values for the given condition
SELECT character_id, name FROM characters WHERE name='Bowser';
-- 112 insert another row into the more_info table
INSERT INTO more_info(character_id, birthday, height, weight) VALUES(5, '1990-10-29', 258, 300);
-- 113 select values from characters following the given condition
SELECT character_id, name FROM characters WHERE name='Daisy';
-- 114 insert characters into more_info
INSERT INTO more_info(character_id, birthday, height, weight) VALUES(6, '1989-07-31', NULL, NULL);
-- 115 select all values from the more_info table to see the newly added values
SELECT * FROM more_info;
-- 116 select values from characters table that follow the condition
SELECT character_id, name FROM characters WHERE name='Yoshi';
-- 117 insert more data into the more_info table
INSERT INTO more_info(character_id, birthday, height, weight) VALUES(7, '1990-04-13', 162, 59.1);
-- 118 select all columns from more_info to see the values
SELECT * FROM more_info;
-- 119 alter table rename columns to match the unit values in the column: height -> height_in_cm
ALTER TABLE more_info RENAME COLUMN height TO height_in_cm;
-- 120 alter table rename columns from weith to wight_in_kg
ALTER TABLE more_info RENAME COLUMN weight TO weight_in_kg;
-- 121 select the values from more_info to see the results
SELECT * FROM more_info;
-- 122 create new table sounds
CREATE TABLE sounds(sound_id SERIAL PRIMARY KEY);
-- 123 display the tables in mario_database to make sure it worked
\d 
-- 124 add column to sounds table filename and force it to be unique and not null
ALTER TABLE sounds ADD COLUMN filename VARCHAR(40) NOT NULL UNIQUE;
-- 125 add column character_id with a foreign key constraint
ALTER TABLE sounds ADD COLUMN character_id INT NOT NULL REFERENCES characters(character_id);
-- 126 display the details from the sounds table
\d sounds;
-- 127 select all columns from characters table and order by the character_id column
SELECT * FROM characters ORDER BY character_id;
-- 128 insert value into the sounds table for character_id=1
INSERT INTO sounds(filename, character_id) VALUES('its-a-me.wav', 1);
-- 129 insert values into the sounds table for character_id=1
INSERT INTO sounds(filename, character_id) VALUES('yippee.wav', 1);
-- 130 insert values into the sounds table for character_id=2
INSERT INTO sounds(filename, character_id) VALUES('ha-ha.wav', 2);
-- 131 insert values into the sounds table for character_id=2
INSERT INTO sounds(character_id, filename) VALUES(2, 'oh-yeah.wav');
-- 132 insert values into sounds table for character_id=3
INSERT INTO sounds(character_id, filename) VALUES(3, 'yay.wav'), (3, 'woo-hoo.wav');
-- 133 insert values into sounds table for character_id=3
INSERT INTO sounds(character_id, filename) VALUES(3, 'mm-hmm.wav'), (1, 'yahoo.wav');
-- 134 view all data from the sounds table
SELECT * FROM sounds;
-- 135 create new table actions qith action_id as a primary key
CREATE TABLE actions(action_id SERIAL PRIMARY KEY);
-- 136 add column to actions table 
ALTER TABLE actions ADD COLUMN action VARCHAR(20) NOT NULL UNIQUE;
-- 137 add action into actions table 
INSERT INTO actions(action) VALUES('run');
-- 138 insert into actions table add new value
INSERT INTO actions(action) VALUES('jump');
-- 139 insert into actions table add new value
INSERT INTO actions(action) VALUES('duck');
-- 140 view values from the actions table
SELECT * FROM actions;
-- 141 create new table character_actions
CREATE TABLE character_actions();
-- 142 alter table added column character_id
ALTER TABLE character_actions ADD COLUMN character_id INT NOT NULL;
-- 143 alter table add foreign key into character_id column
ALTER TABLE character_actions ADD FOREIGN KEY(character_id) REFERENCES characters(character_id);
-- 144 view character_actions table detail
\d
-- 145 alter table character_actios add column action_id
ALTER TABLE character_actions ADD COLUMN action_id INT NOT NULL;
-- 146 add foreign key to the action_id column
ALTER TABLE character_actions ADD FOREIGN KEY(action_id) REFERENCES actions(action_id);
-- 147 view detains from the character_actions table
\d character_actions
-- 148 alter table character_actions add multiple primary keys
ALTER TABLE character_actions ADD PRIMARY KEY(character_id, action_id);
-- 149 view details from the character_actions table
\d character_actions;
-- 150 insert values into the character_actions table for character_id = 7
INSERT INTO character_actions(character_id, action_id) VALUES(7, 1), (7, 2), (7, 3); 
-- 151 select all values from character_actions 
SELECT * FROM character_actions;
-- 152 insert multiple values into the character_actions table for character_id = 6
INSERT INTO character_actions(character_id, action_id) VALUES(6, 1), (6, 2), (6, 3);
-- 153 insert multiple values into the character_actions table for character_id = 5
INSERT INTO character_actions(character_id, action_id) VALUES(5, 1), (5, 2), (5, 3);
-- 154 insert multiple values into the character_actions table for character_id = 4
INSERT INTO character_actions(character_id, action_id) VALUES(4, 1), (4, 2), (4, 3);
-- 155 insert multiple values into the character_actions table for character_id = 3
INSERT INTO character_actions(character_id, action_id) VALUES(3, 1), (3, 2), (3, 3);
-- 156 insert multiple values into the character_actions table for character_id = 2
INSERT INTO character_actions(character_id, action_id) VALUES(2, 1), (2, 2), (2, 3);
-- 157 insert multiple values into the character_actions table for character_id = 1
INSERT INTO character_actions(character_id, action_id) VALUES(1, 1), (1, 2), (1, 3);
-- 158 select all values from the character_actions data
SELECT * FROM character_actions;
-- 159 view details from the database
\d
-- 160 select values from the characters table
SELECT * FROM characters;
-- 161 select values from more_info table
SELECT * FROM more_info;
-- 162 join chatacters table with more_info table via character_id
SELECT * FROM characters 
FULL JOIN more_info 
on characters.character_id = more_info.character_id;
-- 163 join characters table with sounds table on character_id
SELECT * FROM characters 
FULL JOIN sounds 
ON characters.character_id = sounds.character_id; 
-- 164 join characters table with character actions via character_id and actions to chatacter_actions to actions via action_id
SELECT * FROM characters 
FULL JOIN character_actions 
ON characters.character_id = character_actions.character_id 
FULL JOIN actions 
ON actions.action_id = character_actions.action_id;
