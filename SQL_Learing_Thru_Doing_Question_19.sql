--Which sales agent made the most in sales in 2009? HINT: MAX

use Chinook;

SELECT TOP 1 Employee.FirstName + ' ' + Employee.LastName AS 'Sales Agent', SUM(Invoice.Total) AS 'Max TotalInvoice' 
FROM Invoice 
INNER JOIN Customer ON Invoice.CustomerID = Customer.CustomerID
INNER JOIN Employee ON Customer.SupportRepID = Employee.EmployeeID
WHERE Invoice.InvoiceDate BETWEEN '2009-01-01' and '2009-12-31'
GROUP BY  Employee.FirstName,Employee.LastName
ORDER BY 'Max TotalInvoice' DESC;