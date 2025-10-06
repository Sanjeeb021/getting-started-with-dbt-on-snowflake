
  create or replace   view tasty_bytes_dbt_db.dev.raw_pos_order_detail
  
   as (
    SELECT *
FROM tasty_bytes_dbt_db.RAW.ORDER_DETAIL
  );

