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
-- select product_id, name, price from product where status_id = 1;

-- query join sellbuymap and payments to get the transaction details
select payment_id, payment_date, amount, sellbuymap.sellbuy from sellbuymap inner join payments on sellbuymap.sellbuy_id = payments.sellbuy where user_id = 16;

select wallet from user where user_id = 1;