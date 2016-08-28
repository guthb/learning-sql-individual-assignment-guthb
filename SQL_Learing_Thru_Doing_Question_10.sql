--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

use Chinook;


SELECT COUNT(InvoiceId) AS 'Line Item Tally' FROM InvoiceLine WHERE InvoiceID = 37;
