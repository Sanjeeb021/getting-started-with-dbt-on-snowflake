select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select COUNTRY
from tasty_bytes_dbt_db.RAW.TRUCK
where COUNTRY is null



      
    ) dbt_internal_test