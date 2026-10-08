SELECT * FROM "Customer" LIMIT 20;

SELECT "Gender", SUM("Purchase Amount (USD)") AS revenue
FROM "Customer"
GROUP BY "Gender";

SELECT "Customer ID", "Purchase Amount (USD)"
FROM "Customer"
WHERE "Discount Applied" = 'Yes'
AND "Purchase Amount (USD)" >= (
    SELECT AVG("Purchase Amount (USD)")
    FROM "Customer"
);


SELECT "Item Purchased",
       ROUND(AVG("Review Rating"::numeric), 2) AS "Average product rating"
FROM "Customer"
GROUP BY "Item Purchased"
ORDER BY AVG("Review Rating"::numeric) DESC
LIMIT 5;

SELECT "Shipping Type",
       ROUND(AVG("Purchase Amount (USD)"::numeric), 2) AS "Average Purchase Amount"
FROM "Customer"
WHERE "Shipping Type" IN ('Standard', 'Express')
GROUP BY "Shipping Type";


SELECT  "Subscription Status",
    COUNT("Customer ID") AS "Total Customer",
    ROUND(AVG("Purchase Amount (USD)"::numeric), 2) AS "Average Spend", 
    SUM("Purchase Amount (USD)") AS "Total Revenue"
FROM "Customer"
GROUP BY "Subscription Status"
ORDER BY "Total Revenue" , "Average Spend" DESC;

SELECT 
    "Item Purchased",
    ROUND( 100.0 * SUM( CASE  WHEN "Discount Applied" = 'Yes' THEN 1
        ELSE 0 END ) / COUNT(*),2) AS "Discount Purchase Percentage"
FROM "Customer"
GROUP BY "Item Purchased"
ORDER BY "Discount Purchase Percentage" DESC
LIMIT 5;

WITH customer_type AS (
    SELECT 
        "Customer ID",
        "Previous Purchases",
        CASE
            WHEN "Previous Purchases" = 1 THEN 'New'
            WHEN "Previous Purchases" BETWEEN 2 AND 10 THEN 'Returning'
            ELSE 'Loyal'
        END AS "Customer_Segment"
    FROM "Customer"
)
SELECT 
    "Customer_Segment",
    COUNT(*) AS "Number of Customer"
FROM customer_type
GROUP BY "Customer_Segment";



WITH item_counts AS (
    SELECT
        "Category",
        "Item Purchased",
        COUNT("Customer ID") AS "Total Orders"
    FROM "Customer"
    GROUP BY "Category", "Item Purchased"
),
ranked_products AS (
    SELECT
        "Category",
        "Item Purchased",
        "Total Orders",
        ROW_NUMBER() OVER (
            PARTITION BY "Category"
            ORDER BY "Total Orders" DESC
        ) AS "Item Rank"
    FROM item_counts
)
SELECT
    "Item Rank",
    "Category",
    "Item Purchased",
    "Total Orders"
FROM ranked_products
WHERE "Item Rank" <= 3
ORDER BY "Category", "Item Rank";



SELECT
    "Subscription Status",
    COUNT("Customer ID") AS "Repeat Buyer"
FROM "Customer"
WHERE "Previous Purchases" > 5
GROUP BY "Subscription Status";



SELECT 
    CASE
        WHEN "Age" BETWEEN 18 AND 25 THEN 'young adult'
        WHEN "Age" BETWEEN 26 AND 35 THEN 'middle aged'
        WHEN "Age" BETWEEN 36 AND 50 THEN 'adult'
        ELSE 'senior'
    END AS "age_group",
    
    SUM("Purchase Amount (USD)") AS "Total_revenue"

FROM "Customer"

GROUP BY
    CASE
        WHEN "Age" BETWEEN 18 AND 25 THEN 'young adult'
        WHEN "Age" BETWEEN 26 AND 35 THEN 'middle aged'
        WHEN "Age" BETWEEN 36 AND 50 THEN 'adult'
        ELSE 'senior'
    END

ORDER BY "Total_revenue" DESC;












