select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ISO_COUNTRY_CODE
from tasty_bytes_dbt_db.RAW.LOCATION
where ISO_COUNTRY_CODE is null



      
    ) dbt_internal_test