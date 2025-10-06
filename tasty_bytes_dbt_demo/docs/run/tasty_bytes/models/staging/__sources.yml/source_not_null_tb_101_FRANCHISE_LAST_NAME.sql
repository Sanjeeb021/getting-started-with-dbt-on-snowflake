select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select LAST_NAME
from tasty_bytes_dbt_db.RAW.FRANCHISE
where LAST_NAME is null



      
    ) dbt_internal_test