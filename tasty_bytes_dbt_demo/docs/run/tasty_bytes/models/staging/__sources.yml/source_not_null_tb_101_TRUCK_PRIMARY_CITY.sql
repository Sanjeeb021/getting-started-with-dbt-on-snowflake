select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select PRIMARY_CITY
from tasty_bytes_dbt_db.RAW.TRUCK
where PRIMARY_CITY is null



      
    ) dbt_internal_test