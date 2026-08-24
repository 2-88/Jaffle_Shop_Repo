With orders as (

    select
        ID as order_id,
        CUSTOMER as customer_id,
        ORDERED_AT as order_date,
        ORDER_TOTAL as amount

    from {{source('Jaffle_Source','Orders')}}

)

select*
from orders