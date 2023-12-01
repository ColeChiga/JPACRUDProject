DROP DATABASE IF EXISTS musicdb;
CREATE DATABASE IF NOT EXISTS musicdb;

USE musicdb;

CREATE TABLE song (
	id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
	title VARCHAR(40) NOT NULL,
	release_date DATE,
	artist VARCHAR(40) NOT NULL,
	album_art VARCHAR(2000),
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







-- DROP DATABASE IF EXISTS musicdb;
-- CREATE DATABASE IF NOT EXISTS musicdb;

-- USE musicdb;

-- CREATE TABLE song (
--   id INTEGER PRIMARY KEY AUTO_INCREMENT,
--   name VARCHAR(50) NOT NULL,
--   description TEXT,
--   date_of_birth DATE,
--   weight_grams DOUBLE,
--   price DECIMAL(5,2),
--   image_url VARCHAR(2000)
-- );

-- DROP USER IF EXISTS frogdbuser@localhost;
-- CREATE USER IF NOT EXISTS frogdbuser@localhost identified by 'ribbet';
-- GRANT SELECT,INSERT,UPDATE,DELETE ON frogdb.* TO frogdbuser@localhost;

-- INSERT INTO FROG (id, name) VALUES (1, 'Kermit');
-- INSERT INTO FROG (id, name) VALUES (2, 'Hopkin Green Frog');
-- INSERT INTO FROG (id, name) VALUES (3, 'Michigan');