INSERT INTO
	singers (id, nickname)
VALUES
	(1, 'singer_1'),
	(2, 'singer_2'),
	(3, 'singer_3'),
    (4, 'singer_4'),
    (5, 'singer_5'),
    (6, 'singer_6'),
    (7, 'singer_7'),
    (8, 'singer_8');


INSERT INTO
	genres (id, name_genre)
VALUES
    (1, 'genre_1'),
    (2, 'genre_2'),
    (3, 'genre_3'),
    (4, 'genre_4'),
    (5, 'genre_5');
    

INSERT INTO
	albums (id, name_album, year_of_release_album)
VALUES
    (1, 'album_name_1', '1990-12-15'),
    (2, 'album_name_2', '2010-10-01'),
    (3, 'album_name_3', '2012-08-16'),
    (4, 'album_name_4', '2015-07-20'),
    (5, 'album_name_5', '2018-06-14'),
    (6, 'album_name_6', '2019-03-10'),
    (7, 'album_name_7', '2020-05-13'),
    (8, 'album_name_8', '1986-01-13');

INSERT into 
	tracks (id, name_track, duration, album_id)
VALUES
    (1, 'track_1', 185, 1),
    (2, 'track_2', 201, 4),
    (3, 'track_3', 245, 5),
    (4, 'track_4', 315, 7),
    (5, 'track_5', 325, 3),
    (6, 'track_6', 405, 8),
    (7, 'track_7', 650, 6),
    (8, 'track_8', 400, 1),
    (9, 'track_9', 250, 3),
    (10, 'track_10', 330, 8),
    (11, 'track_11', 155, 3),
    (12, 'track_12', 140, 5),
    (13, 'track_13', 720, 7),
    (14, 'track_14', 245, 3),
    (15, 'my_sing', 745, 1),
    (16, 'my', 645, 7);
   

INSERT INTO
	digests(id, name_digest, year_of_release_digest)
VALUES
    (1, 'collection_1', '2020-12-15'),
    (2, 'collection_2', '2019-01-15'),
    (3, 'collection_3', '2019-02-20'),
    (4, 'collection_4', '2020-11-15'),
    (5, 'collection_5', '2021-07-15'),
    (6, 'collection_6', '2002-08-19'),
    (7, 'collection_7', '2005-09-18'),
    (8, 'collection_8', '2001-05-20');
    
   insert into singers_albums (singer_id, album_id)
 	values 
 	(1, 2),
 	(2, 3),
 	(3, 4),
 	(4, 1),
 	(5, 7),
 	(6, 8),
 	(7, 5),
 	(8, 5);
 	
 insert into genre_singers (singer_id, genres_id)
 values 
 (1, 2),
 (2, 3),
 (3, 4),
 (4, 5),
 (5, 1),
 (6, 5),
 (6, 4),
 (7, 1),
 (8, 3);
 

insert into composition_digest (track_id, digest_id)
values 
(1, 3),
(2, 7),
(3, 5),
(4, 1),
(5, 3),
(6, 8),
(7, 6),
(8, 2),
(9, 1),
(10, 5),
(11, 6),
(12, 5),
(13, 7),
(14, 4), 
(15, 3), 
(16, 1);
