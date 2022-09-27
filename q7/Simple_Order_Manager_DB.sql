-- PostgreSQL
-- Simple Order Manager Database

DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS shipments;

CREATE TABLE clients (
  id SERIAL PRIMARY KEY,
  last_name VARCHAR(30) NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  address VARCHAR(60) NOT NULL,
  city VARCHAR(60) NOT NULL,
  state VARCHAR(30) NOT NULL,
  zip_code VARCHAR(20) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  email VARCHAR(60) NOT NULL
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  client_id INTEGER REFERENCES clients (id) NOT NULL,
  order_date TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  requested_shipment_date TIMESTAMPTZ NOT NULL,
  shipped_date TIMESTAMPTZ DEFAULT NULL
);

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  description VARCHAR(200) NOT NULL,
  price NUMERIC(9,2) NOT NULL,
  stock INTEGER NOT NULL
);

CREATE TABLE shipments (
  order_id INTEGER REFERENCES orders (id) NOT NULL,
  product_id INTEGER REFERENCES products (id) NOT NULL,
  quantity INTEGER NOT NULL,
  PRIMARY KEY (order_id, product_id)
);
