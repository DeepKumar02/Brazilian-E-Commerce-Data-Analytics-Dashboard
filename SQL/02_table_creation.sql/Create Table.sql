USE E_Commerce_BI;
GO

-- Customers Dimension
CREATE TABLE dim_customers (
    customer_id NVARCHAR(50) PRIMARY KEY,
    customer_unique_id NVARCHAR(50),
    customer_city NVARCHAR(100),
    customer_state NVARCHAR(50)
);

-- Orders Dimension
CREATE TABLE dim_orders (
    order_id NVARCHAR(50) PRIMARY KEY,
    customer_id NVARCHAR(50),
    order_purchase_timestamp DATETIME,
    order_delivered_customer_date DATETIME,
    order_status NVARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES dim_customers(customer_id)
);

-- Products Dimension
CREATE TABLE dim_products (
    product_id NVARCHAR(50) PRIMARY KEY,
    product_category_name NVARCHAR(100)
);

-- Payments Dimension
CREATE TABLE dim_payments (
    order_id NVARCHAR(50),
    payment_type NVARCHAR(50),
    payment_installments INT,
    payment_value FLOAT
);

-- Fact Table
CREATE TABLE fact_order_items (
    order_id NVARCHAR(50),
    product_id NVARCHAR(50),
    price FLOAT,
    freight_value FLOAT,
    total_price FLOAT,
    FOREIGN KEY (order_id) REFERENCES dim_orders(order_id),
    FOREIGN KEY (product_id) REFERENCES dim_products(product_id)
);