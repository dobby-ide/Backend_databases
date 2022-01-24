-- Calculate and return the count of albums each band has in the database.
-- Include Artist name and album count into the result.
-- Name the result columns as "Artist" and "Album count"

select artist.name as Artist, count(album.id) as "Album count"
from artist
inner join album on artist.id = album.artist_id
GROUP BY artist.name;