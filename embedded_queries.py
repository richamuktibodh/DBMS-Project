import mysql.connector

def run_Query(query):
    cnx = mysql.connector.connect(user='root',password = '2738', database='final')
    cursor = cnx.cursor()
    cursor.execute(query)
    if(query[0:6] == 'SELECT'):
        result = cursor.fetchall()
        print(result)
    cnx.commit()
    cursor.close()
    cnx.close()

query1 = "SELECT c.name as 'category_name', CONCAT(u.first_name, ' ', u.last_name) AS 'user_name', sum(price) as 'price of products' FROM Product JOIN user as u ON u.user_id = product.user_id JOIN category as c ON c.category_id = product.category_id WHERE product.user_id is not null GROUP BY category_name, user_name with rollup;"
query2 = "SELECT CONCAT(u.first_name, ' ', u.last_name) AS 'user_name', SUM(p.amount) AS total_sales FROM user u JOIN payments p ON u.user_id = p.user_id where p.sellbuy = '1' GROUP BY u.user_id;"
query3 = "SELECT c.category_id as 'category_id', c.name as 'category_name', count(p.product_id) as 'number of products' FROM Product p JOIN category c ON c.category_id = p.category_id WHERE p.price < 4000 and p.status_id = '1' GROUP BY category_id, category_name ORDER BY count(p.product_id) DESC;"
query4 = "SELECT CONCAT(u.first_name, ' ', u.last_name) AS 'user_name',  MONTH(pm.payment_date) AS 'month', SUM(pm.amount) AS 'total_revenue' FROM user u JOIN payments pm ON u.user_id = pm.user_id GROUP BY MONTH(pm.payment_date), user_name with rollup;"
# queries to check trigger 
query5 = "insert into payments (payment_id, user_id, amount, sellbuy, payment_date) values (420, 1, 3000, 0, '2020-01-01');"
query6 = "select * from user where user_id = 1;"
while True:
    val = int(input("Enter a number between 1 and 5 to run a query and 6 to break: "))
    if(val == 1):
        run_Query(query1)
    elif(val == 2):
        run_Query(query2)
    elif(val == 3):
        run_Query(query3)
    elif(val == 4):
        run_Query(query4)
    elif(val == 5):
        run_Query(query5)
        run_Query(query6)
    elif(val == 6):
        break
    else:
        print("Invalid input")
# run_Query(query2)
# run_Query(query3)
# run_Query(query4)