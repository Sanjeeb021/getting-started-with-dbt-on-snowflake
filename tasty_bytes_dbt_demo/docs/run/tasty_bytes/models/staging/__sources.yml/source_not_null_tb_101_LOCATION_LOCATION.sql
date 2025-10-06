select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select LOCATION
from tasty_bytes_dbt_db.RAW.LOCATION
where LOCATION is null



      
    ) dbt_internal_test