select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

select *
from tasty_bytes_dbt_db.RAW.ORDER_HEADER
where ORDER_AMOUNT is not null and ORDER_AMOUNT <= 0


      
    ) dbt_internal_test