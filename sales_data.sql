
SELECT * FROM sales_data LIMIT 10;

-- total sales
SELECT SUM("sales") AS total_sales
FROM sales_data;

-- sales by category
SELECT category, SUM("sales") AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;

-- sales by region
SELECT region, SUM(sales) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;

-- sales customer segment
SELECT segment, SUM(sales) AS total_sales
FROM sales_data
GROUP BY segment
ORDER BY total_sales DESC;

-- monthly sales trends
SELECT month, SUM(sales) AS total_sales
FROM (
    SELECT EXTRACT(MONTH FROM order_date) AS month, sales
    FROM sales_data
) t
GROUP BY month
ORDER BY month;

-- yearly sales trend
SELECT year, SUM(sales) AS total_sales
FROM (
SELECT EXTRACT(YEAR FROM order_date) AS year, sales
       FROM sales_data
)t
GROUP BY year
ORDER BY year;

-- top sub-categories product
SELECT sub_category, SUM(sales) AS total_sales
FROM sales_data
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 10;

-- shipping performance
SELECT region,
       AVG(ship_date - order_date) AS avg_shipping_days
FROM sales_data
GROUP BY region
ORDER BY avg_shipping_days;

-- top 5 customer by sales
SELECT customer_id, SUM(sales) AS total_sales
FROM sales_data
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;