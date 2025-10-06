select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

select *
from tasty_bytes_dbt_db.RAW.ORDER_DETAIL
where QUANTITY is not null and QUANTITY <= 0


      
    ) dbt_internal_test