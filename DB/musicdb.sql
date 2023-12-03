DROP DATABASE IF EXISTS musicdb;
CREATE DATABASE IF NOT EXISTS musicdb;

USE musicdb;

CREATE TABLE song(
	id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
	title VARCHAR(40) NOT NULL,
	release_date DATE,
	artist VARCHAR(40) NOT NULL,
	album VARCHAR(100),
	length INT(4),
	genre VARCHAR(10)
);

DROP USER IF EXISTS musicappuser@localhost;
CREATE USER IF NOT EXISTS musicappuser@localhost IDENTIFIED BY "musicappuser";
GRANT SELECT, INSERT, UPDATE, DELETE ON musicdb.song to musicappuser@localhost;

INSERT INTO SONG (id, title, artist)
		VALUES (1, 'American Pie', 'Don McClean');

INSERT INTO song (id, title, artist)
		VALUES (2, 'Cherry Pie', 'Warrent');

INSERT INTO song (id, title, artist)
		VALUES (3, 'Walk This Way', 'Aerosmith');

