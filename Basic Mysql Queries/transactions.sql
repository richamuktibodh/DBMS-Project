use final;
-- transaction to add item into products and read all products # 1
START TRANSACTION;
SELECT * FROM product;
INSERT INTO product (price, name, description, category_id, user_id, status_id) VALUES (1024,'product 1','ffgghh', 1, 10, 1);
SELECT * FROM product;
COMMIT;

-- transaction to add item into products # 2
START TRANSACTION;
INSERT INTO product (price, name, description, category_id, user_id, status_id) VALUES (55,'product 3', 'ggg',3, 4,2);
SELECT * FROM product;
COMMIT;


