-- Q1: List all customers from Mumbai along with their total order value
SELECT c.customer_name, SUM(o.total_value) AS total_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'Mumbai'
GROUP BY c.customer_name;

-- Q2: Find the top 3 products by total quantity sold
SELECT p.product_name, SUM(o.quantity) AS total_quantity
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 3;

-- Q3: List all sales representatives and the number of unique customers they have handled
SELECT s.sales_rep_name, COUNT(DISTINCT o.customer_id) AS unique_customers
FROM sales_representatives s
JOIN orders o ON s.sales_rep_id = o.sales_rep_id
GROUP BY s.sales_rep_name;

-- Q4: Find all orders where the total value exceeds 10000, sorted by value descending
SELECT *
FROM orders
WHERE total_value > 10000
ORDER BY total_value DESC;

-- Q5: Identify any products that have never been ordered
SELECT p.product_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
WHERE o.product_id IS NULL;
