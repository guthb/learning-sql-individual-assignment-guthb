--Provide a query that shows the # of invoices per country. HINT: GROUP BY

use Chinook;

SELECT COUNT(BillingCountry) AS 'Invoice Count' , BillingCountry AS 'Country'
FROM Invoice 
GROUP BY BillingCountry;
