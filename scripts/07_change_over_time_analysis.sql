/*
===============================================================================
Change Over Time Analysis
===============================================================================
Purpose:
    - To track trends, growth, and changes in key metrics over time.
    - For time-series analysis and identifying seasonality.
    - To measure growth or decline over specific periods.

SQL Functions Used:
    - Date Functions: DATEPART(), DATETRUNC(), FORMAT()
    - Aggregate Functions: SUM(), COUNT(), AVG()
===============================================================================
*/

-- Analyse sales performance over time
-- Quick Date Function

SELECT
DATETRUNC(month, order_date) as order_date,
SUM(sales_amount) as total_sales,
COUNT(DISTINCT customer_key) as total_customers,
SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(MONTH, order_date) 
ORDER BY DATETRUNC(MONTH, order_date)



-- How many new customer were added each year

SELECT
DATETRUNC(year, create_date) as create_year,
COUNT(customer_key) as total_customer
FROM gold.dim_customers
GROUP BY DATETRUNC(year, create_date) 
ORDER BY DATETRUNC(year, create_date)


-- FORMAT()
-- Note: FORMAT() returns text, so ORDER BY sorts the months alphabetically
-- (Apr, Aug, Dec...), not in time order
SELECT
    FORMAT(order_date, 'yyyy-MMM') AS order_date,
    SUM(sales_amount)              AS total_sales,
    COUNT(DISTINCT customer_key)   AS total_customers,
    SUM(quantity)                  AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MMM')
ORDER BY FORMAT(order_date, 'yyyy-MMM');
