-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where this isn't true to make the test fail.
select
  order_id,
        sum(amount)as total_amount
from {{ ref('stg_jaffle_shop__payments') }}
group by 1
having not (total_amount = 0)

Extra Credit
Add a relationships test to your stg_jaffle_shop__orders model for the customer_id in stg_jaffle_shop__customers.

Add tests throughout the rest of your models.