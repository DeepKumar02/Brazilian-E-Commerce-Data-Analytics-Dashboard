CREATE VIEW vw_category_revenue_clean AS
SELECT 
    t.column2 AS category,
    SUM(f.total_price) AS Revenue
FROM fact_order_items f
JOIN dim_products p 
    ON f.product_id = p.product_id
JOIN product_category_name_translation t
    ON p.product_category_name = t.column1
WHERE t.column1 <> 'product_category_name'
GROUP BY t.column2;