SELECT 
    c.customer_unique_id,
    MAX(o.order_purchase_timestamp) AS last_purchase_date,
    DATEDIFF(
        day,
        MAX(o.order_purchase_timestamp),
        (SELECT MAX(order_purchase_timestamp) FROM dim_orders)
    ) AS recency_days
FROM dim_orders o
JOIN dim_customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_unique_id
ORDER BY recency_days;