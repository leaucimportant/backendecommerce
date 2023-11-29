import dotenv
import os
import mysql.connector
from database import DataBase
from pprint import pprint

dotenv.load_dotenv()

username = os.environ["MYSQL_USER"]
password = os.environ["MYSQL_PASSWORD"]

if os.environ["DATABASE_USE_ROOT"] == "true":
    username = "root"
    password = os.environ["SQL_ROOT_PASSWORD"]

mydb = mysql.connector.connect(
    host=os.environ["DATABASE_URL"],
    user=username,
    password=password,
    database=os.environ["DATABASE_NAME"]
)

print(mydb)
print(type(mydb))
print(mydb.database)
print(mydb.user)

cursor = mydb.cursor()
print(type(cursor))
cursor.execute("SHOW TABLES;")
for res in cursor:
    print(res)

cursor.close()

db: DataBase = DataBase(connexion=mydb)
pprint(db.get_all_article())
pprint(db.get_all_article_by_id(id=3))
mydb.close()
