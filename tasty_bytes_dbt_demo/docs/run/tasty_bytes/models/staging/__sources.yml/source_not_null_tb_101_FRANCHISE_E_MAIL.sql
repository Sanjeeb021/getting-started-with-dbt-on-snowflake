select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select E_MAIL
from tasty_bytes_dbt_db.RAW.FRANCHISE
where E_MAIL is null



      
    ) dbt_internal_test