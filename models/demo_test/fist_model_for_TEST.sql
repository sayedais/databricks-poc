

{{ config(
    
    materialized='table') }}

with source_data as (

    select 1 as id,
    'SAYED' as name_t,
    'repo' as owner_t

)

select *
from source_data


