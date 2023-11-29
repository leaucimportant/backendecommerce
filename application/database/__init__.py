from mysql.connector import CMySQLConnection
from .articles import ArticlesDB
import mysql.connector
import os

__all__ = ["DataBase"]


class DataBase(ArticlesDB):
    __instance = None
    def __init__(self):
        username = os.environ["MYSQL_USER"]
        password = os.environ["MYSQL_PASSWORD"]

        if os.environ["DATABASE_USE_ROOT"] == "true":
            username = "root"
            password = os.environ["SQL_ROOT_PASSWORD"]

        self.__con: CMySQLConnection = mysql.connector.connect(
            host=os.environ["DATABASE_URL"],
            user=username,
            password=password,
            database=os.environ["DATABASE_NAME"]
        )
        super().__init__(connexion=self.__con)

    @staticmethod
    def get_instance():
        if DataBase.__instance is None:
            DataBase.__instance = DataBase()
        return DataBase.__instance

    def __del__(self):
        self.__con.close()

    def __str__(self):
        return f"{self.__con}, {type(self.__con), self.__con.database, self.__con.user}"
