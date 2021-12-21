{% test all_positive(model, column_name) %}

with validation as (

    select
        {{ column_name }} as even_field

    from {{ model }}

),

validation_errors as (

    select
        even_field

    from validation
    -- if this is true, then even_field is actually negetive!
    where even_field < 0

)

select *
from validation_errors

{% endtest %}