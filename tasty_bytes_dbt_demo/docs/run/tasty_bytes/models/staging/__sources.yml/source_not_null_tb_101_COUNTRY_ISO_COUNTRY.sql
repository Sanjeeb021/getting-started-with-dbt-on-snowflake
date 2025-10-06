select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ISO_COUNTRY
from tasty_bytes_dbt_db.RAW.COUNTRY
where ISO_COUNTRY is null



      
    ) dbt_internal_test