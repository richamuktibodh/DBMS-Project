import mysql.connector
import datetime

def Exec_Query(query, mode = 0):
    cnx = mysql.connector.connect(user='root',password = 'tiger', database='final')
    cursor = cnx.cursor()
    try:
        cursor.execute(query)
    except:
        print("Invalid query")
        return
    ret = cursor.fetchall()
    cnx.commit()
    cursor.close()
    if mode == 0:
        if(ret == []):
            return
        else:
            for i in ret:
                for j in i:
                    j = str(j)
                    print(j, end = "")
                    print((20 - len(j)) * " ", end = "|")
                print()
    else:
        return ret
def PrintLine():
    print()
    print("-------------------------------------------------------------------------------------------------------------------")
    print()

def MainMenu(): 
    print("Welcome to the Mysql Query Tool\n" + "Please select an option from the menu below\n" + "1. List available products\n"+ "2. Enter as user\n" + "3. Exit\n")
    PrintLine()
    choice = int(input("Enter your choice: "))
    if(choice == 1):
        print("       Name         |      Category      |        Price       |")
        PrintLine()
        Exec_Query("select product.name, cat.name, product.price from product join category cat on product.category_id = cat.category_id where status_id = 1;")
        MainMenu()
    elif(choice == 2):
        UserMenu1()
    elif(choice == 3):
        exit()
    else:
        print("Invalid choice")
        MainMenu()
def UserMenu1():
    PrintLine()
    print("1. Signup\n"+"2. Login\n" + "3. Back\n") 
    PrintLine()
    x = int(input("Enter your choice: "))
    if(x == 1):
        first_name = input("Enter your first name: ")
        if(first_name == ""):
            print("First name cannot be empty")
            UserMenu1()
            return 0
        middle_name = input("Enter your middle name: ")
        last_name = input("Enter your last name: ")
        if(last_name == ""):
            print("Last name cannot be empty")
            UserMenu1()
            return 0
        address = input("Enter your address: ")
        if(address == ""):
            print("Address cannot be empty")
            UserMenu1()
            return 0
        email = input("Enter your email: ")
        if(email == ""):
            print("Email cannot be empty")
            UserMenu1()
            return 0
        phone = input("Enter your phone number: ")
        if(phone == ""):
            print("Phone number cannot be empty")
            UserMenu1()
            return 0
        dob = input("Enter your date of birth: ")
        if(dob == ""):
            print("Date of birth cannot be empty")
            UserMenu1()
            return 0
        wallet = int(input("Enter your wallet balance: "))
        if(wallet < 0):
            print("Wallet balance cannot be negative")
            UserMenu1()
            return 0
        password = input("Enter your password: ")
        if(len(password) < 6 or len(password) > 10):
            print("Password must be between 6 and 10 characters")
            UserMenu1()
            return 0
        for i in password:
            if(i.isalpha() == False and i.isdigit() == False):
                print("Password must contain only alphabets and digits")
                UserMenu1()
                return 0
        Exec_Query("INSERT INTO User (first_name, middle_name, last_name, address, email, phone, dob, wallet, password) values (" + "'" + first_name + "', '" + middle_name + "', '" + last_name + "', '" + address + "', '" + email + "', '" + phone + "', '" + dob + "', " + str(wallet) + ", '" + password + "');")
        print("Signup successful")
        UserMenu1()
    elif(x == 2):
        user_id = int(input("Enter your user id: "))
        password = input("Enter your password: ")
        ret = Exec_Query("select user_id, password from user where user_id = " + str(user_id) + ";", 1)
        print(ret)
        if(ret == []):
            print("Invalid User ID")
            UserMenu1()
            return 0
        if(ret[0][1] == password):
            print("Login successful")
            UserMenu2(user_id)
        else:
            print("Invalid password")
            UserMenu1()
            return 0
    elif(x == 3):
        MainMenu()
    else:
        print("Invalid choice")
        UserMenu1()
        return 0
#choice 1: view available products
#choice 2: view previous transactions
#choice 3: view account balance
#choice 4: add product to cart
#choice 5: view cart
#choice 6: checkout cart
#choice 7: Put product up for sale
#choice 8: Upgrade customer status
#choice 9: view account details
#choice 10: update account details
def UserMenu2(userId):
    print("1. View available products\n"+ "2. View previous transactions\n" + "3. View account balance\n" + "4. Add product to cart\n" + "5. View cart\n" + "6. Checkout cart\n" + "7. Put product up for sale\n" + "8. Upgrade customer status\n" + "9. View account details\n" + "10. Update account details\n" + "11. Logout\n")
    PrintLine()
    choice = int(input("Enter your choice: "))
    PrintLine()
    if(choice == 1):
        print("       Name         |      Category      |        Price       |")
        PrintLine()
        Exec_Query("select product.name, cat.name, product.price from product join category cat on product.category_id = cat.category_id where status_id = 1;")
    elif(choice == 2):
        print("     Payment_id     |    Payment_date    |       Amount       |     Sell/Buy       |")
        PrintLine()
        Exec_Query("select payment_id, payment_date, amount, sellbuymap.sellbuy from sellbuymap inner join payments on sellbuymap.sellbuy_id = payments.sellbuy where user_id = " + str(userId) + ";")
    elif(choice == 3):
        print("      Balance       |")
        PrintLine()
        Exec_Query("select wallet from user where user_id = " + str(userId) + ";")
    elif(choice == 4):
        PrintLine()    
    elif(choice == 5):
        print("     Product_id     |        name        |       Price        |")
        PrintLine()
        Exec_Query("select product_id, name, price from product where status_id = 3 AND user_id = " + str(userId) + ";")
    elif(choice == 6):
        main.run_Query(query)
    elif(choice == 7):
        price = int(input("Enter the price of the product: "))
        name = input("Enter the name of the product: ")
        description = input("Enter the description of the product: ")
        print("Choose a category for the product: ")
        Exec_Query("select name, category_id from category;")
        category_id = int(input("Enter the category id: "))
        Exec_Query("INSERT INTO Product (price, name, description, category_id, user_id, status_id) values (" + str(price) + ", '" + name + "', '" + description + "', " + str(category_id) + ", " + str(userId) + ", 1);")
        print("Product added successfully")
    elif(choice == 8):
        main.run_Query(query)
    elif(choice == 9):
        print("UserID | First_Name | Middle_Name | Last_Name | Address | Email | Phone | DOB | Prime_User | Wallet |")
        PrintLine()
        Exec_Query("select * from user where user_id = 1;")

    elif(choice == 10):
        first_name = input("Enter your first name: ")
        email = input("Enter your email: ")
        phone = int(input("Enter your phone number: "))
        address = input("Enter your address: ")
        wallet = input("Enter your wallet balance: ")
        Exec_Query("update user set first_name = '" + first_name + "', email = '" + email + "', phone = '" + str(phone) + "', address = '" + address + "', wallet = '" + wallet + "' where user_id = " + str(userId) + ";")
    elif(choice == 11):
        MainMenu()
    else:
        print("Invalid choice")
        PrintLine()
        UserMenu2(userId)
        return 0
    UserMenu2(userId)

def main():
    MainMenu()

if __name__ == "__main__":
    main()
'''Stuff that's left:
confirming purchases
transactions
'''