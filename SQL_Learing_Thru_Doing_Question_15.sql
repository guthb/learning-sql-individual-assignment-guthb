--Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be include on the resulant table.

use Chinook;

SELECT Playlist.PlaylistId, Playlist.Name AS 'PlayList Catergory', COUNT(PlaylistTrack.TrackId) AS 'Total Number of Tracks'
FROM Playlist 
JOIN PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId 
GROUP BY PlayList.PlaylistId,Playlist.Name;