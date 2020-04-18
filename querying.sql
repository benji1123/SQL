/* Using this database: 
https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_groupby 
Display the countries with more than 10 orders
*/

SELECT COUNT(Orders.CustomerID) AS numOrders, Customers.Country
FROM Orders JOIN Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Country HAVING numOrders >= 10;
