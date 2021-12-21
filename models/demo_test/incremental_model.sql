

{{ config(
    materialized='incremental'
) }}


with incremental_model as(
    select * from {{ ref('raw_orders')}}
),

final as (
    select * from incremental_model
)

select *
from final


{% if is_incremental() %}
  where user_id >= 10 and user_id <30
{% endif %}

