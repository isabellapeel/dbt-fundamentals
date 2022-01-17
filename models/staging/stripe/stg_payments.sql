-- staging model for stripe payments data 
select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method, 
    status, 

    -- amount is stored in cents, needs to be converted to dollars 
    (amount/100) as amount, 
    created as created_at

-- including source file 
from {{ source( 'stripe', 'payment')}}



