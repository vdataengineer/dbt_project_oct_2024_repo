 {{
    config(
        materialized='table' 
         
    )
 }}
 --SELECT * FROM SUPER_MART_DB.RAW.PRODUCTS
 SELECT * FROM {{ source('src', 'products') }}