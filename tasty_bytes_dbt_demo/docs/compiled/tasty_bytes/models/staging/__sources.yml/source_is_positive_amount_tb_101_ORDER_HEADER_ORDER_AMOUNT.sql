

select *
from tasty_bytes_dbt_db.RAW.ORDER_HEADER
where ORDER_AMOUNT is not null and ORDER_AMOUNT <= 0

