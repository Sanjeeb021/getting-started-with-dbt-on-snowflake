select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

select *
from tasty_bytes_dbt_db.RAW.MENU
where COST_OF_GOODS_USD is not null and COST_OF_GOODS_USD <= 0


      
    ) dbt_internal_test