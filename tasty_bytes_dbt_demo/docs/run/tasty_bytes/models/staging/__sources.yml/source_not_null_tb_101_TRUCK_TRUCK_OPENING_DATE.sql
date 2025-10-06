select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select TRUCK_OPENING_DATE
from tasty_bytes_dbt_db.RAW.TRUCK
where TRUCK_OPENING_DATE is null



      
    ) dbt_internal_test