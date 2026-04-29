-- Customer retention cohort analysis
WITH first_orders AS (
    SELECT
        customer_id,
        MIN(order_purchase_timestamp) AS first_order_time
    FROM orders
    GROUP BY customer_id
),
cohorts AS (
    SELECT
        o.customer_id,
        strftime('%Y-%m', f.first_order_time) AS first_order_month,
        (strftime('%Y', o.order_purchase_timestamp) - strftime('%Y', f.first_order_time)) * 12 +
        (strftime('%m', o.order_purchase_timestamp) - strftime('%m', f.first_order_time)) AS months_since_first
    FROM orders o
    JOIN first_orders f ON o.customer_id = f.customer_id
)
SELECT
    first_order_month,
    months_since_first,
    COUNT(DISTINCT customer_id) AS retained_customers
FROM cohorts
GROUP BY first_order_month, months_since_first
ORDER BY first_order_month, months_since_first;
