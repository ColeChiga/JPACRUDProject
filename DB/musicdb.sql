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
	genre VARCHAR(60),
	video VARCHAR (200),
	album_art VARCHAR(200)
);

DROP USER IF EXISTS musicappuser@localhost;
CREATE USER IF NOT EXISTS musicappuser@localhost IDENTIFIED BY "musicappuser";
GRANT SELECT, INSERT, UPDATE, DELETE ON musicdb.song to musicappuser@localhost;

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (1, 'American Pie', 'Don McLean', 'American Pie', '1971-10-01', '08:42', 'Folk Rock', 'https://www.youtube.com/embed/Z4q_MZ7CRvI?si=3JhCFluWJ674dE6j', 'https://upload.wikimedia.org/wikipedia/en/b/b9/American_Pie_by_Don_McLean.png');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (2, 'Cherry Pie', 'Warrent','Cherry Pie', '1991-11-05', '03:20', 'Glam Metal', 'https://www.youtube.com/embed/OjyZKfdwlng?si=REuh53k2wjNBx1My', 'https://upload.wikimedia.org/wikipedia/en/6/66/Cherrypie.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (3, 'Walk This Way', 'Aerosmith','Toys in the Attic', '1975-08-28', '03:40', 'Hard Rock', 'https://www.youtube.com/embed/3qb3MDqtYOE?si=GIsko9bhJOQQHXZA', 'https://upload.wikimedia.org/wikipedia/en/3/37/Aerosmith_-_Toys_in_the_Attic.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (4, '2112', 'Rush','2112', '1976-03-01', '20:33', 'Progressive Rock', 'https://www.youtube.com/embed/w5jwxrTqoEA?si=Ln_Bl5qxw4iGPVv5', 'https://upload.wikimedia.org/wikipedia/en/c/c9/Rush_2112.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (5, 'Life by the Drop', 'Stevie Ray Vaughan', 'The Sky Is Crying', '1991-11-05', '02:26', 'Blues', 'https://www.youtube.com/embed/YckJy0kgENw?si=UNOq4Vtf-t-GLxYv', 'https://upload.wikimedia.org/wikipedia/en/0/0f/SRVtheskyiscrying.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (6, 'The Pass', 'Rush','Presto', '1991-11-05', '04:50', 'Progressive Rock', 'https://www.youtube.com/embed/VbBf0c-NaN4?si=7dEccnmFZb5A0ohW', 'https://upload.wikimedia.org/wikipedia/en/0/00/Rush_Presto.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (7, 'St. Marie', 'Stone Sour','Hydrograd', '2017-06-30', '04:27', 'Alternative Metal', 'https://www.youtube.com/embed/-bVD_Udh-qo?si=qO3auH9CMj01Tp8c', 'https://upload.wikimedia.org/wikipedia/en/7/7a/Stone_Sour_Hydrograd.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (8, 'Hold On To Memories', 'Disturbed','Evolution', '2018-10-19', '05:03', 'Metal', 'https://www.youtube.com/embed/6Q0sMOQvJuw?si=4IJobRaesU1GlpU8', 'https://upload.wikimedia.org/wikipedia/en/9/91/Disturbed_-_Evolution_%28album_cover%29.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (9, 'Goodie Bag', 'Still Woozy','Goodie Bag', '2017-11-05', '02:26', 'Alternative', 'https://www.youtube.com/embed/zL3wWykAKfs?si=iUqT6gH9IYY3D6Wt&t=9', 'https://lastfm.freetls.fastly.net/i/u/500x500/2c4903318532a3674041587c7a6a6f6b.jpghttps://lastfm.freetls.fastly.net/i/u/500x500/2c4903318532a3674041587c7a6a6f6b.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (10, 'Remember Everything', 'Five Finger Death Punch', 'American Capitalist', '1971-10-01', '04:38', 'Hard Rock', 'https://www.youtube.com/embed/7G8QItjTSDA?si=JpU3_1B1HuZgE8vT', 'https://upload.wikimedia.org/wikipedia/en/8/8c/5fdp_-_American_Capitalist_Album.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (11, 'Her Name Is Alice', 'Shinedown', 'The Sound Of Madness', '2008-06-24', '03:38', 'Rock', 'https://www.youtube.com/embed/PHQQUH0DomI?si=pccleTkPGx2AFTjH', 'https://upload.wikimedia.org/wikipedia/en/d/d4/The_Sound_Of_Madness_-_Cover_Art.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (12, 'The Cave', 'Mumford & Sons','Sign No More', '2009-01-01', '03:37', 'Folk Rock', 'https://www.youtube.com/embed/fNy8llTLvuA?si=_kkEkYQgLdbm-yHb', 'https://upload.wikimedia.org/wikipedia/en/f/f3/Mumfordsonssighnomore.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (13, 'Put Your Records On', 'Ritt Momney','Put Your Records On', '2020-04-24', '03:30', 'Indie', 'https://www.youtube.com/embed/WyVfkr6nsrk?si=ebMQI0kXxyUaiOqF', 'https://upload.wikimedia.org/wikipedia/en/d/df/Ritt_Momney_-_Put_Your_Records_On.jpeg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (14, 'for the people in the back', 'ROLE MODEL','Our Little Angel', '2020-10-21', '02:33', 'Pop', 'https://www.youtube.com/embed/YfsGmQR1Utg?si=q7PCU24pskFWCzgX', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/64/d9/5e/64d95ef6-098f-27b8-e5d8-b81a4d6ab3ee/20UMGIM40006.rgb.jpg/1200x1200bf-60.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (15, 'BS', 'Still Woozy', 'BS', '2020-09-10', '02:13', 'Alternative Pop', 'https://www.youtube.com/embed/coyQ8oieBSU?si=qwl0J4__qa4uodF4', 'https://linkstorage.linkfire.com/medialinks/images/a61198c6-167c-4fa6-82a0-2dcdebbd2214/artwork-440x440.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (16, 'Bright Eyes', 'Timcast','Bright Eyes', '2023-03-24', '04:13', 'Progressive Rock', 'https://www.youtube.com/embed/yHZWFZBtR20?si=O8DFoFUuxZ6JPc8P', 'https://m.media-amazon.com/images/I/41VTFAdTTIL._UXNaN_FMjpg_QL85_.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (17, 'The Kiss Of Venus', 'Paul McCartney, Dominic Fike','McCartney III', '2021-04-16', '02:23', 'R&B', 'https://www.youtube.com/embed/L2IJzVAOvaU?si=T0Z9e6p5YeFtjYKP', 'https://upload.wikimedia.org/wikipedia/en/e/e3/McCartney_III_Album_Cover.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (18, 'All My Favorite Songs', 'Weezer, AJR','All My Favorite Songs', '2021-05-12', '02:50', 'Alternative, Indie', 'https://www.youtube.com/embed/AGPdXYG1msg?si=IMC4eyHzJNiARqJF', 'https://upload.wikimedia.org/wikipedia/en/9/96/Weezer_AJR_All_My_Favorite_Songs_Single.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (19, 'Swing Life Away', 'Rise Against','Siren Song Of The Counter-Culture', '2004-01-01', '03:20', 'Alternative Rock', 'https://www.youtube.com/embed/BblV6AQsd2s?si=GgR-Xwt3nOB4VljV', 'https://upload.wikimedia.org/wikipedia/en/8/80/Rise_Against_Siren_Song_of_the_Counter_Culture.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (20, "Hard to Say I'm Sorry", 'Chicago','Chicago 16', '1982-06-07', '05:04', 'Soft Rock', 'https://www.youtube.com/embed/1A0MPWseJIE?si=qhZXhEK7HP8UIlzn', 'https://upload.wikimedia.org/wikipedia/en/6/69/Chicago16cover.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (21, 'Genocide (Losing My Mind)', 'Timcast', 'Genocide (Losing My Mind)', '2022-11-04', '03:44', 'Punk Rock', 'https://www.youtube.com/embed/IXV615QfuI8?si=Rj3vuTBlN9rpRhKV', 'https://m.media-amazon.com/images/I/5199AknvmML._UXNaN_FMjpg_QL85_.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (22, 'Box of Rain', 'Grateful Dead','American Beauty', '1970-11-01', '05:18', 'Americana', 'https://www.youtube.com/embed/nxjvo4BRf-Y?si=AcoLa2zvU3h-VuAY', 'https://upload.wikimedia.org/wikipedia/en/6/6a/Grateful_Dead_-_American_Beauty.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (23, 'Darkness', 'Disturbed','Believe', '2002-09-17', '03:55', 'Alternative Metal', 'https://www.youtube.com/embed/-IW6zysibzY?si=xWKUBJJWvjQGcT-Z', 'https://upload.wikimedia.org/wikipedia/en/2/23/Disturbed_Believe.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (24, 'Miss Summer', 'ODIE', 'Miss Summer', '2020-10-23', '02:42', 'R&B', 'https://www.youtube.com/embed/gwIAOn88Klw?si=vMj0CPlAEj3-vzFy', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/50/9f/0e/509f0ee7-1230-5b8c-9a5c-20f9b9d692b1/194690201486_cover.jpg/1200x1200bf-60.jpg');

INSERT INTO SONG (id, title, artist, album, release_date, length, genre, video, album_art)
		VALUES (25, 'The Trees', 'Rush','Hemispheres', '1978-10-29', '04:42', 'Progressive Rock', 'https://www.youtube.com/embed/iDM8fXhRdWs?si=4jfhYEtycBrzEh16', 'https://upload.wikimedia.org/wikipedia/en/6/6c/Rush_Hemispheres.jpg');





