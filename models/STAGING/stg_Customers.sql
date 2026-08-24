with customers as (

    select
        C1 as customer_id,
        C2 as customer_name

    from Jaffle_Shop_Database.jaffle_shop_Schema.Customers
    where C1 != 'id' -- exclude header row

)

select* 
from customers