CREATE VIEW vw_state_revenue AS
SELECT 
    c.customer_state,
    SUM(f.total_price) AS Revenue
FROM fact_order_items f
JOIN dim_orders o
    ON f.order_id = o.order_id
JOIN dim_customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_state;