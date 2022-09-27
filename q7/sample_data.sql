INSERT INTO clients (last_name, first_name, address, city, state, zip_code, phone, email)
VALUES
  ('Correa', 'Francisco', 'Gavilán 4642', 'Campinas', 'SP', 1234, 2193123981, 'franlata@hotmail.com'),
  ('Desimoni', 'Francisco', 'América 4445', 'Florianópolis', 'SC', 1335, 2193934981, 'desifran92@gmail.com'),
  ('Crisnejo', 'Nahuel', 'San Martín 172', 'Teresina', 'PI', 1222, 2133143981, 'nahue_cris@hotmail.com');

INSERT INTO products (name, description, price, stock)
VALUES
  ('aspiradora', 'super aspiradora 5000', 300, 15),
  ('cafetera', 'cafetera expresso', 1000, 10),
  ('reloj', 'reloj digital casio', 200, 30),
  ('rompevientos', 'campera rompevientos impermeable', 75, 20),
  ('auriculares', 'auriculares HiFi', 250, 25);

INSERT INTO orders (client_id, requested_shipment_date)
VALUES
  (1, '2022-10-03'),
  (3, '2022-10-09');

INSERT INTO shipments (order_id, product_id, quantity)
VALUES
  (1, 2, 1),
  (1, 4, 3);

INSERT INTO shipments (order_id, product_id, quantity)
VALUES
  (2, 1, 2),
  (2, 5, 10);
  