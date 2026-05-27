with customers as(

    select ID as customers,
    FIRST_NAME,
    LAST_NAME

    from dbt_pilot.jaffle_shop_customers
),

orders as (
    select
        ID as order_id,
        USER_ID as customer_id,
        ORDER_DATE,
        STATUS,

    from dbt_pilot.jaffle_shop_orders
)