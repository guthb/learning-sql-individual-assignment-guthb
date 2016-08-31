--Provide a query that shows the top 5 most purchased tracks over all.

use Chinook;

SELECT TOP 1 Track.Name as 'Track Name', SUM(InvoiceLine.Quantity) AS 'Purchased Track Count' 
FROM Track
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Track.Name
ORDER BY 'Purchased Track Count' DESC;