select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select FRANCHISE_ID
from tasty_bytes_dbt_db.RAW.FRANCHISE
where FRANCHISE_ID is null



      
    ) dbt_internal_test