-- Payment method distribution
SELECT
    payment_type,
    COUNT(order_id) AS total_orders,
    SUM(payment_value) AS total_value
FROM order_payments
GROUP BY payment_type
ORDER BY total_value DESC;
