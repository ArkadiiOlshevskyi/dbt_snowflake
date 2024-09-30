with customers as (
    select
        *
    from
        {{ ref('stg_jaffle_shop__customers') }}
)

orders as (
    {{ ref('stg_jaffle_shop__orders') }}
)

customers as (
    {{ ref('stg_jaffle_shop__customers') }}
)