-- On-Time Delivery Rate by City
SELECT City,
       COUNT(*) AS Total_Orders,
       SUM(CASE WHEN Delivered_On_Time = 'Yes' THEN 1 ELSE 0 END) AS On_Time_Deliveries,
       ROUND(SUM(CASE WHEN Delivered_On_Time = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS On_Time_Delivery_Rate
FROM orders
GROUP BY City;