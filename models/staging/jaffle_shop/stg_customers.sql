-- create stage customers seperate model 

select
    id as customer_id,
    first_name,
    last_name

-- adding source instead of from statement (specify schema and table name) 
from {{ source('jaffle_shop', 'customers') }}
