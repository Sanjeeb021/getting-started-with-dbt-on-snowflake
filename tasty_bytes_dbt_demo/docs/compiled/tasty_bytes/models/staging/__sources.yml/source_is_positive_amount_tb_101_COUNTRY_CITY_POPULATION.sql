

select *
from tasty_bytes_dbt_db.RAW.COUNTRY
where CITY_POPULATION is not null and CITY_POPULATION <= 0

