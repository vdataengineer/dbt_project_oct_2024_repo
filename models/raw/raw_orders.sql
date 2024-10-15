 {{
    config(
        materialized='table' 
        
    )
 }}
--SELECT * FROM SUPER_MART_DB.RAW.ORDERS
SELECT * FROM {{ source('src', 'orders') }}