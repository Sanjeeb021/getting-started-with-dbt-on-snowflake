from snowflake.snowpark.functions import col, lit, concat, count, sum as sum_, coalesce

def model(dbt, session):
    """
    This model demonstrates basic Snowpark transformations using dbt Python models.
    It joins location data with trucks and aggregates metrics by location.
    Uses raw_pos models as sources instead of tb_101 directly.
    """
    # Get tables using dbt's ref function to reference the raw_pos models
    locations_df = dbt.ref('raw_pos_location')
    trucks_df = dbt.ref('raw_pos_truck')
    orders_df = dbt.ref('raw_pos_order_header')
    
    # Join locations with trucks to get truck counts by location
    location_trucks = (
        trucks_df
        .join(
            locations_df, 
            trucks_df["PRIMARY_CITY"] == locations_df["CITY"], 
            "inner"
        )
        # Use simple column names and case-insensitive approach
        .select(
            locations_df["LOCATION_ID"],
            locations_df["LOCATION"],
            locations_df["CITY"],
            trucks_df["TRUCK_ID"]
        )
        .groupBy("LOCATION_ID", "LOCATION", "CITY")
        .agg(count("TRUCK_ID").alias("TRUCK_COUNT"))
    )
    
    # Join with order data to get sales metrics
    location_metrics = (
        orders_df
        .join(locations_df, "LOCATION_ID", "inner")
        .groupBy("LOCATION_ID")
        .agg(
            sum_("ORDER_TOTAL").alias("TOTAL_SALES"),
            sum_("ORDER_AMOUNT").alias("TOTAL_AMOUNT"),
            sum_("ORDER_TAX_AMOUNT").alias("TOTAL_TAX")
        )
    )
    
    # Create a more simplified final version
    joined_df = location_trucks.join(location_metrics, "LOCATION_ID", "left")
    
    # Add the calculated columns after join to avoid column reference issues
    final_df = (
        joined_df
        .select(
            col("LOCATION_ID"),
            col("LOCATION"),
            col("CITY"),
            col("TRUCK_COUNT"),
            # Use coalesce instead of fillna for Column objects
            coalesce(col("TOTAL_SALES"), lit(0)).alias("TOTAL_SALES"),
            coalesce(col("TOTAL_AMOUNT"), lit(0)).alias("TOTAL_AMOUNT"),
            coalesce(col("TOTAL_TAX"), lit(0)).alias("TOTAL_TAX")
        )
    )
    
    # Add the full location description as a separate step
    final_with_desc = (
        final_df
        .withColumn(
            "LOCATION_DESCRIPTION", 
            concat(
                col("CITY"), 
                lit(" (Trucks: "), 
                col("TRUCK_COUNT").cast("string"), 
                lit(")")
            )
        )
    )
    
    # Return the final dataframe
    return final_with_desc


# This part is user provided model code
# you will need to copy the next section to run the code
# COMMAND ----------
# this part is dbt logic for get ref work, do not modify

def ref(*args, **kwargs):
    refs = {"raw_pos_location": "tasty_bytes_dbt_db.dev.raw_pos_location", "raw_pos_order_header": "tasty_bytes_dbt_db.dev.raw_pos_order_header", "raw_pos_truck": "tasty_bytes_dbt_db.dev.raw_pos_truck"}
    key = '.'.join(args)
    version = kwargs.get("v") or kwargs.get("version")
    if version:
        key += f".v{version}"
    dbt_load_df_function = kwargs.get("dbt_load_df_function")
    return dbt_load_df_function(refs[key])


def source(*args, dbt_load_df_function):
    sources = {}
    key = '.'.join(args)
    return dbt_load_df_function(sources[key])


config_dict = {}


class config:
    def __init__(self, *args, **kwargs):
        pass

    @staticmethod
    def get(key, default=None):
        return config_dict.get(key, default)

class this:
    """dbt.this() or dbt.this.identifier"""
    database = "tasty_bytes_dbt_db"
    schema = "dev"
    identifier = "sales_metrics_by_location"
    
    def __repr__(self):
        return 'tasty_bytes_dbt_db.dev.sales_metrics_by_location'


class dbtObj:
    def __init__(self, load_df_function) -> None:
        self.source = lambda *args: source(*args, dbt_load_df_function=load_df_function)
        self.ref = lambda *args, **kwargs: ref(*args, **kwargs, dbt_load_df_function=load_df_function)
        self.config = config
        self.this = this()
        self.is_incremental = False

# COMMAND ----------


