# Kaffa Mobile - Pre-qualification test

Juan Desimoni

## 1) Validate CNPJ format and check digits

This exercise is written in Kotlin. To run it:

- cd into `~/q1/`
- run `make`

You will be prompted to enter a CNPJ number and hit enter. It will be validated. To exit enter "Q".

The source code is in `~/q1/app.kt`.

## 2) Test if two rectangles intersect

This exercise is also written in Kotlin. To run it:

- cd into `~/q2/`
- run `make`

To try it with different rectangles open `~/q2/app.kt` and modify lines 36 and 40.

**Note**: for this exercise and the following, it is expected that the rectangles are entered as

    val R = Rect(i1, j1, i2, j2)

where (i1, j1) and (i2, j2) are the bottom-left and top-right corners respectively. So, the program expects that i1<=i2 and j1<=j2. For example Rect(0, 0, 2, 3) is a valid rectangle and Rect(2, 3, 0, 0) is not. The program does not check validity of the rectangles, so please make shure to enter valid values for the bottom-left and top-right corners when testing.

## 3) Compute the area of intersection between two rectangles

This exercise works in the same way as the second one. To run it:

- cd into `~/q3/`
- run `make`

To try it with different rectangles open `~/q3/app.kt` and modify lines 37 and 41.

## 4) Simple Todo List

For this exercise I provide links to my portfolio project Leger, which is a web app to track shared expenses between groups of persons. It consists of an Express server in the backend and a React client in the frontend. The server and client are hosted in different platforms and communicate via HTTP.

- Server: <https://github.com/desijuan/ledger-server>
- Client: <https://github.com/desijuan/ledger-client>

You can see a live demo of the app [here](https://ledger-client.netlify.app).

## 5) Rest Client - World Clock

This exercise is written in JavaScript. It runs in Node.js and uses Axios. To run it:

- cd into `~/q5/`
- run `npm install`
- run `npm run app` or `node app`

## 6) Rest Server - World Clock

This exercise is also written in JavaScript. It runs in Node.js and uses Express.

- cd into `~/q6/`
- run `npm install`
- run `npm run app` or `node app`

The server will be listening in localhost:3000. If you want to change the default port, for example to 5000, create a file `~/q6/.env` with the line `PORT=5000` in it.

## 7) Entity Relationship Diagram - Simple Order Manager

The file `~/q7/Simple_Order_Manager_DB_ER_Diagram.pdf` contains the **Entity Relationship Diagram** for the database.

I also provide the **SQL code** to create the tables for the database. It is in the file: `~/q7/Simple_Order_Manager_DB.sql`.

I used PostgreSQL version 14.5.

    $ psql --version
    psql (PostgreSQL) 14.5

To create the database, cd into `~/q7/` and run:

    $ createdb simple-order-manager
    $ psql -d simple-order-manager -f Simple_Order_Manager_DB.sql

The file `~/q7/sample_data.sql` contains some sample data to populate and test the database.

    $ psql -d simple-order-manager -f sample_data.sql

### Extras:

The file `~/q7/list_orders_with_number_of_items.sql` contains the following query to list the Orders with number of items:

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

To run it:

    $ psql -d simple-order-manager -f list_orders_with_number_of_items.sql

The indexes that should be created are:

- clients: last_name
- orders: order_date and requested_shipment_date
- products: name and stock

## 8) UX Prototype

The prototype is in `~/q8/UX-Prototype.pdf`.
