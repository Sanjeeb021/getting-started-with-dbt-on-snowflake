select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

select *
from tasty_bytes_dbt_db.RAW.ORDER_DETAIL
where UNIT_PRICE is not null and UNIT_PRICE <= 0


      
    ) dbt_internal_test