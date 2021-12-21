with source_store_sales as(
    select * from {{ source('data_source','raw_orders') }}
),

final as (
    select * from source_store_sales
)


select * from final