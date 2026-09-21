def model (dbt, session):

    dbt.config ( materialized="table")

    df= dbt.ref('stg_Customers')

    return df
