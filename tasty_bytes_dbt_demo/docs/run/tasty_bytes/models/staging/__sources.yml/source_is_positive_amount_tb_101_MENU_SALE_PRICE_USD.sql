select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

select *
from tasty_bytes_dbt_db.RAW.MENU
where SALE_PRICE_USD is not null and SALE_PRICE_USD <= 0


      
    ) dbt_internal_test