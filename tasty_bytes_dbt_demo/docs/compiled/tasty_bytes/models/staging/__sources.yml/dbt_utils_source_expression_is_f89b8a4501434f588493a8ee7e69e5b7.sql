



select
    1
from tasty_bytes_dbt_db.RAW.ORDER_HEADER

where not(ORDER_TS  <= current_timestamp())

