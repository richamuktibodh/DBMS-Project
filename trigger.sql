use final;
-- check if product is available --> add to cart --> update product status to 'on hold'
drop trigger if exists check_product_status_id;
CREATE TRIGGER check_product_status_id
BEFORE UPDATE ON PRODUCT
FOR EACH ROW
BEGIN
    IF NEW.status_id = 1 THEN
        UPDATE product
        SET status_id = 3,
            user_id = OLD.user_id
        WHERE product_id = OLD.product_id;
    END IF;
END;

-- when user buys something, check if he has enough money in wallet --> deduct amount from wallet --> add transaction to payments --> mark as sold in product table
drop trigger if exists check_wallet_balance;
CREATE TRIGGER check_wallet_balance
BEFORE INSERT ON payments
FOR EACH ROW
BEGIN
    IF NEW.Sellbuy = 0 AND NEW.amount > (SELECT wallet FROM user WHERE user_id = NEW.user_id) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient funds in wallet';
    ELSEIF NEW.Sellbuy = 0 THEN
        UPDATE user
        SET wallet = wallet - NEW.amount
        WHERE user_id = NEW.user_id;
    ELSEIF NEW.Sellbuy = 1 THEN
        UPDATE user
        SET wallet = wallet + NEW.amount
        WHERE user_id = NEW.user_id;
    END IF;
END;


