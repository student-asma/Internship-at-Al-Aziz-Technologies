INSERT INTO orders (customer_id, order_date)
VALUES (2, '2025-02-05'),
(3, '2025-02-10'),
(1, '2025-02-15');
INSERT INTO order_items (order_id, product_id, quantity)
VALUES (5, 2, 3),
(6, 1, 1),
(7, 4, 2);

SELECT customer_id, order_id, order_date,
ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS order_sequence FROM orders;

SELECT product_name, price,
RANK() OVER (ORDER BY price DESC) AS price_rank,
DENSE_RANK() OVER (ORDER BY price DESC) AS price_dense_rank
FROM products;

SELECT o.order_id, o.order_date, (p.price * oi.quantity) AS order_amount,
SUM(p.price * oi.quantity) OVER (ORDER BY o.order_date) AS running_total
FROM orders o JOIN order_items oi
ON o.order_id = oi.order_id
JOIN products p
ON oi.product_id = p.product_id
ORDER BY o.order_date;

SELECT o.order_id, o.order_date,
(p.price * oi.quantity) AS order_amount,
AVG(p.price * oi.quantity) OVER
( ORDER BY o.order_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW ) AS moving_avg_3
FROM orders o JOIN order_items oi
ON o.order_id = oi.order_id JOIN products p
ON oi.product_id = p.product_id ORDER BY o.order_date;

SELECT EXTRACT(YEAR FROM o.order_date) AS order_year,
EXTRACT(MONTH FROM o.order_date) AS order_month,
SUM(p.price * oi.quantity) AS monthly_sales
FROM orders o JOIN order_items oi
ON o.order_id = oi.order_id JOIN products p
ON oi.product_id = p.product_id
GROUP BY EXTRACT(YEAR FROM o.order_date),
EXTRACT(MONTH FROM o.order_date)
ORDER BY order_year, order_month;

SELECT COUNT(CASE WHEN city = 'Lahore' THEN 1 END) AS lahore_customers,
COUNT(CASE WHEN city = 'Karachi' THEN 1 END) AS karachi_customers,
COUNT(CASE WHEN city = 'Islamabad' THEN 1 END) AS islamabad_customers
FROM customers;