With fact_orders as (select customer_id, order_id, DATEDIFF('day', first_order_date, most_recent_order_date) as recency, number_of_orders as frequency, sum(amount) as amount
from {{ref('DIM_Customers')}}
group by 
order_id,
customer_id, 
first_order_date,
most_recent_order_date,
number_of_orders

)

select*
from fact_orders