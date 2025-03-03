--1. create database
CREATE DATABASE worldcup;
--4. create table teams
CREATE TABLE teams();
--5. create table games
CREATE TABLE games();
--6. add columns to teams table
ALTER TABLE teams ADD COLUMN team_id SERIAL PRIMARY KEY NOT NULL;
ALTER TABLE teams ADD COLUMN name TEXT NOT NULL UNIQUE;
--7. add columns to games table
ALTER TABLE games ADD COLUMN game_id SERIAL PRIMARY KEY NOT NULL;
ALTER TABLE games ADD COLUMN year int NOT NULL;
ALTER TABLE games ADD COLUMN round VARCHAR NOT NULL;
--8. add columns and foreign keys to games table
ALTER TABLE games ADD COLUMN winner_id int NOT NULL;
ALTER TABLE games ADD COLUMN opponent_id int NOT NULL;
ALTER TABLE games ADD FOREIGN KEY(winner_id) REFERENCES teams(team_id);
ALTER TABLE games ADD FOREIGN KEY(opponent_id) REFERENCES teams(team_id);
--9. added columns to games table
ALTER TABLE games ADD COLUMN winner_goals int NOT NULL;
ALTER TABLE games ADD COLUMN opponent_goals int NOT NULL;

