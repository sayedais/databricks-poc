{% snapshot orders_snapshot %}

{{
    config(
      target_database='default',
      target_schema="default",
      unique_key='order_id',
      strategy='timestamp',
      updated_at='order_date',
      added_column='new_column'

    )
}}

select * from {{ ref('orders') }}

{% endsnapshot %}
