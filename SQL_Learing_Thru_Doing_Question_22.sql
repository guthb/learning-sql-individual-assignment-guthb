--Provide a query that shows the # of customers assigned to each sales agent.

use Chinook;

SELECT Employee.FirstName+' '+Employee.LastName As 'Sales Agent', Count(Customer.CustomerId) AS 'Customers Total' 
FROM Employee 
JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId 
GROUP BY Employee.EmployeeId, Employee.FirstName, Employee.LastName;
