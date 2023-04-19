query = ""
import mysql.connector
import datetime

def Exec_Query(query):
    cnx = mysql.connector.connect(user='root',password = 'tiger', database='final')
    cursor = cnx.cursor()
    cursor.execute(query)
    ret = cursor.fetchall()
    cnx.commit()
    cursor.close()
    if(ret == []):
        return
    else:
        for i in ret:
            print(i)

def PrintLine():
    print()
    print("-------------------------------------------------------------------------------------------------------------------")
    print()

def MainMenu():
    print("Welcome to the Mysql Query Tool\n" + "Please select an option from the menu below\n" + "1. List available products\n"+ "2. Enter as user\n" + "3. Exit\n")
    PrintLine()
    choice = int(input("Enter your choice: "))
    if(choice == 1):
        query = ""
        Exec_Query(query)
    elif(choice == 2):
        UserMenu1()
    elif(choice == 3):
        exit()
    else:
        print("Invalid choice")
def UserMenu1():
    PrintLine()
    print("1. Signup\n"+"2. Login\n" + "3. Back\n") 
    PrintLine()
    x = int(input("Enter your choice: "))
    if(x == 1):
        UserMenu2(userId)
    elif(x == 2):
        UserMenu2(userId)
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
        main.run_Query(query)
    elif(choice == 2):
        main.run_Query(query)
    elif(choice == 3):
        main.run_Query(query)
    elif(choice == 4):
        main.run_Query(query)
    elif(choice == 5):
        main.run_Query(query)
    elif(choice == 6):
        main.run_Query(query)
    elif(choice == 7):
        main.run_Query(query)
    elif(choice == 8):
        main.run_Query(query)
    elif(choice == 9):
        main.run_Query(query)
    elif(choice == 10):
        main.run_Query(query)
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
