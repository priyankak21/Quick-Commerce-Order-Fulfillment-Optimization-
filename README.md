# 🚀 Quick Commerce Order Fulfillment Optimization (SQL + Excel)

This project simulates and analyzes order fulfillment data in a Quick Commerce setting using **SQL and Excel**. The goal is to **optimize delivery performance**, identify **underperforming hubs**, and evaluate **delivery partner efficiency** to improve customer satisfaction and reduce costs.

---

## 📊 Dataset

Synthetic dataset with **1000 orders**, containing:
- `Order_ID`, `Order_Date`
- `City`, `Hub_Assigned`, `Delivery_Partner`
- `Distance_km`, `Order_Value_INR`
- `Delivery_Time_min`, `Delivered_On_Time`, `Returned`, `Customer_Rating`

Download the dataset here: `QuickCommerce_OrderFulfillment_Project.xlsx`

---

## 🔍 SQL Analysis

### 1. On-Time Delivery Rate by City
- Measures the efficiency of delivery operations across major cities.

### 2. Hub Performance
- Compares average delivery times and customer ratings by hub.

### 3. Delivery Partner Efficiency
- Evaluates partner performance using on-time delivery and return rates.

### 4. City-wise Revenue Generation
- Highlights key revenue-generating regions.

### 5. High Return Rate Hubs
- Identifies hubs with a disproportionately high number of returns.

📁 All SQL queries are available in `.sql` files in this repository.

---


## 🧠 Key Insights

- **Hub_B** shows the highest return rate — investigation needed.
- **DP_2** has lowest on-time rate — potential training required.
- **Delhi** generated the highest revenue but moderate delivery delays.
- Return rate under 5% across most hubs — acceptable for Q-commerce.

---

## 🛠 Tools Used

- **SQL** (analysis queries)
- **Excel** (dashboard & pivot summary)
- **Python** (data simulation)

---

## ▶️ How to Use

1. Load the Excel sheet into a database like PostgreSQL / MySQL (table: `orders`)
2. Run the SQL scripts in your preferred SQL editor.
3. Use Excel Pivot Tables to build summary views for hub, partner, and city performance.
4. Extract actionable insights for operational decisions.
