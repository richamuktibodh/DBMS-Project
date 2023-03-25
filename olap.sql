use final;
-- query 1: This query returns the price of products in every category
SELECT c.name as 'category_name', CONCAT(u.first_name, ' ', u.last_name) AS 'user_name', sum(price) as 'price of products'
FROM Product
JOIN user as u ON u.user_id = product.user_id
JOIN category as c ON c.category_id = product.category_id
WHERE product.user_id is not null
GROUP BY category_name, user_name with rollup;

-- query 2: Total sales by user 
SELECT CONCAT(u.first_name, ' ', u.last_name) AS 'user_name', SUM(p.amount) AS total_sales
FROM user u
JOIN payments p ON u.user_id = p.user_id
where p.sellbuy = '1'
GROUP BY u.user_id;

-- query 3: Find number of products categorywise which are below 4000 rupees and are in stock in descending order
SELECT c.category_id as 'category_id', c.name as 'category_name', count(p.product_id) as 'number of products'
FROM Product p
JOIN category c ON c.category_id = p.category_id
WHERE p.price < 4000 and p.status_id = '1'
GROUP BY category_id, category_name
ORDER BY count(p.product_id) DESC;

-- query 4: Find the total revenue generated by each user, grouped by month
SELECT CONCAT(u.first_name, ' ', u.last_name) AS 'user_name',  MONTH(pm.payment_date) AS 'month', SUM(pm.amount) AS 'total_revenue'
FROM user u
JOIN payments pm ON u.user_id = pm.user_id
GROUP BY MONTH(pm.payment_date), user_name with rollup;