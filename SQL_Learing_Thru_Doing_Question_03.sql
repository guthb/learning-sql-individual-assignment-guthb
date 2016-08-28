--Provide a query showing the Invoices of customers who are from Brazil.
--The resultant table should show the:
--customer's full name, 
--Invoice ID, 
--Date of the invoice and billing country.

use Chinook;

SELECT FirstName +' '+ LastName AS 'Customer Name', 
InvoiceId AS 'Invoice ID#', 
CONVERT(date,InvoiceDate) AS 'Date of Invoice', 
BillingCountry  AS 'Billing Country'
FROM Customer JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE Country = 'Brazil'
 
