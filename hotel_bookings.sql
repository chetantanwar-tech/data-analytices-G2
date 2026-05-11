SELECT *
FROM hotel_bookings
LIMIT 10;

-- #Overall Cancellation Rate
SELECT
    ROUND(
        SUM(is_canceled) * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate
FROM hotel_bookings;

-- Cancellation by Customer Type, which customer segemnent is risky.
SELECT
    customer_type,

    COUNT(*) AS total_bookings,

    SUM(is_canceled) AS canceled_bookings,

    ROUND(
        SUM(is_canceled) * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate

FROM hotel_bookings

GROUP BY customer_type

ORDER BY cancellation_rate DESC;

-- Monthly Demand Analysis,check which month gets most booking.
SELECT
    arrival_date_month,

    COUNT(*) AS total_bookings

FROM hotel_bookings

GROUP BY arrival_date_month

ORDER BY total_bookings DESC;

-- Seasonal Pricing Trend,How does ADR vary seasonally.
SELECT
    arrival_date_month,
    ROUND(AVG(adr)::numeric, 2) AS average_adr
FROM hotel_bookings
GROUP BY arrival_date_month
ORDER BY average_adr DESC;

-- Lead Time Risk Analysis,is long-term bookings cancels more.
SELECT
    CASE
        WHEN lead_time < 30 THEN 'Short Lead'
        WHEN lead_time < 90 THEN 'Medium Lead'
        ELSE 'Long Lead'
    END AS booking_window,

    COUNT(*) AS total_bookings,

    ROUND(
        SUM(is_canceled) * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate

FROM hotel_bookings

GROUP BY booking_window;

-- Market Segment Performance
SELECT
    market_segment,

    COUNT(*) AS bookings,

    ROUND(AVG(adr)::numeric, 2) AS avg_adr,

    ROUND(
        (SUM(is_canceled) * 100.0 / COUNT(*))::numeric,
        2
    ) AS cancellation_rate

FROM hotel_bookings

GROUP BY market_segment

ORDER BY cancellation_rate DESC;

-- Top Revenue Months
SELECT
    arrival_date_month,

    ROUND(
        SUM(adr * total_nights)::numeric,
        2
    ) AS estimated_revenue

FROM hotel_bookings

WHERE is_canceled = 0

GROUP BY arrival_date_month

ORDER BY estimated_revenue DESC;

-- Deposit Type Impact
SELECT
    deposit_type,

    COUNT(*) AS bookings,

    ROUND(
        SUM(is_canceled) * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate

FROM hotel_bookings

GROUP BY deposit_type;

-- Country-wise Booking Analysis
SELECT
    country,

    COUNT(*) AS bookings,

    ROUND(AVG(adr)::numeric, 2) AS avg_adr

FROM hotel_bookings

GROUP BY country

ORDER BY bookings DESC

LIMIT 10;

-- Customer Commitment Indicators,Analyze special requests & parking
SELECT
    required_car_parking_spaces,

    ROUND(
        SUM(is_canceled) * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate

FROM hotel_bookings

GROUP BY required_car_parking_spaces

ORDER BY required_car_parking_spaces;
