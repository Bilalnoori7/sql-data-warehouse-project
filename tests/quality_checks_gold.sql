/*
===============================================================================
Data Quality Validation Script
===============================================================================
Purpose:
    Validates data integrity and consistency in the Gold Layer by checking:
    - Unique surrogate keys in dimension tables
    - Referential integrity between fact and dimension tables
    - Data model relationship validation

Instructions:
    - Review and fix any issues identified by these checks
    - Expected result: All queries should return zero rows
===============================================================================
*/

-- ====================================================================
-- Checking 'gold.dim_customers'
-- ====================================================================
-- Check for Uniqueness of Customer Key in gold.dim_customers
-- Expectation: No results 
SELECT 
    customer_key,  -- Shows the customer key
    COUNT(*) AS duplicate_count -- Shows how many times the customer key appear
FROM gold.dim_customers -- Table we are querying
GROUP BY customer_key  -- Groups identical customer_keys together and counts them
HAVING COUNT(*) > 1; -- Displays the customer_keys where the count is more than one

-- ====================================================================
-- Checking 'gold.product_key'
-- ====================================================================
-- Check for Uniqueness of Product Key in gold.dim_products
-- Expectation: No results 
SELECT 
    product_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY product_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Checking 'gold.fact_sales'
-- ====================================================================
-- Check the data model connectivity between fact and dimensions
SELECT * 
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
ON p.product_key = f.product_key
WHERE p.product_key IS NULL OR c.customer_key IS NULL  
