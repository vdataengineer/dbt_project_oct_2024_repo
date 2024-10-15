 
--SELECT * FROM SUPER_MART_DB.RAW.CUSTOMERS
SELECT * 
FROM {{ source('src', 'customers') }}