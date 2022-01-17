
---- create stage. orders seperate model 

select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

-- adding source instead of from statement (specify schema and table name) 
from {{ source ('jaffle_shop', 'orders') }}