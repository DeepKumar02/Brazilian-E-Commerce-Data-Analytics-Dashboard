CREATE VIEW vw_monthly_revenue AS
SELECT 
    YEAR(o.order_purchase_timestamp) AS Year,
    MONTH(o.order_purchase_timestamp) AS Month,
    SUM(f.total_price) AS Monthly_Revenue
FROM fact_order_items f
JOIN dim_orders o
    ON f.order_id = o.order_id
GROUP BY 
    YEAR(o.order_purchase_timestamp),
    MONTH(o.order_purchase_timestamp);