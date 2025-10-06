select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select MENU_ITEM_NAME
from tasty_bytes_dbt_db.RAW.MENU
where MENU_ITEM_NAME is null



      
    ) dbt_internal_test