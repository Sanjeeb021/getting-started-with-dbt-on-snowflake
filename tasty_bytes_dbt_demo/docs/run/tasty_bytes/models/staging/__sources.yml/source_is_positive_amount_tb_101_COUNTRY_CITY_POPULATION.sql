select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

select *
from tasty_bytes_dbt_db.RAW.COUNTRY
where CITY_POPULATION is not null and CITY_POPULATION <= 0


      
    ) dbt_internal_test