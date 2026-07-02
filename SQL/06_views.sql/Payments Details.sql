CREATE VIEW vw_payment_kpi AS
SELECT 
    SUM(payment_value) AS Total_Payment,
    AVG(payment_value) AS Avg_Payment,
    COUNT(*) AS Total_Transactions
FROM dim_payments;