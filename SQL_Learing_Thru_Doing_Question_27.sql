--Provide a query that shows the most purchased Media Type

use Chinook;


SELECT TOP 1 MediaType.Name AS 'Media Format', SUM(Track.MediaTypeId) AS 'Total Purchased' 
FROM Track
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.MediaTypeId, MediaType.Name
ORDER BY 'Total Purchased' DESC;
