

select *
from tasty_bytes_dbt_db.RAW.ORDER_HEADER
where ORDER_TOTAL is not null and ORDER_TOTAL <= 0

