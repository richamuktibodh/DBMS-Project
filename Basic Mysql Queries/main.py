import mysql.connector
import datetime

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
