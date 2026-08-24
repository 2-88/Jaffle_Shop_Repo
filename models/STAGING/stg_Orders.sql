With orders as (

    select
        ID as order_id,
        CUSTOMER as customer_id,
        ORDERED_AT as order_date,
        ORDER_TOTAL as amount

    from Jaffle_Shop_Database.jaffle_shop_Schema.Orders

)

select*
from orders