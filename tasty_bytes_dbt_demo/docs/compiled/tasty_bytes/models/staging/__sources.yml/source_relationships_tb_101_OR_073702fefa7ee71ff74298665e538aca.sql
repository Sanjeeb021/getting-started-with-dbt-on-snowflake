
    
    

with child as (
    select TRUCK_ID as from_field
    from tasty_bytes_dbt_db.RAW.ORDER_HEADER
    where TRUCK_ID is not null
),

parent as (
    select TRUCK_ID as to_field
    from tasty_bytes_dbt_db.RAW.TRUCK
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


