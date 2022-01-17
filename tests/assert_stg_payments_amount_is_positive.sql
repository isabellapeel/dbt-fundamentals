-- create test to see that total payment amount per order id is positive 

-- using with so know we are calculating from stg_payments table
with 

payments as ( 
        select * 
        from {{ ref('stg_payments') }}
)

-- after defining table, make test (i.e. selecct query) that tests whether total amount is positive 
select 
    order_id, 
    sum(amount) as total_amount 
from payments 
group by order_id 
-- having clause is used when where can't (i.e. cos we caluclated aggregate total amount before in query)
-- test amount is NOT negative 
having total_amount < 0