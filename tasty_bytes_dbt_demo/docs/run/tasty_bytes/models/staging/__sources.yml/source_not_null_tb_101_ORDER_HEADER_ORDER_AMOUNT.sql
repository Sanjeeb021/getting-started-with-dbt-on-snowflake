select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ORDER_AMOUNT
from tasty_bytes_dbt_db.RAW.ORDER_HEADER
where ORDER_AMOUNT is null



      
    ) dbt_internal_test