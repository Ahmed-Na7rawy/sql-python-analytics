-- Monthly revenue breakdown by product category
SELECT
    strftime('%Y-%m', order_date) AS month,
    category,
    SUM(revenue) AS total_revenue
FROM orders
JOIN products USING (product_id)
GROUP BY month, category
ORDER BY month, total_revenue DESC;
