BULK INSERT dim_customers
FROM 'C:\E_Commerce_BI_Project\Cleaned_Data\customers_clean.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);