select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ORDER_DETAIL_ID
from tasty_bytes_dbt_db.RAW.ORDER_DETAIL
where ORDER_DETAIL_ID is null



      
    ) dbt_internal_test