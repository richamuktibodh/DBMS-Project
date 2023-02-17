USE final;

-- Query 1:This query returns number of products in every category
SELECT category_id ,COUNT(product_id) as 'number of products'
FROM Product 
WHERE status like "in stock"
GROUP BY category_id;

-- Query 2:This query returns any payment that the user has made if any and the amount field is less than 0(user name(full name), display payment id, payment date, payment amount )
SELECT CONCAT(first_name,' ',last_name) as 'name',Payment_ID,Payment_Date, -amount as 'amount'
FROM User
INNER JOIN Payments
ON User.user_id = Payments.user_id 
WHERE amount < 0;

-- Query 3:This query returns the total price of the products in the cart and the number of products in the cart
SELECT SUM(price) as 'total price',
COUNT(PRODUCT_ID) as 'number of products',
CONCAT(first_name,' ',last_name) as 'name',
CASE 
    WHEN COUNT(PRODUCT_ID) <> 0 AND PRIME_USER = 1 THEN sum(PRICE) * 0.95
    WHEN COUNT(PRODUCT_ID) <> 0 AND PRIME_USER = 0 THEN sum(PRICE) * 1.05
    ELSE 0
END AS 'Final Price'
FROM Product, USER
WHERE user.user_id = product.cart_id
GROUP BY product.cart_id;


-- Query 4:details of users who have products in cart and the number of products they have 
SELECT CONCAT(first_name,' ', last_name) as 'Full Name', email, phone, count(product_id) as 'number of products'
FROM User, Product
WHERE User.user_id = Product.cart_id
GROUP BY User.user_id;

-- Query 5:Display all the products in stock in category 1 sorted by category id
SELECT product_id, product.name as 'product name', price, category.name as 'category name'
FROM Product, Category
WHERE status like "in stock" 
AND product.category_id = category.category_id
ORDER BY Product.category_id;

-- Query 6:Update the status of a product to out of stock
UPDATE Product
SET status = "out of stock"
WHERE product_id = 1;

-- Query 7:Creates a filter in category 1 where price is in the range of 7000 and 9000 sorted by price
SELECT product_id, product.name as 'product name', price, category.name as 'category name'
FROM Product, Category
WHERE status like "in stock"
AND Product.category_id = 1
AND category.category_id = 1
AND price BETWEEN 7000 AND 9000
ORDER BY price;

-- Query 8:Inserting a new product into the database
insert into Product (product_id, price, name, description, category_id, cart_id, status) 
VALUES (101, '6969', 'sui', 'augue neque aenean auctor gravida sem praesent id massa id nisl venenatis', 1, NULL, 'In stock');

-- Query 9:Inserting a new category into the database
INSERT INTO Category (category_id, name, description)
VALUES (10, 'testing', 'augue neque aenean auctor gravida sem praesent id massa id nisl venenatis');

-- Query 10:Inserting a new user into the database
INSERT INTO User (first_name, last_name, email, phone, address, dob, prime_user) 
VALUES ('liz', 'bien', 'abc@xyz.com', '1234567890', 'bruh street', '1999-01-01', 1);