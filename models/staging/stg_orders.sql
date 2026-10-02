with source as (

    select * from {{ ref('raw_orders') }}

),

renamed as (

    select
        id as order_id,
        customer_id,
        cast(order_date as date) as order_date,
        status,
        cast(amount as decimal(10, 2)) as amount
    from source

)

select * from renamed