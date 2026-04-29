-- Revenue breakdown by customer state
SELECT
    c.customer_state AS state_code,
    SUM(oi.price) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY state_code
ORDER BY total_revenue DESC;
