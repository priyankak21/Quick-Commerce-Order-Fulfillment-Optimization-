-- Average Delivery Time and Ratings per Hub
SELECT Hub_Assigned,
       ROUND(AVG(Delivery_Time_min), 2) AS Avg_Delivery_Time,
       ROUND(AVG(Customer_Rating), 2) AS Avg_Rating
FROM orders
GROUP BY Hub_Assigned;