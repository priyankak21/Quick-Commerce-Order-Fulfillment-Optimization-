-- Revenue by City
SELECT City,
       ROUND(SUM(Order_Value_INR), 2) AS Total_Revenue,
       COUNT(*) AS Orders_Placed
FROM orders
GROUP BY City
ORDER BY Total_Revenue DESC;