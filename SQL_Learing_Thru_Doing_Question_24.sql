--Provide a query that shows the most purchased track of 2013.

use Chinook;

SELECT TOP 5 Track.Name, SUM(InvoiceLine.Quantity) AS 'Purchased Track Count 2013' 
FROM Track
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE Invoice.InvoiceDate BETWEEN '2013-1-1' and '2013-12-31'
GROUP BY Track.Name
ORDER BY 'Purchased Track Count 2013' DESC;
