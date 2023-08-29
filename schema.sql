
-- Drop the database if it exists
DROP DATABASE IF EXISTS music_db;

-- Create Database
CREATE DATABASE music_db;

-- Connect to the database
\c music_db;

--CREATE TABLES--

--ARTIST--
-- Create a spotify artist table
DROP TABLE IF EXISTS spotify_artists;

CREATE TABLE spotify_artists (
  	artist_id VARCHAR(30) PRIMARY KEY,
	artist VARCHAR,
	followers INT
	);

--view artist table
-- SELECT * FROM spotify_artists;

--TRACKS--
-- Create a spotify tracks table
DROP TABLE IF EXISTS spotify_tracks;

CREATE TABLE spotify_tracks (
	year INT,
	artist VARCHAR NOT NULL,
	danceability INT,
	duration_ms INT,
	energy INT,
	explicit INT,
  	id VARCHAR(30) PRIMARY KEY,
	loudness INT,
	name VARCHAR(255) not null,
	popularity INT,
	tempo INT,
	artist_id VARCHAR NOT NULL,
	FOREIGN KEY (artist_id) REFERENCES spotify_artists(artist_id)
);

--view tracks table
-- SELECT * FROM spotify_tracks;

--SALES--
-- Create a music sales table


DROP TABLE IF EXISTS music_sales;

CREATE TABLE music_sales (
  	format VARCHAR(35),
	metric VARCHAR (20),
	year INT,
	value_actual INT
	);

--view artist table
-- SELECT * FROM music_sales;