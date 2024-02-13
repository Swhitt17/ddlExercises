DROP DATABASE craigslist_db;

CREATE DATABASE craigslist_db;

\c craigslist_db;

 CREATE TABLE regions(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    state TEXT NOT NULL
 );

  CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    preferred_region_id INTEGER ,
 );
  CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,

 );

 CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    message TEXT NOT NULL,
    location TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    region_id INTEGER NOT NULL,
    category_id INTEGER NOT NULL ,
 );


