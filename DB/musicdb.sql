DROP DATABASE IF EXISTS musicdb;
CREATE DATABASE IF NOT EXISTS musicdb;

USE musicdb;

CREATE TABLE song(
	id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
	title VARCHAR(40) NOT NULL,
	artist VARCHAR(40) NOT NULL,
	album VARCHAR(100),
	release_date DATE,
	length VARCHAR(5),
	genre VARCHAR(60)
);

DROP USER IF EXISTS musicappuser@localhost;
CREATE USER IF NOT EXISTS musicappuser@localhost IDENTIFIED BY "musicappuser";
GRANT SELECT, INSERT, UPDATE, DELETE ON musicdb.song to musicappuser@localhost;

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (1, 'American Pie', 'Don McLean', 'American Pie', '1971-10-01', '08:42', 'Folk Rock');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (2, 'Cherry Pie', 'Warrent','Cherry Pie', '1991-11-05', '03:20', 'Glam Metal');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (3, 'Walk This Way', 'Aerosmith','Toys in the Attic', '1975-08-28', '03:40', 'Hard Rock');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (4, '2112', 'Rush','The Sky Is Crying', '1976-03-01', '20:33', 'Progressive Rock');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (5, 'Life by the Drop', 'Stevie Ray Vaughan', 'The Sky Is Crying', '1991-11-05', '02:26', 'Blues');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (6, 'The Pass', 'Rush','Presto', '1991-11-05', '04:50', 'Progressive Rock');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (7, 'St. Marie', 'Stone Sour','Hydrograd', '2017-06-30', '04:27', 'Alternative Metal');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (8, 'Hold On To Memories', 'Disturbed','Evolution', '2018-10-19', '05:03', 'Metal');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (9, 'Goodie Bag', 'Still Woozy','Goodie Bag', '2017-11-05', '02:26', 'Alternative');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (10, 'Remember Everything', 'Five Finger Death Punch', 'American Capitalist', '1971-10-01', '04:38', 'Hard Rock');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (11, 'Her Name Is Alice', 'Shinedown', 'The Sound Of Madness', '2008-06-24', '03:38', 'Rock');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (12, 'The Cave', 'Mumford & Sons','Sign No More', '2009-01-01', '03:37', 'Folk Rock');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (13, 'Put Your Records On', 'Ritt Momney','Put Your Records On', '2020-04-24', '03:30', 'Indie');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (14, 'for the people in the back', 'ROLE MODEL','Our Little Angel', '2020-10-21', '02:33', 'Pop');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (15, 'BS', 'Still Woozy', 'BS', '2020-09-10', '02:13', 'Alternative Pop');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (16, 'Bright Eyes', 'Timcast','Bright Eyes', '2023-03-24', '04:13', 'Progressive Rock');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (17, 'The Kiss Of Venus', 'Paul McCartney, Dominic Fike','McCartney III', '2021-04-16', '02:23', 'R&B');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (18, 'All My Favorite Songs', 'Weezer, AJR','All My Favorite Songs', '2021-05-12', '02:50', 'Alternative, Indie');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (19, 'Swing Life Away', 'Rise Against','Siren Song Of The Counter-Culture', '2004-01-01', '03:20', 'Alternative Rock');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (20, "Hard to Say I'm Sorry", 'Chicago','Chicago 16', '1982-06-07', '05:04', 'Soft Rock');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (21, 'Genocide (Losing My Mind)', 'Timcast', 'Genocide (Losing My Mind)', '2022-11-04', '03:44', 'Punk Rock');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (22, 'Box of Rain', 'Grateful Dead','American Beauty', '1970-11-01', '05:18', 'Americana');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (23, 'Darkness', 'Disturbed','Believe', '2002-09-17', '03:55', 'Alternative Metal');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (24, 'Miss Summer', 'ODIE', 'Miss Summer', '2020-10-23', '02:42', 'R&B');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre)
		VALUES (25, 'The Trees', 'Rush','Hemispheres', '1978-10-29', '04:42', 'Progressive Rock');





