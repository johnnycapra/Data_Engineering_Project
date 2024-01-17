CREATE DATABASE fantasy_fb_db;

CREATE TABLE injury (
	player VARCHAR(30) NOT NULL,
	pos VARCHAR(30) NOT NULL,
	report_primary_injury VARCHAR(250),
	report_secondary_injury VARCHAR(250),
	report_status VARCHAR(250),
	practice_primary_injury VARCHAR(250),
	practice_secodary_injury VARCHAR(250)
);

CREATE TABLE rushing (
	player VARCHAR(30) NOT NULL PRIMARY KEY,
	pos VARCHAR(30),
	yds VARCHAR(30) NOT NULL,
	td VARCHAR(30) NOT NULL
);

SELECT * FROM rushing;

SELECT * FROM injury;

SELECT *
FROM rushing
JOIN injury ON injury.player=rushing.player;