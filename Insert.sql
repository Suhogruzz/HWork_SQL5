INSERT INTO performer (name) VALUES 
('Blue Oyster Cult'), #hard
('Iron Maiden'), #heavy
('Judas Priest'), #heavy
('Pearl Jam'),#alt
('The Offspring'),#punk
('Twisted Sister'), #hard
('Rainbow'),#hard
('Dimmu Borgir');#black
INSERT INTO genre (genre_name) VALUES
('Hard Rock'),
('Punk Rock'),
('Heavy Metal'),
('Alternative Rock'),
('Black Metal'); 
INSERT INTO album (album_name, album_year) VALUES 
('Fire of Unknown Origin', 1981),
('Senjutsu', 2021),
('Painkiller', 1990),
('Ten', 1991),
('Ixnay of the Hombre', 1997),
('Stay Hungry', 1984),
('Ritchie Blackmore`s Rainbow', 1975),
('Death Cult Armageddon', 2003),
('Eonian', 2018);
INSERT INTO track (track_name, track_length, id_album) VALUES 
('Sole Survivor', '00:03:58', 1),
('Veteran of the Psychic Wars', '00:04:49', 1),
('Burnin` for You', '00:04:31', 1),
('Stratego', '00:05:00', 2),
('The Writing On The Wall', '00:06:14', 2),
('Days Of Future Past', '00:04:04', 2),
('Painkiller', '00:06:06', 3),
('All Guns Blazing', '00:03:57', 3),
('Metal Meltdown', '00:04:48', 3),
('Even Flow', '00:04:54', 4),
('Alive', '00:05:39', 4),
('Once', '00:03:52', 4),
('All I Want', '00:01:53', 5),
('Me & My Old Lady', '00:04:33', 5),
('Burn In Hell', '00:04:43', 6),
('The Temple of the King', '00:04:41', 7),
('Progenies of the Great Apocalypse', '00:05:17', 8),
('Interdimensional Summit', '00:04:39', 9);
INSERT INTO collections (collection_name, collection_year) VALUES 
('Collection A', 2020),
('Collection The', 2019),
('Collection M', 2018),
('Only Dimmu', 2022),
('Newer', 2021),
('Shortie', 2007),
('Just One Word', 2008),
('Just One Second To Perfection', 2018);
INSERT INTO performer_album (performer_id, album_id) VALUES 
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(8,9);
INSERT INTO genre_performer (performer_id, genre_id) VALUES 
(1,1),
(2,1),
(2,3),
(3,3),
(4,4),
(5,2),
(6,1),
(7,1),
(8,5),
;
INSERT INTO collection_track (track_id, collection_id) VALUES 
(8,1),
(11,1),
(13,1),
(2,2),
(5,2),
(16,2),
(17,2),
(9,3),
(14,3),
(17,4),
(18,4),
(4,5),
(5,5),
(6,5),
(13,6),
(4,7),
(7,7),
(11,7),
(12,7),
(2,8),
(11,8),
(18,8);