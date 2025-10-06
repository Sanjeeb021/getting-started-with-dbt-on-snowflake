select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select ORDER_ID as from_field
    from tasty_bytes_dbt_db.RAW.ORDER_DETAIL
    where ORDER_ID is not null
),

parent as (
    select ORDER_ID as to_field
    from tasty_bytes_dbt_db.RAW.ORDER_HEADER
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test