SELECT
  id order_id,
  client_id,
  order_date,
  requested_shipment_date,
  SUM(quantity) AS number_of_items
FROM
  orders
JOIN shipments ON orders.id = order_id
GROUP BY orders.id
ORDER BY orders.id;
