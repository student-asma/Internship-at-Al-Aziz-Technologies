CREATE TABLE customers 
( customer_id SERIAL PRIMARY KEY, 
customer_name VARCHAR(50), 
city VARCHAR(50) );

CREATE TABLE products 
( product_id SERIAL PRIMARY KEY,
product_name VARCHAR(50),
price NUMERIC ); 

CREATE TABLE orders 
( order_id SERIAL PRIMARY KEY, 
customer_id INT REFERENCES customers(customer_id), 
order_date DATE );

CREATE TABLE order_items 
( item_id SERIAL PRIMARY KEY,
order_id INT REFERENCES orders(order_id),
product_id INT REFERENCES products(product_id),
quantity INT );

INSERT INTO customers (customer_name, city)
VALUES ('Ali', 'Lahore'),
('Sara', 'Karachi'),
('Usman', 'Lahore'),
('Ayesha', 'Islamabad'); 

INSERT INTO products (product_name, price)
VALUES
('Laptop', 80000),
('Mouse', 1500),
('Keyboard', 3000),
('Monitor', 20000);

INSERT INTO orders (customer_id, order_date)
VALUES (1, '2025-01-10'),
(2, '2025-01-12'),
(1, '2025-01-15'),
(3, '2025-01-20'); 

INSERT INTO order_items (order_id, product_id, quantity)
VALUES (1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 2, 1),
(4, 1, 1),
(4, 3, 2);

SELECT o.order_id, c.customer_name, o.order_date
FROM orders o INNER JOIN customers c
ON o.customer_id = c.customer_id; 

SELECT c.customer_name, o.order_id, o.order_date
FROM customers c LEFT JOIN orders o
ON c.customer_id = o.customer_id;

SELECT p.product_name, oi.order_id, oi.quantity
FROM order_items oi RIGHT JOIN products p
ON oi.product_id = p.product_id; 

SELECT c.customer_name, o.order_id
FROM customers c FULL JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.order_date, p.product_name, oi.quantity, (p.price * oi.quantity)AS total_amount
FROM customers c JOIN orders o
ON c.customer_id = o.customer_id JOIN order_items oi
ON o.order_id = oi.order_id JOIN products p
ON oi.product_id = p.product_id
ORDER BY c.customer_name;

 SELECT c1.customer_name AS customer1, c2.customer_name AS customer2, c1.city
 FROM customers c1 JOIN customers c2
 ON c1.city = c2.city AND c1.customer_id < c2.customer_id;