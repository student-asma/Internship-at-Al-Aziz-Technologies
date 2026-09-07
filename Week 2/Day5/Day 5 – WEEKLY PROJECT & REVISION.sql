 -- WEEK 2 FINAL PROJECT: Sales & Customer Analysis 
 -- Tables: customers, products, orders, order_items
-- ============================================ 
-- 1. Which customers have spent the most overall?
SELECT c.customer_name, SUM(p.price * oi.quantity) AS total_spent
FROM customers c JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name ORDER BY total_spent DESC;

--2. Which product generates the most revenue? 
SELECT p.product_name, SUM(p.price * oi.quantity) AS revenue
FROM order_items oi JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name ORDER BY revenue DESC;

-- 3. Monthly sales trend 
SELECT EXTRACT(MONTH FROM o.order_date) AS month,
SUM(p.price * oi.quantity) AS monthly_sales
FROM orders o JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY EXTRACT(MONTH FROM o.order_date) ORDER BY month;

-- 4. Customers who never placed an order (potential inactive customers)
SELECT customer_name FROM customers
WHERE customer_id NOT IN (SELECT customer_id FROM orders);

-- 5. Rank customers by total spending
SELECT c.customer_name, SUM(p.price * oi.quantity) AS total_spent,
RANK() OVER (ORDER BY SUM(p.price * oi.quantity) DESC) AS spending_rank
FROM customers c JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name;