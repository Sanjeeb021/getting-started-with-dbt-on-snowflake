
  create or replace   view tasty_bytes_dbt_db.dev.raw_pos_franchise
  
   as (
    SELECT *
FROM tasty_bytes_dbt_db.RAW.FRANCHISE
  );

