SELECT 
    c.customer_unique_id,
    
    DATEDIFF(
        day,
        MAX(o.order_purchase_timestamp),
        (SELECT MAX(order_purchase_timestamp) FROM dim_orders)
    ) AS Recency,

    COUNT(DISTINCT o.order_id) AS Frequency,

    SUM(f.total_price) AS Monetary

FROM fact_order_items f
JOIN dim_orders o
    ON f.order_id = o.order_id
JOIN dim_customers c
    ON o.customer_id = c.customer_id

GROUP BY c.customer_unique_id
ORDER BY Monetary DESC;