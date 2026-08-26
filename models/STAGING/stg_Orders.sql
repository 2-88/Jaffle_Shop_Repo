With orders as (

    select
        ID as order_id,
        CUSTOMER as customer_id,
        ORDERED_AT as loaded_at,
        ORDER_TOTAL as amount

    from {{source('Jaffle_Source','Orders')}}

)

select*
from orders