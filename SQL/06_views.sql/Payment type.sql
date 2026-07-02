CREATE VIEW vw_payment_type_analysis AS
SELECT 
    payment_type,
    COUNT(*) AS Total_Orders,
    SUM(payment_value) AS Total_Value
FROM dim_payments
GROUP BY payment_type;