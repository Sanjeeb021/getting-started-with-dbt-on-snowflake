

select *
from tasty_bytes_dbt_db.RAW.ORDER_DETAIL
where QUANTITY is not null and QUANTITY <= 0

