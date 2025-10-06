

select *
from tasty_bytes_dbt_db.RAW.ORDER_DETAIL
where PRICE is not null and PRICE <= 0

