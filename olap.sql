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
where p.amount > 0
GROUP BY u.user_id;

