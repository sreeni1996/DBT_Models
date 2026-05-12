{{
    config(
        materialized='incremental',
        unique_key='PRODUCT_ID',
        incremental_strategy='merge'
    )
}}

select *
from PROD.PAYROLL_RAW.PRODUCTS

{% if is_incremental() %}
WHERE inserted_at > (
    SELECT MAX(inserted_at)
    FROM {{ this }}
)
{% endif %}



