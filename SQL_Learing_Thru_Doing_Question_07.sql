--Provide a query that shows the invoices associated with each sales agent.
-- The resultant table should include the Sales Agent's full name.


SELECT Employee.FirstName + ' ' + Employee.LastName AS 'Sales Support Assoc.', Invoice.Total AS 'Invoice Total', Invoice.InvoiceId AS 'Invoice Numb.'
FROM Employee 
JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId 
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
ORDER By Employee.LastName;