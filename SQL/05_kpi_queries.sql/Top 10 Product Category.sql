SELECT TOP 10
    LEFT(product_category_name, 
         CHARINDEX('|', product_category_name + '|') - 1) AS product_category_name,
    SUM(f.total_price) AS Revenue
FROM fact_order_items f
JOIN dim_products p
    ON f.product_id = p.product_id
GROUP BY 
    LEFT(product_category_name, 
         CHARINDEX('|', product_category_name + '|') - 1)
ORDER BY Revenue DESC;