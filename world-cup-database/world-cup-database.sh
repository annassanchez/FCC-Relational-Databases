#1. connect to sql
psql --username=freecodecamp --dbname=postgres
#2. create database
CREATE DATABASE worldcup;
#3. connect to database
\c worldcup;
#4. create table teams
CREATE TABLE teams();
#5. create table games
CREATE TABLE games();
#6. add columns to teams table
ALTER TABLE teams ADD COLUMN team_id SERIAL PRIMARY KEY NOT NULL;
ALTER TABLE teams ADD COLUMN name TEXT NOT NULL UNIQUE;
#7. add columns to games table
ALTER TABLE games ADD COLUMN game_id SERIAL PRIMARY KEY NOT NULL;
ALTER TABLE games ADD COLUMN year int NOT NULL;
ALTER TABLE games ADD COLUMN round VARCHAR NOT NULL;
#8. add columns and foreign keys to games table
ALTER TABLE games ADD COLUMN winner_id int NOT NULL;
ALTER TABLE games ADD COLUMN opponent_id int NOT NULL;
ALTER TABLE games ADD FOREIGN KEY(winner_id) REFERENCES teams(team_id);
ALTER TABLE games ADD FOREIGN KEY(opponent_id) REFERENCES teams(team_id);
#9. added columns to games table
ALTER TABLE games ADD COLUMN winner_goals int NOT NULL;
ALTER TABLE games ADD COLUMN opponent_goals int NOT NULL;
#10. insert data into teams table, games
#!/bin/bash

# Set database connection based on argument
if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Truncate tables before inserting new data
echo $($PSQL "TRUNCATE games, teams RESTART IDENTITY")

# Read CSV file and insert data
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # Skip header line
  if [[ $YEAR != "year" ]]
  then
    # Get team_id for WINNER
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    # If WINNER not found, insert into teams
    if [[ -z $WINNER_ID ]]
    then
      INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_RESULT == "INSERT 0 1" ]]
      then
        echo "Inserted into teams: $WINNER"
      fi
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi

    # Get team_id for OPPONENT
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # If OPPONENT not found, insert into teams
    if [[ -z $OPPONENT_ID ]]
    then
      INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_RESULT == "INSERT 0 1" ]]
      then
        echo "Inserted into teams: $OPPONENT"
      fi
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi

    # Insert game data
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) 
                                VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
    then
      echo "Inserted into games: $YEAR, $ROUND, $WINNER vs $OPPONENT ($WINNER_GOALS-$OPPONENT_GOALS)"
    fi
  fi
done