from mysql.connector.connection_cext import CMySQLConnection
from .articles import ArticlesDB
from .variant import VariantDB
from .images import ImagesDB
import mysql.connector
import os

__all__ = ["DataBase"]


class DataBase(ArticlesDB, VariantDB, ImagesDB):
    __instance = None

    def __init__(self):
        username = os.environ["MYSQL_USER"]
        password = os.environ["MYSQL_PASSWORD"]

        if os.environ["DATABASE_USE_ROOT"] == "true":
            username = "root"
            password = os.environ["SQL_ROOT_PASSWORD"]

        self.__con: CMySQLConnection = mysql.connector.connect(
            host=os.environ["DATABASE_MYSQL_URL"],
            user=username,
            password=password,
            database=os.environ["DATABASE_NAME"]
        )
        ArticlesDB.__init__(self, connexion=self.__con)
        VariantDB.__init__(self, connexion=self.__con)
        ImagesDB.__init__(self, connexion=self.__con)

    @staticmethod
    def get_instance():
        if DataBase.__instance is None:
            DataBase.__instance = DataBase()
        return DataBase.__instance

    def __del__(self):
        self.__con.close()

    def __str__(self):
        return f"{self.__con}, {type(self.__con), self.__con.database, self.__con.user}"
