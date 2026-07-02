CREATE OR ALTER VIEW vw_category_revenue_clean AS
SELECT 
    t.column2 AS category,
    SUM(f.total_price) AS Revenue
FROM fact_order_items f
JOIN dim_products p 
    ON f.product_id = p.product_id
JOIN product_category_name_translation t
    ON LEFT(p.product_category_name, 
            CHARINDEX('|', p.product_category_name + '|') - 1) = t.column1
GROUP BY t.column2;