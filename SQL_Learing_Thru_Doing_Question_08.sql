--Provide a query that shows the 
--Invoice Total, Customer name, Country and 
--Sale Agent name for all invoices and customers.

use Chinook;

SELECT Invoice.Total, Customer.FirstName + ' ' + Customer.LastName AS 'Customer Name', Customer.Country, Employee.FirstName + ' ' + Employee.LastName AS 'Sales Support Assoc.'
FROM Invoice 
JOIN Customer  ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee  ON Customer.SupportRepId = Employee.EmployeeId
Order BY Employee.LastName;