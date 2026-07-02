CREATE OR ALTER VIEW vw_customer_segments_detailed AS
SELECT 
    ca.customer_unique_id,
    ca.Frequency,
    ca.Monetary,
    CASE 
        WHEN ca.Monetary > 10000 THEN 'Big Spenders'
        WHEN ca.Frequency >= 4 THEN 'Champions'
        WHEN ca.Frequency >= 2 THEN 'Loyal Customers'
        ELSE 'At Risk'
    END AS Customer_Segment
FROM vw_customer_analysis ca;