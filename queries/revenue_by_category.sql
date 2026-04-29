-- Monthly revenue breakdown by product category
SELECT
    strftime('%Y-%m', o.order_purchase_timestamp) AS month,
    p.product_category_name AS category,
    SUM(oi.price) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE category IS NOT NULL
GROUP BY month, category
ORDER BY month, total_revenue DESC;
