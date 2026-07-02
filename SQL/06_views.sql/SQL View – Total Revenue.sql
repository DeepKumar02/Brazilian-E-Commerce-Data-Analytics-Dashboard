CREATE VIEW vw_total_revenue AS
SELECT 
    SUM(total_price) AS Total_Revenue
FROM fact_order_items;