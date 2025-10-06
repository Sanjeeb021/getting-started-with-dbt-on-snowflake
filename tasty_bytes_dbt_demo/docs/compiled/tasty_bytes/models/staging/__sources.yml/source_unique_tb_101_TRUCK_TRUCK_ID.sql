
    
    

select
    TRUCK_ID as unique_field,
    count(*) as n_records

from tasty_bytes_dbt_db.RAW.TRUCK
where TRUCK_ID is not null
group by TRUCK_ID
having count(*) > 1


