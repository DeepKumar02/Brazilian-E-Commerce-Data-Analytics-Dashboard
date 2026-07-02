SELECT TOP 10
    c.customer_unique_id,
    SUM(f.total_price) AS Customer_Revenue
FROM fact_order_items f
JOIN dim_orders o
    ON f.order_id = o.order_id
JOIN dim_customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_unique_id
ORDER BY Customer_Revenue DESC;