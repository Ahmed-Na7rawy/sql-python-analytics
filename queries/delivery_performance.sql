-- Logistics performance: Delivery time and delays
SELECT
    strftime('%Y-%m', order_purchase_timestamp) AS month,
    AVG(julianday(order_delivered_customer_date) - julianday(order_purchase_timestamp)) AS avg_delivery_time,
    AVG(julianday(order_delivered_customer_date) - julianday(order_estimated_delivery_date)) AS avg_delay
FROM orders
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL
GROUP BY month
ORDER BY month;
