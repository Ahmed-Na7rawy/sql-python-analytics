-- Customer retention cohort analysis
SELECT
    first_order_month,
    months_since_first,
    COUNT(DISTINCT customer_id) AS retained_customers
FROM (
    SELECT
        customer_id,
        strftime('%Y-%m', MIN(order_date) OVER (PARTITION BY customer_id)) AS first_order_month,
        CAST((julianday(order_date) - julianday(MIN(order_date) OVER (PARTITION BY customer_id))) / 30 AS INTEGER) AS months_since_first
    FROM orders
)
GROUP BY first_order_month, months_since_first
ORDER BY first_order_month, months_since_first;
