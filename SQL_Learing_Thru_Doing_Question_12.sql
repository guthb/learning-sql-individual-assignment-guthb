--Provide a query that includes the track name with each invoice line item.

use Chinook;

SELECT InvoiceLine.InvoiceLineId, InvoiceLine.InvoiceId, InvoiceLine.TrackId, InvoiceLine.UnitPrice, InvoiceLine.Quantity, Track.Name  AS 'Track Name'
-- OR SELECT InvoiceLine.*, Track.Name  AS 'Track Name'
FROM InvoiceLine 
JOIN Track on InvoiceLine.TrackId = Track.TrackId;
