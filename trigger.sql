use final;
-- check before adding to cart(limit 1)
-- CREATE TRIGGER check_product_status_id
-- BEFORE UPDATE ON PRODUCT
-- FOR EACH ROW
-- BEGIN
--     IF NEW.status_id = 1 THEN
--         UPDATE product
--         SET status_id = 3,
--             user_id = OLD.user_id
--         WHERE product_id = OLD.product_id;
--     END IF;
-- END;

CREATE TRIGGER update_product_status_id
AFTER INSERT ON payments
FOR EACH ROW
BEGIN
    UPDATE product
    SET status_id = CASE 
                    WHEN NEW.amount > 0 THEN '2'
                 END
    WHERE id = (SELECT id FROM product WHERE user_id = NEW.user_id LIMIT 1);
END;

-- when user buys something, check if he has enough money in wallet --> deduct amount from wallet --> add transaction to payments --> mark as sold in product table