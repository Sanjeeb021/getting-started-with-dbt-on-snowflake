
  create or replace   view tasty_bytes_dbt_db.dev.raw_pos_order_header
  
   as (
    SELECT *
FROM tasty_bytes_dbt_db.RAW.ORDER_HEADER
  );

