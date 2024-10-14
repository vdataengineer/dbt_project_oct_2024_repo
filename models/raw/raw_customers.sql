 {{
    config(
        materialized='table',
        database ='ANALYTICS_DB',
        schema ='RAW'
    )
 }}
--SELECT * FROM SUPER_MART_DB.RAW.CUSTOMERS
SELECT * 
FROM {{ source('src', 'customers') }}