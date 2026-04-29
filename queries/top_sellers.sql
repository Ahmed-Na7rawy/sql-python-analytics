-- Top sellers by revenue
SELECT
    s.seller_id,
    s.seller_city,
    s.seller_state,
    SUM(oi.price) AS total_revenue,
    COUNT(oi.order_id) AS total_orders
FROM sellers s
JOIN order_items oi ON s.seller_id = oi.seller_id
GROUP BY s.seller_id
ORDER BY total_revenue DESC
LIMIT 10;
