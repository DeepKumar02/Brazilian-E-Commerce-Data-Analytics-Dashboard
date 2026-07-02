SELECT 
    Customer_Segment,
    COUNT(*) AS Number_of_Customers
FROM (
    SELECT 
        c.customer_unique_id,
        
        DATEDIFF(
            day,
            MAX(o.order_purchase_timestamp),
            (SELECT MAX(order_purchase_timestamp) FROM dim_orders)
        ) AS Recency,

        COUNT(DISTINCT o.order_id) AS Frequency,
        SUM(f.total_price) AS Monetary,

        CASE 
            WHEN DATEDIFF(day, MAX(o.order_purchase_timestamp),
                 (SELECT MAX(order_purchase_timestamp) FROM dim_orders)) <= 30 
                 AND COUNT(DISTINCT o.order_id) >= 3 
                 THEN 'Champions'

            WHEN DATEDIFF(day, MAX(o.order_purchase_timestamp),
                 (SELECT MAX(order_purchase_timestamp) FROM dim_orders)) <= 90 
                 AND COUNT(DISTINCT o.order_id) >= 2 
                 THEN 'Loyal Customers'

            WHEN SUM(f.total_price) > 5000 
                 THEN 'Big Spenders'

            WHEN DATEDIFF(day, MAX(o.order_purchase_timestamp),
                 (SELECT MAX(order_purchase_timestamp) FROM dim_orders)) > 180 
                 THEN 'At Risk'

            ELSE 'Regular Customers'
        END AS Customer_Segment

    FROM fact_order_items f
    JOIN dim_orders o ON f.order_id = o.order_id
    JOIN dim_customers c ON o.customer_id = c.customer_id

    GROUP BY c.customer_unique_id
) AS segments
GROUP BY Customer_Segment
ORDER BY Number_of_Customers DESC;