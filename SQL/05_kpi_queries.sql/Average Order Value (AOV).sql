SELECT 
    SUM(total_price) / COUNT(DISTINCT order_id) AS Average_Order_Value
FROM fact_order_items;