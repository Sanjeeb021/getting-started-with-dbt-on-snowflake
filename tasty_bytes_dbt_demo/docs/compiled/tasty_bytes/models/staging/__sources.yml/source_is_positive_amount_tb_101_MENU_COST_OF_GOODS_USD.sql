

select *
from tasty_bytes_dbt_db.RAW.MENU
where COST_OF_GOODS_USD is not null and COST_OF_GOODS_USD <= 0

