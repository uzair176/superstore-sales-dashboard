-- ===============================
-- BUSINESS INTELLIGENCE QUERIES
-- ===============================

-- 1. Total Revenue
SELECT SUM(Sales) AS Total_Revenue
FROM superstore;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM superstore;

-- 3. Monthly Sales Trend
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
    SUM(Sales) AS Monthly_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;

-- 4. Top 10 Profitable Products
SELECT 
    Product_Name,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;

-- 5. Sales by Region
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 6. Sales by Category
SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category;

-- 7. Top Customers by Revenue
SELECT 
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;
