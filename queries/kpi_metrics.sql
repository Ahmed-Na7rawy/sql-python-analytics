-- High-level business KPIs
SELECT
    (SELECT COUNT(order_id) FROM orders) AS total_orders,
    (SELECT SUM(payment_value) FROM order_payments) AS total_revenue,
    (SELECT COUNT(DISTINCT customer_id) FROM customers) AS total_customers,
    (SELECT COUNT(product_id) FROM products) AS total_products;
