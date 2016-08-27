--query showing Customers (just their full names, customer ID and country) who are not in the US

use Chinook;

SELECT FirstName, LastName, CustomerId, Country 
FROM Customer 
WHERE Country != 'USA' order by CustomerId;