-- Top cities by customer count
SELECT
    customer_city,
    customer_state,
    COUNT(customer_id) AS total_customers
FROM customers
GROUP BY customer_city, customer_state
ORDER BY total_customers DESC
LIMIT 15;
