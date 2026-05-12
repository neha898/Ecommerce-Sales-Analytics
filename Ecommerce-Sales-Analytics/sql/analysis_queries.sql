SHOW COLUMNS FROM orders;

SELECT * FROM orders LIMIT 10;

SELECT SUM(Sales) AS total_sales FROM orders;

SELECT SUM(Profit) AS total_profit FROM orders;

SELECT Category,
       SUM(Profit) AS total_profit
FROM orders
GROUP BY Category
ORDER BY total_profit DESC;

SELECT Region,
       SUM(Sales) AS total_sales
FROM orders
GROUP BY Region
ORDER BY total_sales DESC;

SELECT Region,
       SUM(Profit) AS total_profit
FROM orders
GROUP BY Region
ORDER BY total_profit DESC;

SELECT State,
       SUM(Sales) AS total_sales
FROM orders
GROUP BY State
ORDER BY total_sales DESC
LIMIT 10;

SELECT City,
       SUM(Profit) AS total_profit
FROM orders
GROUP BY City
ORDER BY total_profit DESC
LIMIT 10;

SELECT Segment,
       SUM(Sales) AS total_sales
FROM orders
GROUP BY Segment
ORDER BY total_sales DESC;

SELECT ship_mode,
       COUNT(*) AS total_orders
FROM orders
GROUP BY ship_mode
ORDER BY total_orders DESC;

SELECT Category,
       AVG(Discount) AS avg_discount
FROM orders
GROUP BY Category;

SELECT Discount,
       AVG(Profit) AS avg_profit
FROM orders
GROUP BY Discount
ORDER BY Discount;

SELECT Category,
       SUM(Profit) AS total_profit
FROM orders
GROUP BY Category
HAVING total_profit < 0;

SELECT Region,
       SUM(Sales) AS total_sales,
       RANK() OVER(ORDER BY SUM(Sales) DESC) AS sales_rank
FROM orders
GROUP BY Region;

SELECT Discount,
       AVG(Profit) AS avg_profit
FROM orders
GROUP BY Discount
ORDER BY Discount;

SELECT Category,
       SUM(Sales) AS total_sales,
       SUM(Profit) AS total_profit
FROM orders
GROUP BY Category;

SELECT cub_category,
       SUM(Profit) AS total_profit
FROM orders
GROUP BY cub_category
ORDER BY total_profit ASC;