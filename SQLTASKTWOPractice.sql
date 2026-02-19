create database sales;

use sales;

CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2),
    sale_date DATE
);

INSERT INTO sales (product_name, category, quantity, price, sale_date) VALUES
('Laptop', 'Electronics', 5, 750.00, '2024-01-10'),
('Mouse', 'Electronics', 10, 25.00, '2024-01-11'),
('Keyboard', 'Electronics', 8, 45.00, '2024-01-12'),
('Shampoo', 'Beauty', 15, 5.00, '2024-01-13'),
('Conditioner', 'Beauty', 12, 6.00, '2024-01-14'),
('Monitor', 'Electronics', 4, 200.00, '2024-01-15');


select*from sales;

SELECT product, SUM(quantity) AS total_qty
FROM sales
GROUP BY product;

select*from sales;

SELECT product_name, SUM(quantity) AS total_qty
FROM sales
GROUP BY product_name;

SELECT category, SUM(quantity * price) AS total_sales
FROM sales
GROUP BY category;

SELECT category, AVG(price) AS avg_price
FROM sales
GROUP BY category;

SELECT category, SUM(quantity) AS total_items
FROM sales
GROUP BY category;

SELECT product_name, SUM(quantity) AS total_qty
FROM sales
GROUP BY product_name
HAVING SUM(quantity) > 8;

SELECT category, COUNT(DISTINCT product_name) AS product_count
FROM sales
GROUP BY category
HAVING COUNT(DISTINCT product_name) > 2;

SELECT product_name, SUM(quantity*price) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 3;

SELECT product_name,
       SUM(quantity) AS total_qty,
       AVG(price) AS avg_price
FROM sales
GROUP BY product_name;

SELECT *
FROM sales
WHERE sale_date > '2024-01-12';

SELECT sale_date, SUM(quantity*price) AS revenue
FROM sales
GROUP BY sale_date;

SELECT category, AVG(quantity) AS avg_qty
FROM sales
GROUP BY category;

SELECT sale_date, SUM(quantity*price) AS revenue
FROM sales
GROUP BY sale_date
ORDER BY revenue DESC
LIMIT 1;

SELECT DISTINCT category FROM sales;

SELECT COUNT(DISTINCT  product_name) FROM sales;

SELECT SUM(quantity*price) AS total_sales
FROM sales
WHERE category = 'Electronics';

SELECT product_name, SUM(quantity) AS total_qty
FROM sales
GROUP BY product_name
ORDER BY total_qty DESC
LIMIT 1;

SELECT category, product_name, SUM(quantity) AS total_qty
FROM sales
GROUP BY category, product_name
ORDER BY category, total_qty DESC;

SELECT DISTINCT product_name
FROM sales
WHERE sale_date = '2024-01-14';

SELECT product_name, SUM(quantity*price) AS total_revenue
FROM sales
GROUP BY product_name;

SELECT category, SUM(quantity*price) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC
LIMIT 2;

SELECT DISTINCT product_name
FROM sales
WHERE price > 100;

SELECT category, MIN(sale_date) AS earliest
FROM sales
GROUP BY category;

SELECT product_name, MAX(sale_date) AS latest
FROM sales
GROUP BY product_name;

SELECT product_name, AVG(price) AS avg_price
FROM sales
GROUP BY product_name
HAVING AVG(price) < 100;

SELECT category, COUNT(*) AS transactions
FROM sales
GROUP BY category;

SELECT SUM(quantity*price) AS revenue
FROM sales
WHERE sale_date BETWEEN '2024-01-11' AND '2024-01-14';

SELECT  product_name, price
FROM sales
ORDER BY price DESC
LIMIT 2;

SELECT sale_date, SUM(quantity) AS total_qty
FROM sales
GROUP BY sale_date;

SELECT category,
       SUM(quantity*price) AS total_revenue,
       AVG(quantity*price) AS avg_revenue
FROM sales
GROUP BY category;

SELECT product_name, SUM(quantity*price) AS revenue
FROM sales
GROUP BY product_name
HAVING SUM(quantity*price) > 500;