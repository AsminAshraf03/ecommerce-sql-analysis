# E-Commerce SQL Analysis

## 📌 Project Overview
This project analyzes the Brazilian E-Commerce Public Dataset by Olist using SQL to uncover insights around sales performance, customer behavior, delivery logistics, and product trends. The goal was to practice writing business-focused SQL queries and translate raw transactional data into actionable insights.

## 🗂️ Dataset
- **Name:** Brazilian E-Commerce Public Dataset by Olist
- **Source:** [Kaggle — olistbr/brazilian-ecommerce](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
- **Description:** Real, anonymized commercial data of 100,000 orders placed at the Olist Store between 2016–2018 across multiple marketplaces in Brazil, covering order status, price, payment, freight performance, customer location, product attributes, and customer reviews.
- **Tables used:** orders, order_items, customers, sellers, payments, products
- **Note:** The dataset is not included in this repository due to size. Download it directly from the Kaggle link above.

## ❓ Business Questions Answered
1. Total number of orders
2. Total revenue
3. Average order value
4. Product category with the highest revenue
5. Most used payment method
6. Customer state with the highest number of orders
7. Seller state with the highest revenue
8. Monthly sales trend
9. Month-over-month revenue growth rate
10. Top 5 most expensive products sold
11. Average delivery time
12. Number of late deliveries
13. Day of the week with the highest orders
14. Year with the highest sales
15. Rank product categories by revenue

## 🛠️ Tools Used
- SQL (T-SQL / Microsoft SQL Server)
- SQL Server Management Studio (SSMS)

## 🔍 Key Insights
- Bed, Bath & Table (cama_mesa_banho) was the top-performing product category, generating over 1.69 million in total sales.
- Credit card was the most used payment method, accounting for 83,706 transactions.
- Average delivery time was 12 days, with 8,876 orders delivered late.

## 📁 Files in this Repository
- `queries.sql` — All SQL queries with comments explaining each
- `README.md` — Project overview and findings
  
## 🚀 How to Run
1. Download the dataset from the Kaggle link above
2. Import it into your SQL environment
3. Run `queries.sql` to reproduce the analysis
4. Refer to comments above each query for context

## 📫 Contact
Asmin Asharaf | https://www.linkedin.com/in/asmin-ashraf | asminashraf03@gmail.com
