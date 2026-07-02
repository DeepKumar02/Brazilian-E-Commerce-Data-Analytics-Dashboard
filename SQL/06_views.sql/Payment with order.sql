CREATE VIEW vw_payment_with_orders AS
SELECT 
    p.payment_type,
    o.order_purchase_timestamp,
    p.payment_value
FROM dim_payments p
JOIN dim_orders o 
ON p.order_id = o.order_id;