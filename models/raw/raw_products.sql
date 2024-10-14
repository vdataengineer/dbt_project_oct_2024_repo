 {{
    config(
        materialized='table',
        database ='ANALYTICS_DB',
        schema ='RAW'
    )
 }}
 --SELECT * FROM SUPER_MART_DB.RAW.PRODUCTS
 SELECT * FROM {{ source('src', 'products') }}