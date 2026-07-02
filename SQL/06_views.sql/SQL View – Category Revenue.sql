CREATE VIEW vw_category_revenue AS
SELECT 
    p.product_category_name,
    SUM(f.total_price) AS Revenue
FROM fact_order_items f
JOIN dim_products p
    ON f.product_id = p.product_id
GROUP BY p.product_category_name;