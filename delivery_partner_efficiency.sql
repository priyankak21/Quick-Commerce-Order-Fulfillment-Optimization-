-- Delivery Partner Efficiency (Returns + On-time Delivery)
SELECT Delivery_Partner,
       COUNT(*) AS Total_Assignments,
       SUM(CASE WHEN Delivered_On_Time = 'Yes' THEN 1 ELSE 0 END) AS On_Time,
       SUM(CASE WHEN Returned = 'Yes' THEN 1 ELSE 0 END) AS Returns,
       ROUND(SUM(CASE WHEN Delivered_On_Time = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS On_Time_Rate,
       ROUND(SUM(CASE WHEN Returned = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Return_Rate
FROM orders
GROUP BY Delivery_Partner;