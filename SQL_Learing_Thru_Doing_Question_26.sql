--Provide a query that shows the top 3 best selling artists

use Chinook;

SELECT TOP 3 Artist.Name As 'Artist', SUM(InvoiceLine.Quantity) AS 'Total Track Sales'
FROM Track
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
GROUP BY Artist.ArtistId, Artist.Name
ORDER BY 'Total Track Sales' DESC;

