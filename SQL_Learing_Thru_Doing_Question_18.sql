--Provide a query that shows total sales made by each sales agent.

use Chinook;

SELECT Employee.FirstName + ' ' + Employee.LastName AS 'Sales Agent', SUM(Invoice.Total) AS 'Total Sales' 
FROM Invoice 
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.LastName, Employee.FirstName, Employee.EmployeeId;