INSERT INTO dim_orders (
    order_id,
    customer_id,
    order_purchase_timestamp,
    order_delivered_customer_date,
    order_status
)
SELECT
    order_id,
    customer_id,
    TRY_CONVERT(DATETIME, order_purchase_timestamp),
    TRY_CONVERT(DATETIME, order_delivered_customer_date),
    order_status
FROM staging_orders;