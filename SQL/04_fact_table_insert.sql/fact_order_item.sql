INSERT INTO fact_order_items (
    order_id,
    product_id,
    price,
    freight_value,
    total_price
)
SELECT
    s.order_id,
    s.product_id,
    s.price,
    s.freight_value,
    s.total_price
FROM staging_order_items s
INNER JOIN dim_products p
    ON s.product_id = p.product_id;