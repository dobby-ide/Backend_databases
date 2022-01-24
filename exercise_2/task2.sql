select album.name as ALBUM, album.year, track.name as track_name,track.track_number as track_NO, track.length as track_length
from album
inner join artist on artist.id=album.artist_id
inner join track on album.id = track.album_id
where artist.name = "Iron Maiden";
