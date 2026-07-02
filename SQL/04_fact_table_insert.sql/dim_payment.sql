INSERT INTO dim_payments (
    order_id,
    payment_type,
    payment_installments,
    payment_value
)
SELECT
    order_id,
    payment_type,
    payment_installments,
    payment_value
FROM staging_payments;