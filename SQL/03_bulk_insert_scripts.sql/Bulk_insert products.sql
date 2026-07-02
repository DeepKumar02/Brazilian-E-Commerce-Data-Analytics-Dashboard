BULK INSERT staging_products
FROM 'C:\E_Commerce_BI_Project\Cleaned_Data\products_clean_pipe_utf16.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    DATAFILETYPE = 'widechar',
    TABLOCK
);