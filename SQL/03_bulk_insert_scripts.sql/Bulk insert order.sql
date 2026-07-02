BULK INSERT staging_orders
FROM 'C:\E_Commerce_BI_Project\Cleaned_Data\orders_clean.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);