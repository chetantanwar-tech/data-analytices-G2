SELECT * FROM retail_sales LIMIT 10;

SELECT 
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(sales) AS total_revenue,
    ROUND(AVG(sales)::numeric, 2) AS avg_order_value
FROM "retail_sales";

-- To Find Monthly Sales Trend--
SELECT 
    year,
    month,
    ROUND(SUM(sales)::numeric, 2) AS monthly_revenue
FROM retail_sales
GROUP BY year, month
ORDER BY year, month;

--Top 10 Customers By Revenue--
SELECT 
    customer_name,
    ROUND(SUM(sales)::numeric, 2) AS total_spent
FROM retail_sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;

--Sales By Customer Segments--
SELECT 
    segment,
    COUNT(DISTINCT customer_id) AS customers,
    ROUND(SUM(sales)::numeric, 2) AS revenue
FROM retail_sales
GROUP BY segment
ORDER BY revenue DESC;

--Sales by Region--
SELECT 
    region,
    ROUND(SUM(sales)::numeric, 2) AS total_revenue
FROM retail_sales
GROUP BY region
ORDER BY total_revenue DESC;

--Top Product Catogories--
SELECT 
    category,
    ROUND(SUM(sales)::numeric, 2) AS revenue
FROM retail_sales
GROUP BY category
ORDER BY revenue DESC;

--Sub Catogory Performances--
SELECT 
    sub_category,
    ROUND(SUM(sales)::numeric, 2) AS revenue
FROM retail_sales
GROUP BY sub_category
ORDER BY revenue DESC;

--Shipping Mode Analysis--
SELECT 
    ship_mode,
    COUNT(*) AS total_orders,
    ROUND(AVG(shipping_days)::numeric, 2) AS avg_shipping_days
FROM retail_sales
GROUP BY ship_mode;

--Repeat Customer Analysis--
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM retail_sales
GROUP BY customer_id
HAVING COUNT(order_id) > 1
ORDER BY total_orders DESC;