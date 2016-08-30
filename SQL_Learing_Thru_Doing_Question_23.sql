--Provide a query that shows the total sales per country. Which country's customers spent the most?

use Chinook;


SELECT BillingCountry AS 'Country', SUM(Total) AS 'Total Sales' 
FROM Invoice 
GROUP BY BillingCountry 
ORDER BY 'Total Sales' DESC;

SELECT Top 1 BillingCountry AS 'Country', SUM(Total) AS 'Total Sales' 
FROM Invoice 
GROUP BY BillingCountry 
ORDER BY 'Total Sales' DESC;
