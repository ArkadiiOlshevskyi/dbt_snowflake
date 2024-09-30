{{
    config(
        materialized='table'
    )
}}

-- models/dim_customers.sql

SELECT
    *
FROM {{ source('dbt_database', 'DBT_CONNECT_TEST') }}


