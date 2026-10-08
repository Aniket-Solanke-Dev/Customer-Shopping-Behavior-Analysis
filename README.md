# 🛍️ Customer Shopping Behavior Analysis

### SQL • PostgreSQL • Power BI • Data Analytics

An end-to-end data analytics project focused on understanding customer shopping behavior, purchasing patterns, customer segments, and revenue trends using SQL, PostgreSQL, and Power BI.

This project explores customer shopping data to uncover useful business insights, analyze purchasing preferences, and support data-driven decision-making through SQL queries and interactive visualizations.

---

## 📌 Project Overview

Understanding customer behavior is essential for businesses to improve customer engagement, identify purchasing trends, and make better business decisions.

In this project, I analyze a customer shopping behavior dataset using **PostgreSQL for data querying and analysis** and **Power BI for data visualization and dashboard development**.

The project covers customer segmentation, revenue analysis, product performance, customer demographics, shipping preferences, and subscription behavior.

## 🎯 Project Objectives

- Analyze customer purchasing patterns and spending behavior.
- Compare revenue across different customer demographics.
- Segment customers based on their previous purchases.
- Identify popular products and analyze product ratings.
- Understand shipping preferences and discount usage.
- Compare spending and revenue across subscription groups.
- Build a Power BI dashboard to communicate key findings.

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| PostgreSQL | Database management and SQL analysis |
| SQL | Data querying, aggregation, filtering, and segmentation |
| Power BI | Interactive dashboard and data visualization |
| Python | Dataset handling and preparation, where applicable |
| CSV | Source dataset format |

---

## 📂 Dataset Information

**Dataset:** `customer_shopping_behavior dataset.csv`

The dataset contains customer shopping records and attributes used to explore purchasing behavior.

Key columns include:

- `Customer ID`
- `Age`
- `Gender`
- `Item Purchased`
- `Category`
- `Purchase Amount (USD)`
- `Review Rating`
- `Shipping Type`
- `Discount Applied`
- `Subscription Status`
- `Previous Purchases`

*Note: Column names may vary depending on the original dataset and database import process.*

---

## 🔍 Analysis Performed

### 1. Customer Segmentation
- Classified customers into New, Returning, and Loyal segments using previous purchase counts.
- Examined the distribution of customers across segments.
- Practiced SQL conditional logic using `CASE WHEN`.

### 2. Revenue Analysis
- Calculated total revenue by gender.
- Analyzed revenue across age groups.
- Compared total revenue and average spending by subscription status.
- Used aggregate functions such as `SUM()`, `AVG()`, and `COUNT()`.

### 3. Product Analysis
- Identified frequently purchased products.
- Compared average product ratings.
- Explored product categories and customer preferences.
- Practiced ranking products using SQL window functions.

### 4. Shipping Analysis
- Compared average purchase amounts across shipping types.
- Examined Standard and Express shipping preferences.

### 5. Subscription Analysis
- Compared subscribed and non-subscribed customers.
- Analyzed customer counts, average spending, and total revenue by subscription status.

### 6. Customer Demographics
- Grouped customers into age categories.
- Compared purchasing behavior and revenue across demographic groups.
- Used SQL `CASE` expressions for age-group classification.

---

## 📊 Power BI Dashboard

The Power BI dashboard is designed to present customer shopping insights in an easy-to-understand visual format.

**Planned dashboard components:**

- Total Revenue
- Total Customers
- Average Purchase Amount
- Revenue by Gender
- Revenue by Age Group
- Customer Segmentation
- Subscription Status Analysis
- Product and Category Analysis
- Shipping Type Analysis

**Dashboard visuals:** KPI cards, bar charts, column charts, donut charts, and slicers for interactive exploration.

> Add your actual Power BI dashboard screenshot to this repository and embed it here once available.

Example:

`![Customer Shopping Behavior Dashboard](images/customer_behavior_dashboard.png)`

---

## 💡 Business Questions

This project explores questions such as:

1. Which age groups contribute the most revenue?
2. How does purchasing behavior differ by gender?
3. How are customers distributed across new, returning, and loyal segments?
4. Which products have the highest average ratings?
5. How do purchasing amounts differ by shipping type?
6. How does subscription status relate to average spending and total revenue?
7. Which products and categories are popular among customers?
8. How can customer purchase data support better business decisions?

---

## 🧠 SQL Concepts Used

- `SELECT`, `WHERE`, and `ORDER BY`
- `GROUP BY` and `HAVING`
- Aggregate functions: `SUM()`, `AVG()`, `COUNT()`
- Subqueries
- `CASE WHEN` conditional expressions
- Type casting and numeric calculations
- Window functions such as `ROW_NUMBER()`
- Customer segmentation and revenue aggregation

---

## 📁 Project Structure

```text
Customer-Shopping-Behavior-Analysis/
│
├── dataset/
│   └── customer_shopping_behavior dataset.csv
│
├── sql/
│   └── customer_behavior_analysis.sql
│
├── powerbi/
│   └── customer_behavior_dashboard.pbix
│
├── images/
│   └── customer_behavior_dashboard.png
│
└── README.md
```

*Suggested structure: include only the files and folders that exist in your repository.*

---

## ⚙️ How to Run the Project

### Step 1: Get the Dataset
Download or use the customer shopping behavior CSV dataset.

### Step 2: Import Data into PostgreSQL
Create a database and import the CSV data into a table named `Customer`. Ensure that the column names and data types match your SQL queries.

### Step 3: Perform SQL Analysis
Open the SQL scripts in PostgreSQL and execute the queries to explore customer segments, purchasing patterns, revenue, ratings, and shipping behavior.

### Step 4: Build the Power BI Dashboard
Connect Power BI to your data source, create the required measures and age-group categories, and build the dashboard visuals.

### Step 5: Explore the Insights
Use the dashboard filters and visuals to compare customer groups and investigate purchasing trends.

---

## 📈 Key Learnings

Through this project, I practiced:

- Writing analytical SQL queries in PostgreSQL.
- Working with customer and transactional data.
- Applying aggregation, filtering, subqueries, and window functions.
- Segmenting customers based on purchase history.
- Analyzing revenue and customer demographics.
- Designing Power BI dashboard visualizations.
- Translating business questions into data analysis tasks.

---

## 🔮 Future Improvements

- Add more interactive Power BI filters and drill-through pages.
- Create additional customer retention and purchasing frequency metrics.
- Automate data preparation and reporting with Python.
- Develop more detailed product and customer segmentation analyses.
- Add verified business recommendations based on the final results.

---

## 👨‍💻 Author

**Aniket Solanke**

Aspiring Data Analyst | Python & SQL Enthusiast | Computer Engineering Student

- GitHub: [Aniket Solanke](https://github.com/Aniket-Solanke)

---

⭐ If you find this project useful, consider giving it a star!

**Thanks for visiting my project!**


---

## ⭐ Support

If you find this project useful, consider giving the repository a star ⭐.

**Thank you for visiting my project!**
