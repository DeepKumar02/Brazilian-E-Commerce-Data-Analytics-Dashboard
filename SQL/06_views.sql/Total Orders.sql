CREATE VIEW vw_total_orders AS
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM fact_order_items;