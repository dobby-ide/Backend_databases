-- Fetch artist name and their albums. Include albums without artist information in the
-- result set.
-- Include artist's name, albums name and release year to the result.
select artist.name, album.name as album, album.year
from album
left join artist on artist.id = album.artist_id;