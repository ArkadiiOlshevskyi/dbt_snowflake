-- SQL styling example

SELECT
    customers.customer_id,
    customers.first_name,
    orders.order_id,
    orders.order_date,
    SUM(order_items.quanity * orders_items.unit_price) AS total_amount
FROM
    customers
INNER JOIN
    orders ON customers.customer_id = orders.customer_id
INNER JOIN
    order_items ON orders.order_id = order_items.order_id
WHERE
    orders.order_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY
    customers.customer_id,
    customers.first_name,
    orders.order_id,
    orders.order_date,
ORDER BY
    total_amount DESC;