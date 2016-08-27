--query showing Customers (just their full names, customer ID and country) who are not in the US  Question One

use Chinook;

select FirstName, LastName, CustomerId, Country from Customer where Country != 'USA' order by CustomerId;