--How many Invoices were there in 2009 and 2011? 
--What are the respective total sales for each of those years?

use Chinook;

SELECT SUM(Invoice.Total) AS 'Total Sales 2009', COUNT(Invoice.InvoiceId) AS 'Invoice Total Year 2009'
FROM Invoice 
WHERE InvoiceDate BETWEEN '2009-1-1' AND '2009-12-31';

SELECT SUM(Invoice.Total) AS 'Total Sales 2011', COUNT(Invoice.InvoiceId) AS 'Invoice Total Year 2011' 
FROM Invoice 
WHERE InvoiceDate BETWEEN '2011-1-1' AND '2011-12-31';