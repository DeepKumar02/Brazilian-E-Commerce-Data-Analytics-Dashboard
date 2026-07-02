INSERT INTO dim_products (
    product_id,
    product_category_name
)
SELECT
    product_id,
    product_category_name
FROM staging_products;