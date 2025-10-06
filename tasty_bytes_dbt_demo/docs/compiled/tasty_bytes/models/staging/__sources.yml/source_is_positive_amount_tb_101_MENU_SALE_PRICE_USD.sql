

select *
from tasty_bytes_dbt_db.RAW.MENU
where SALE_PRICE_USD is not null and SALE_PRICE_USD <= 0

