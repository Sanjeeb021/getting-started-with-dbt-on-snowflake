
    
    

select
    PLACEKEY as unique_field,
    count(*) as n_records

from tasty_bytes_dbt_db.RAW.LOCATION
where PLACEKEY is not null
group by PLACEKEY
having count(*) > 1


