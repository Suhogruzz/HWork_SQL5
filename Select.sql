SELECT genre_name, COUNT (DISTINCT performer_id) FROM 
genre_performer gp JOIN genre g
ON gp.genre_id = g.id 
GROUP BY genre_name;

SELECT COUNT (t.id) FROM
track t JOIN album a 
ON t.id_album = a.id 
WHERE a.album_year BETWEEN 2019 AND 2020;

SELECT a.album_name, AVG(t.track_length) FROM
track t JOIN album a
ON t.id_album = a.id 
GROUP BY a.album_name;

SELECT DISTINCT p.name  FROM
performer_album pa JOIN album a 
ON pa.performer_id  = a.id 
JOIN performer p 
ON pa.performer_id = p.id 
WHERE a.album_year <> 2020;

SELECT DISTINCT c.collection_name FROM
collections c JOIN collection_track ct 
ON c.id = ct.collection_id 
JOIN track t 
ON ct.track_id = t.id 
JOIN album a 
ON t.id_album = a.id 
JOIN performer_album pa 
ON a.id = pa.album_id 
JOIN  performer p 
ON pa.performer_id = p.id 
WHERE p.name = 'Iron Maiden';

SELECT DISTINCT a.album_name FROM
album a JOIN performer_album pa 
ON a.id = pa.album_id 
JOIN performer p 
ON pa.performer_id = p.id 
JOIN (SELECT performer_id, COUNT(genre_id) AS unique_gp
	  FROM genre_performer gp 
	  GROUP BY performer_id 
	  HAVING COUNT(genre_id) > 1) ugp
ON p.id = ugp.performer_id
WHERE NOT ugp.unique_gp IS NULL;

SELECT t.track_name FROM
track t FULL OUTER JOIN collection_track ct 
ON t.id = ct.track_id 
LEFT JOIN collections c 
ON ct.collection_id = c.id 
WHERE c.id IS NULL;

SELECT p.name FROM
performer p JOIN performer_album pa 
ON p.id = pa.performer_id 
JOIN album a 
ON pa.album_id = a.id 
JOIN track t 
ON a.id = t.id_album 
WHERE t.track_length = (SELECT MIN(track_length) FROM track);

SELECT a.album_name FROM
album a JOIN track t 
ON t.id_album = a.id 
WHERE t.id_album IN (SELECT id_album FROM track 
					 GROUP BY id_album
					 HAVING COUNT(id) = (SELECT COUNT(id) FROM track 
					 					 GROUP BY id_album
					 					 ORDER BY count
					 					 LIMIT 1) 
					 );
					 
