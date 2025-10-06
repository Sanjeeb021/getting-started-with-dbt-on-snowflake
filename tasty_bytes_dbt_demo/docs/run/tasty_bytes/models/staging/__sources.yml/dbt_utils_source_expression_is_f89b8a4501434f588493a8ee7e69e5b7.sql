select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      



select
    1
from tasty_bytes_dbt_db.RAW.ORDER_HEADER

where not(ORDER_TS  <= current_timestamp())


      
    ) dbt_internal_test