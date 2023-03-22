use final;
-- group by cube (category_id, cart_id) from product
SELECT category_id, cart_id, COUNT(product_id) as 'number of products'
FROM Product
GROUP BY category_id, cart_id with rollup
having cart_id is not null;