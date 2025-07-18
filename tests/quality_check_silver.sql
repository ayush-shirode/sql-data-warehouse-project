-- Check for NULLS or Duplicate in Primary Key
-- Expectation: No Result

SELECT 
cst_id,
COUNT(*) AS id_count
FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL

-- Checking for White Spaces

SELECT
cst_firstname
FROM bronze.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname)

-- Data Normalisation (Converting coded value to readable value)

