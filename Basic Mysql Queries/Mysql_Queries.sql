USE final;

-- This query returns number of products in every category
SELECT category_id ,COUNT(product_id) as 'number of products'
FROM Product 
WHERE status like "in%"
GROUP BY category_id;

-- This query returns any payment that the user has made if any and the amount field is less than 0(user name(full name), display payment id, payment date, payment amount )
SELECT CONCAT(first_name,' ',last_name) as 'name',Payment_ID,Payment_Date,amount 
FROM User
INNER JOIN Payments
ON User.user_id = Payments.user_id 
WHERE amount < 0;

-- cart empty wala

-- details of user
SELECT first_name, last_name, email, phone 
FROM User
WHERE prime_user = 1;