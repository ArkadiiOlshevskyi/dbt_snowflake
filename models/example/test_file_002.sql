SELECT
  *
FROM {{ ref('DBT_CONNECT_TEST') }}
LIMIT 10;