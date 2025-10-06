

select *
from tasty_bytes_dbt_db.RAW.ORDER_DETAIL
where UNIT_PRICE is not null and UNIT_PRICE <= 0

