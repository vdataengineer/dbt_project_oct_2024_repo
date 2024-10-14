 {{
    config(
        materialized='table',
        database ='ANALYTICS_DB',
        schema ='RAW'
    )
 }}
--SELECT * FROM SUPER_MART_DB.RAW.ORDERS
SELECT * FROM {{ source('src', 'orders') }}