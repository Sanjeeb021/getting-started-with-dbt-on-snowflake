
  create or replace   view tasty_bytes_dbt_db.dev.raw_pos_menu
  
   as (
    SELECT *
FROM tasty_bytes_dbt_db.RAW.MENU
  );

