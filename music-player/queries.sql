SELECT name FROM artists WHERE id = 1;
SELECT title FROM albums WHERE artist_id = 1 LIMIT 1;
SELECT track_no, title, length FROM songs ORDER BY album_id;
--how would I use the join table to order it by playlist_id?
SELECT title FROM playlists WHERE name LIKE "hamilton";
SELECT title FROM albums WHERE artist_id = 1 AND year >2000;
SELECT name FROM artists GROUP BY name HAVING genre = "folk";
SELECT name FROM artists WHERE genre IN ("rock", "hip-hop", "classical");
SELECT name FROM artists
  JOIN albums
  ON artists.id = albums.artist_id;
