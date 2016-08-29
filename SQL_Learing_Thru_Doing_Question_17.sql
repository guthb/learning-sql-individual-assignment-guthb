--Provide a query that shows all Invoices but includes the # of invoice line items.

use Chinook;

SELECT Invoice.InvoiceId,Invoice.CustomerId, 
CONVERT (date, Invoice.InvoiceDate) AS 'Invoice Date', 
	   Invoice.BillingAddress,
	   Invoice.BillingCity, 
	   Invoice.BillingState, 
	   Invoice.BillingCountry, 
	   Invoice.BillingPostalCode, 
	   Invoice.Total, COUNT(InvoiceLine.InvoiceLineId) AS 'Total Items' 
FROM Invoice
JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId 
GROUP BY Invoice.InvoiceId, 
	     Invoice.CustomerId, 
	     Invoice.InvoiceDate, 
	     Invoice. BillingAddress, 
	     Invoice.BillingCity, 
	     Invoice.BillingState, 
	     Invoice.BillingCountry,
	     Invoice.BillingPostalCode, 
	     Invoice.Total
ORDER BY InvoiceDate

