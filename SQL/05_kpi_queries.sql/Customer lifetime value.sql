SELECT
    c.customer_unique_id,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(f.total_price) AS customer_lifetime_value
FROM fact_order_items f
JOIN dim_orders o 
    ON f.order_id = o.order_id
JOIN dim_customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_unique_id
ORDER BY customer_lifetime_value DESC;