DROP DATABASE soccer_db;

CREATE DATABASE soccer_db;

\c soccer_db;

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name TEXT  NOT NULL ,
    country TEXT NOT NULL
    standing TEXT NOT NULL
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    first_name TEXT  NOT NULL ,
    last_name TEXT NOT NULL
    team_id INTEGER NOT NULL
);

 CREATE TABLE referees(
    id SERIAL PRIMARY KEY,
    first_name TEXT  NOT NULL ,
    last_name TEXT NOT NULL
 );

 
 CREATE TABLE seasons(
    id SERIAL PRIMARY KEY,
    start_date DATE  NOT NULL ,
    end_date DATE NOT NULL
 );

CREATE TABLE matches(
    id SERIAL PRIMARY KEY,
    team1_id INTEGER NOT NULL,
    team2_id INTEGER NOT NULL,
    location INTEGER NOT NULL,
    date DATE NOT NULL,
    season_id INTEGER NOT NULL,
    ref1_id INTEGER NOT NULL,
    ref2_id INTEGER NOT NULL,

);

CREATE TABLE lineups(
   id SERIAL PRIMARY KEY,
   player_id INTEGER  NOT NULL,
   match_id INTEGER NOT NULL,
    team_id INTEGER NOT NULL,

);

 CREATE TABLE goals(
    id SERIAL PRIMARY KEY,
    player_id INTEGER  NOT NULL,
    match_id INTEGER NOT NULL
 );

CREATE TABLE results(
   id SERIAL PRIMARY KEY,
   match_id INTEGER NOT NULL,
    team_id INTEGER NOT NULL,
    result TEXT NOT NULL

);








