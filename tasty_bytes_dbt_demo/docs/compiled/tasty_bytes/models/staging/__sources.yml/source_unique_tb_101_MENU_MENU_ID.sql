
    
    

select
    MENU_ID as unique_field,
    count(*) as n_records

from tasty_bytes_dbt_db.RAW.MENU
where MENU_ID is not null
group by MENU_ID
having count(*) > 1


