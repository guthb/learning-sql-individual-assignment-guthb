--Provide a query showing a unique list of billing countries from the Invoice table.

use Chinook;

SELECT DISTINCT BillingCountry AS Country 
FROM Invoice;