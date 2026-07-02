SELECT 
    COUNT(DISTINCT customer_unique_id) AS Total_Customers,
    COUNT(customer_unique_id) AS Total_Purchases
FROM dim_customers;