SELECT 
    customer_unique_id,
    Recency,
    Frequency,
    Monetary,

CASE 
    WHEN Recency <= 30 AND Frequency >= 3 THEN 'Champions'
    WHEN Recency <= 90 AND Frequency >= 2 THEN 'Loyal Customers'
    WHEN Monetary > 5000 THEN 'Big Spenders'
    WHEN Recency > 180 THEN 'At Risk'
    ELSE 'Regular Customers'
END AS Customer_Segment

FROM (
    SELECT 
        c.customer_unique_id,
        
        DATEDIFF(
            day,
            MAX(o.order_purchase_timestamp),
            (SELECT MAX(order_purchase_timestamp) FROM dim_orders)
        ) AS Recency,

        COUNT(DISTINCT o.order_id) AS Frequency,

        SUM(f.total_price) AS Monetary

    FROM fact_order_items f
    JOIN dim_orders o
        ON f.order_id = o.order_id
    JOIN dim_customers c
        ON o.customer_id = c.customer_id

    GROUP BY c.customer_unique_id
) AS rfm
ORDER BY Monetary DESC;