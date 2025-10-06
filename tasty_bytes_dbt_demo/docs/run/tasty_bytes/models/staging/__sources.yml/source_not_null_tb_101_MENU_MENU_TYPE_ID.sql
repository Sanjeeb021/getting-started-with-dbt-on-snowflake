select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select MENU_TYPE_ID
from tasty_bytes_dbt_db.RAW.MENU
where MENU_TYPE_ID is null



      
    ) dbt_internal_test