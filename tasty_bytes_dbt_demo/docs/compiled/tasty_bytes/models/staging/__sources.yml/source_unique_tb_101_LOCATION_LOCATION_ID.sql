
    
    

select
    LOCATION_ID as unique_field,
    count(*) as n_records

from tasty_bytes_dbt_db.RAW.LOCATION
where LOCATION_ID is not null
group by LOCATION_ID
having count(*) > 1


