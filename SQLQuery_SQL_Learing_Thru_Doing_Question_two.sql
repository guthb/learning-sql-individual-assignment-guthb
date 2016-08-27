--Provide a query only showing the Customers from Brazil.

use Chinook;

select FirstName, LastName, CustomerId, Country from Customer where Country = 'Brazil' order by CustomerId;