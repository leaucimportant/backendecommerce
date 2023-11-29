from mysql.connector import CMySQLConnection
from .articles import ArticlesDB

__all__ = ["DataBase"]


class DataBase(ArticlesDB):
    def __init__(self, connexion: CMySQLConnection):
        self.__con: CMySQLConnection = connexion
        super().__init__(connexion=connexion)
