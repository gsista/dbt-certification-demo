with source as (

    select * from {{ ref('raw_customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name,
        lower(email) as email,
        cast(signup_date as date) as signup_date
    from source

)

select * from renamed