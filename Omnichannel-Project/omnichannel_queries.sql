DROP TABLE IF EXISTS "Omnichannel1";
DROP TABLE IF EXISTS omichannel;
SELECT * FROM "Omnichannel";

--To Find Revenue by channel & month --
SELECT SUM(total_sales) AS total_revenue
FROM "Omnichannel";

--To show percentage % contribution by channel--
SELECT 
    channel,
    SUM(total_sales) AS revenue,
    ROUND(
        100.0 * SUM(total_sales) / SUM(SUM(total_sales)) OVER (),
        2
    ) AS percentage
FROM "Omnichannel"
GROUP BY channel;

--To find Monthly Trend + Peak/Dip Detection--
SELECT 
    year_month,
    SUM(total_sales) AS revenue,
    RANK() OVER (ORDER BY SUM(total_sales) DESC) AS rank_high,
    RANK() OVER (ORDER BY SUM(total_sales)) AS rank_low
FROM "Omnichannel"
GROUP BY year_month
ORDER BY year_month;

--To find Month-over-month growth %--
SELECT 
    year_month,
    SUM(total_sales) AS revenue,
    LAG(SUM(total_sales)) OVER (ORDER BY year_month) AS prev_month,
    ROUND(
        (SUM(total_sales) - LAG(SUM(total_sales)) OVER (ORDER BY year_month))
        * 100.0 / LAG(SUM(total_sales)) OVER (ORDER BY year_month),
        2
    ) AS growth_pct
FROM "Omnichannel"
GROUP BY year_month
ORDER BY year_month;

--To find Pareto Analysis (80/20 Rule)--
WITH product_sales AS (
    SELECT 
        product,
        SUM(total_sales) AS revenue
    FROM "Omnichannel"
    GROUP BY product
),
ranked AS (
    SELECT 
        product,
        revenue,
        SUM(revenue) OVER () AS total_revenue,
        SUM(revenue) OVER (ORDER BY revenue DESC) AS cumulative_revenue
    FROM product_sales
)
SELECT 
    product,
    revenue,
    ROUND(100.0 * revenue / total_revenue, 2) AS pct_contribution,
    ROUND(100.0 * cumulative_revenue / total_revenue, 2) AS cumulative_pct
FROM ranked
ORDER BY revenue DESC;

-- To find City Performance (Market insight)--
SELECT 
    city,
    SUM(total_sales) AS revenue,
    RANK() OVER (ORDER BY SUM(total_sales) DESC) AS rank
FROM "Omnichannel"
GROUP BY city
ORDER BY revenue DESC;

--  to find Channel Trend Over Time (Advanced insight)--
SELECT 
    year_month,
    channel,
    SUM(total_sales) AS revenue,
    ROUND(
        100.0 * SUM(total_sales) /
        SUM(SUM(total_sales)) OVER (PARTITION BY year_month),
        2
    ) AS monthly_share
FROM "Omnichannel"
GROUP BY year_month, channel
ORDER BY year_month;
