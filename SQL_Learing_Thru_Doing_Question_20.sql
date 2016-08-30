--Which sales agent made the most in sales in 2010?

use Chinook;

SELECT TOP 1 Employee.FirstName + ' ' + Employee.LastName AS 'Sales Agent', SUM(Invoice.Total) AS 'Max Total Sales' 
FROM Invoice 
INNER JOIN Customer ON Invoice.CustomerID = Customer.CustomerID
INNER JOIN Employee ON Customer.SupportRepID = Employee.EmployeeID
WHERE Invoice.InvoiceDate BETWEEN '2010-01-01' and '2010-12-31'
GROUP BY  Employee.FirstName,Employee.LastName
ORDER BY 'Max Total Sales' DESC;