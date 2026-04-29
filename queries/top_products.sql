-- Top-selling products with total units sold
SELECT
    p.product_id AS product_name, -- product_id used as name for display
    COUNT(oi.order_item_id) AS total_units,
    SUM(oi.price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_id
ORDER BY total_revenue DESC
LIMIT 20;
