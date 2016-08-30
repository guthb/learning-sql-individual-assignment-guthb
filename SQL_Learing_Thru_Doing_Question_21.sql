--Which sales agent made the most in sales over all?

use Chinook;

SELECT TOP 1 Employee.FirstName+ ' ' + Employee.LastName AS 'Sales Agent', SUM(Invoice.Total) AS 'Max Total Sales' 
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerID = Customer.CustomerID
INNER JOIN Employee ON Customer.SupportRepID = Employee.EmployeeID
GROUP BY  Employee.FirstName,Employee.LastName
ORDER BY 'Max Total Sales' DESC;