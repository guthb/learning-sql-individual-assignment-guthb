--Provide a query that includes the purchased track name 
--AND artist name with each invoice line item.

use Chinook;

SELECT Track.Name AS'Track Name',  Artist.Name AS 'Artist Name', InvoiceLine.InvoiceLineId
FROM InvoiceLine
JOIN Track  ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId;
