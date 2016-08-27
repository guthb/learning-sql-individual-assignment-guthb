--Provide a query only showing the Customers from Brazil.

use Chinook;

SELECT FirstName, LastName, CustomerId, Country 
FROM Customer 
WHERE Country = 'Brazil' 
ORDER BY CustomerId;