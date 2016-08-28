--Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.

use Chinook;

SELECT Employee.FirstName, + ' ' + Employee.LastName AS 'Sales Associate Name', Invoice.*
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
INNER JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
WHERE Employee.Title like 'Sales%'