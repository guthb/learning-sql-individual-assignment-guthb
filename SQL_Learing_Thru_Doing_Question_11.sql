--Looking at the InvoiceLine table, provide a query that 
--COUNTs the number of line items for each Invoice. 
--HINT: GROUP BY

use Chinook;

SELECT COUNT(InvoiceId) AS 'Line Items', InvoiceId ' Invoice Number' 
FROM InvoiceLine 
GROUP BY InvoiceId;
