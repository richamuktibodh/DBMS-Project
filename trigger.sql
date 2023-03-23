use final;
CREATE TRIGGER check_product_status
BEFORE UPDATE ON PRODUCT
FOR EACH ROW
BEGIN
    IF NEW.status = 'In stock' THEN
        UPDATE product
        SET status = 'Out of stock'
        SET user_id = NEW.user_id
        WHERE product_id = NEW.product_id;
    END IF;
END;

CREATE TRIGGER update_product_status
AFTER INSERT ON payments
FOR EACH ROW
BEGIN
    UPDATE product
    SET status = CASE 
                    WHEN NEW.amount > 0 THEN 'Out of stock'
                 END
    WHERE id = (SELECT id FROM product WHERE user_id = NEW.user_id LIMIT 1);
END;