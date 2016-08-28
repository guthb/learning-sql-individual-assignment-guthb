--Provide a query that shows the 
--Invoice Total, Customer name, Country and 
--Sale Agent name for all invoices and customers.

use Chinook;

SELECT Invoice.Total, Customer.FirstName, Customer.LastName, Customer.Country, Employee.FirstName,Employee.LastName
FROM Invoice 
JOIN Customer  ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee  ON Customer.SupportRepId = Employee.EmployeeId
ORDER BY Employee.LastName;
