-- Top-selling products with total units sold
SELECT
    p.product_name,
    SUM(o.quantity) AS total_units,
    SUM(o.revenue) AS total_revenue
FROM orders o
JOIN products p USING (product_id)
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 20;
