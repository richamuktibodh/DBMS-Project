create DATABASE final;
use final;

drop Table if EXISTS Category;
create Table Category(
    varchar(20) name NOT NULL, 
    int category_id(8) NOT NULL,
    varchar(256) description,
    PRIMARY KEY (category_id)
);  

drop Table if EXISTS Product;
create Table Product(
    int product_id(8) NOT NULL,
    int price(10) NOT NULL,
    varchar(20) name NOT NULL,
    int quantity(8) NOT NULL, 
    varchar(256) description,
    int category_id(8) NOT NULL,
    varchar status(20) NOT NULL,
    PRIMARY KEY (product_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

drop Table if EXISTS User;
create Table User(
    -- user id, name(first name, middle name, last name), address, email, phone, dob, age(derived), prime user(boolean) 
    int user_id(8) NOT NULL,
    varchar first_name(20) NOT NULL,
    varchar middle_name(20) NULL,
    varchar last_name(20) NOT NULL,
    varchar address(100) NOT NULL,
    varchar email(50) NOT NULL,
    int phone(10) NOT NULL,
    DATETIME dob NOT NULL,
    -- derive age from current date - dob
    int age(3) NOT NULL,
    boolean prime_user NOT NULL DEFAULT FALSE,
    PRIMARY KEY (user_id)
);

drop Table if EXiSTS Payments;
create Table Payments(
    int Payment_ID(8) NOT NULL,
    DATETIME Payment_Date NOT NULL,
    int amount(8) NOT NULL,
    int user_id(8) NOT NULL,
    PRIMARY KEY (Payment_ID),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);