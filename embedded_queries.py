import mysql.connector

def run_Query(query):
    cnx = mysql.connector.connect(user='root',password = 'tiger', database='final')
    cursor = cnx.cursor()
    cursor.execute(query)
    if(query[0:6] == 'SELECT'):
        result = cursor.fetchall()
        print(result)
    cnx.commit()
    cursor.close()
    cnx.close()

query1 = "INSERT INTO User (user_id, first_name, last_name, email, phone, address, dob, prime_user) VALUES (101,'liz', 'bien', 'abc@xyz.com', '1234567890', 'bruh street', '1999-01-01', 0)"
query2 = "SELECT * FROM User where first_name = 'liz'"
query3 = "UPDATE Product SET status = 'Out of stock' WHERE product_id = 1"
query4 = "SELECT * FROM Product WHERE product_id = 1"

run_Query(query1)
run_Query(query2)
run_Query(query3)
run_Query(query4)