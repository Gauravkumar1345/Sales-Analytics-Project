CREATE DATABASE sales_project;
USE sales_project;

-- 1. How many total orders are present in the dataset?
SELECT COUNT(*) AS Total_Orders
FROM sales_data;

-- 2. What is the total revenue generated from all sales?
SELECT SUM(Net_Sales) AS Total_Revenue
FROM sales_data;

-- 3. What is the average order value?
SELECT AVG(Net_Sales) AS Avg_Order_Value
FROM sales_data;

-- 4. Which region generates the highest total sales?
SELECT 
    Region,
    SUM(Net_Sales) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 5. Which category performs best in terms of revenue?
SELECT 
    Category,
    SUM(Net_Sales) AS Category_Sales
FROM sales_data
GROUP BY Category
ORDER BY Category_Sales DESC;

-- 6. Which product contributes the most to total revenue?
SELECT 
    Product,
    SUM(Net_Sales) AS Product_Revenue
FROM sales_data
GROUP BY Product
ORDER BY Product_Revenue DESC
LIMIT 1;

-- 7. What are the top 5 products by sales?
SELECT 
    Product,
    SUM(Net_Sales) AS Sales
FROM sales_data
GROUP BY Product
ORDER BY Sales DESC
LIMIT 5;

-- 8. What is the month-wise sales trend?
SELECT 
    MONTH(Order_Date) AS Month,
    SUM(Net_Sales) AS Monthly_Sales
FROM sales_data
GROUP BY Month
ORDER BY Month;

-- 9. Which month recorded the highest sales?
SELECT 
    MONTH(Order_Date) AS Month,
    SUM(Net_Sales) AS Sales
FROM sales_data
GROUP BY Month
ORDER BY Sales DESC
LIMIT 1;

-- 10. What is the average customer rating per category?
SELECT 
    Category,
    ROUND(AVG(Customer_Rating), 2) AS Avg_Rating
FROM sales_data
GROUP BY Category;

-- 11. How many orders were placed in each region?
SELECT 
    Region,
    COUNT(*) AS Order_Count
FROM sales_data
GROUP BY Region;

-- 12. What are the high-value orders (Net Sales > 100000)?
SELECT *
FROM sales_data
WHERE Net_Sales > 100000;

-- 13. What is the total discount amount given?
SELECT 
    SUM(Discount_Amount) AS Total_Discount_Given
FROM sales_data;

-- 14. Which region gives the highest discount overall?
SELECT 
    Region,
    SUM(Discount_Amount) AS Total_Discount
FROM sales_data
GROUP BY Region
ORDER BY Total_Discount DESC;

-- 15. What is the average quantity sold per order?
SELECT 
    AVG(Quantity) AS Avg_Quantity_Per_Order
FROM sales_data;

