CREATE SCHEMA project3;

CREATE TABLE project3.injury (
	player VARCHAR(30) NOT NULL,
	pos VARCHAR(30) NOT NULL,
	report_primary_injury VARCHAR(250),
	report_secondary_injury VARCHAR(250),
	report_status VARCHAR(250),
	practice_primary_injury VARCHAR(250),
	practice_secodary_injury VARCHAR(250)
);

CREATE TABLE project3.rushing (
	player VARCHAR(30) NOT NULL,
	pos VARCHAR(30),
	yds VARCHAR(30) NOT NULL,
	td VARCHAR(30) NOT NULL
);

SELECT injury.player, rushing.player
FROM project3.injury
INNER JOIN project3.rushing ON injury.player=rushing.player;

