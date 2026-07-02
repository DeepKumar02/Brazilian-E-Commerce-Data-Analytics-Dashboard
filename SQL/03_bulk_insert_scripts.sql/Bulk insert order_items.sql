BULK INSERT staging_order_items
FROM 'C:\E_Commerce_BI_Project\Cleaned_Data\order_items_clean_pipe_utf16.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    DATAFILETYPE = 'widechar',
    TABLOCK
);