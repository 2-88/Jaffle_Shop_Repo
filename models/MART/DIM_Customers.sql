{{ config(
    schema='jaffle_shop_Schema'
) }}



With customer_orders as (

    select
        order_id, customer_id,

        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(order_id) as number_of_orders,
        amount
       

       
    from {{ref('stg_Orders')}}

    group by customer_id, amount, order_id

),


final as (

    select
       customer_orders.order_id, customers.customer_id,
        customers.customer_name,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders,
        customer_orders.amount

    from {{ref('stg_Customers')}} as customers

    left join customer_orders using (customer_id)

)

select * from final



