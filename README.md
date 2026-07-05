# 📊 E-Commerce Analytics Dashboard

> An end-to-end Business Intelligence project built using **Python, Pandas, SQL Server, and Power BI** to analyze e-commerce sales data and generate actionable business insights.

---

## 📌 Project Overview

This project demonstrates a complete Business Intelligence workflow, starting from raw e-commerce datasets to an interactive Power BI dashboard.

The objective was to transform raw transactional data into meaningful insights that help understand business performance, customer behavior, product sales, payment methods, and seller distribution.

The project includes:

- Data Cleaning using Python
- Database Design using SQL Server
- SQL Analysis and Views
- Interactive Power BI Dashboards
- Business Insights & KPI Analysis

---

# 🛠 Tech Stack

| Technology | Purpose |
|------------|----------|
| Python | Data Cleaning |
| Pandas | Data Preprocessing |
| SQL Server | Database Management |
| T-SQL | Data Analysis & Views |
| Power BI | Dashboard Development |
| DAX | KPI Measures |
| GitHub | Version Control |

---

# 📂 Dataset

**Source**

Brazilian E-Commerce Public Dataset by Olist

The project uses multiple datasets including:

- Customers
- Orders
- Products
- Order Items
- Sellers
- Payments
- Product Category Translation

These datasets were cleaned using Python before loading into SQL Server.

---

# 🔄 Project Workflow

```text
Raw Dataset (CSV)
        │
        ▼
Python (Pandas)
Data Cleaning & Preprocessing
        │
        ▼
Microsoft SQL Server
Database Design & SQL Views
        │
        ▼
Power BI
Interactive Dashboard
        │
        ▼
Business Insights
```

---

# 📈 Dashboard Pages

## 1️⃣ Executive Overview

![Executive Overview](Assets/Executive%20Overview.png)

Provides a summary of the business using key KPIs including:

- Total Revenue
- Total Orders
- Total Customers
- Average Order Value
- Monthly Revenue Trend
- Revenue by Category
- Customer Distribution

---

## 2️⃣ Revenue Trends & Performance

![Revenue Dashboard](Assets/Revenue%20Trends%20and%20Performance.png)

This dashboard analyzes:

- Monthly Revenue Trends
- Revenue by State
- Revenue Distribution
- Geographic Performance

---

## 3️⃣ Product Performance

![Product Dashboard](Assets/Product%20Performace.png)

Key analyses include:

- Top Product Categories
- Revenue Ranking
- Category Contribution
- Product Performance Comparison

---

## 4️⃣ Customer Insights

![Customer Dashboard](Assets/Customer%20Insights.png)

This dashboard focuses on:

- Customer Segmentation
- Customer Lifetime Value
- Revenue by Segment
- Customer Behavior

---

## 5️⃣ Payment & Seller Details

![Payment Dashboard](Assets/Payments%20and%20Sellers%20Details.png)

Provides analysis of:

- Payment Methods
- Seller Distribution
- Revenue Trend
- Geographic Seller Analysis

---

# 📊 Key Performance Indicators (KPIs)

The dashboard includes the following business metrics:

- 💰 Total Revenue
- 📦 Total Orders
- 👥 Total Customers
- 💳 Average Order Value
- 📈 Monthly Revenue Trend
- 🛍 Top Product Categories
- ⭐ Customer Segmentation
- 🌍 Seller Distribution

---

# 🔍 Key Business Insights

- Generated **$15.22 Million** in total revenue.
- Processed approximately **95,000 orders**.
- Analyzed purchasing behavior of over **92,000 customers**.
- Health & Beauty was the highest revenue-generating category.
- Credit Card was the most preferred payment method.
- At Risk Customers represented the largest customer segment.
- Seller locations were concentrated in selected regions.

---

# 🗄 Database Design

The SQL Server database follows a Star Schema consisting of:

### Dimension Tables

- dim_customers
- dim_orders
- dim_products
- dim_payments
- dim_sellers

### Fact Table

- fact_order_items

SQL Views were created to simplify business analysis and improve dashboard performance.

---

# 🧹 Data Cleaning

Python and Pandas were used for preprocessing the raw dataset.

The cleaning process included:

- Removing duplicate records
- Handling missing values
- Standardizing text fields
- Converting data types
- Verifying data consistency

---

# 📁 Repository Structure

```
Assets/
├── Customer Insights.png
├── Executive Overview.png
├── Payments and Sellers Details.png
├── Product Performace.png
└── Revenue Trends and Performance.png

Cleaned_Data/

Power BI/

Python/

Raw_Dataset/

SQL/
```

---

# 🚀 Future Improvements

Possible future enhancements include:

- Real-time dashboard integration
- Sales forecasting using Machine Learning
- Customer churn prediction
- AI-based recommendation system
- Cloud deployment using Azure

---

# 🎯 Skills Demonstrated

- Data Cleaning
- Data Analysis
- SQL Query Writing
- Database Design
- Business Intelligence
- Dashboard Development
- KPI Design
- Customer Segmentation
- Data Visualization

---

# 👨‍💻 Author

**Deep Kumar**

Bachelor of Computer Applications (BCA)

AISECT University, Hazaribagh

📧 Email: deepkumar.tech01@gmail.com


---

## ⭐ If you found this project useful, consider giving it a Star.
