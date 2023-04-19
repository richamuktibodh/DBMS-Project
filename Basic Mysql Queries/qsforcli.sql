use final;

-- #view available products
-- #view previous transactions
-- #view account balance
-- #add product to cart
-- #view cart
-- #checkout cart
-- #Put product up for sale
-- #Upgrade customer status
-- #view account details
-- #update account details

-- query to list product id, name, price from product where status_id is 1(product is available)
-- select product_id, category_id,  name, price from product where status_id = 1;

-- query join sellbuymap and payments to get the transaction details of a particular user_id
-- select payment_id, payment_date, amount, sellbuymap.sellbuy from sellbuymap inner join payments on sellbuymap.sellbuy_id = payments.sellbuy where user_id = 16;

-- query to get the balance of a particular user_id
-- select wallet from user where user_id = 1;

-- query to change status of product to 3 (add product to cart) only if product status is not 3 initially
update product set status_id = 3 where product_id = 1 and status_id != 3;

-- query to get the product_id, name, price from product where status_id is 3(product is in cart)
-- select product_id, name, price from product where status_id = 3;

-- query to change status of product to 2 (change product status to sold)
-- update product set status_id = 2 where product_id = 1;