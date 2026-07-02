CREATE OR ALTER VIEW vw_segment_revenue AS
SELECT 
    s.Customer_Segment,
    SUM(f.total_price) AS Revenue
FROM fact_order_items f
JOIN dim_orders o 
    ON f.order_id = o.order_id
JOIN dim_customers c 
    ON o.customer_id = c.customer_id
JOIN vw_customer_segments_detailed s 
    ON c.customer_unique_id = s.customer_unique_id
GROUP BY s.Customer_Segment;