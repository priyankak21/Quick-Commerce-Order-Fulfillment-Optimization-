-- Hubs with High Return Percentage
SELECT Hub_Assigned,
       COUNT(*) AS Total_Orders,
       SUM(CASE WHEN Returned = 'Yes' THEN 1 ELSE 0 END) AS Total_Returns,
       ROUND(SUM(CASE WHEN Returned = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Return_Percentage
FROM orders
GROUP BY Hub_Assigned
ORDER BY Return_Percentage DESC;