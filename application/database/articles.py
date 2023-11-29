from typing import Any

from mysql.connector import CMySQLConnection
from mysql.connector.cursor_cext import CMySQLCursor

__all__ = ["ArticlesDB"]

class ArticlesDB():
    def __init__(self, connexion: CMySQLConnection):
        self.__con: CMySQLConnection = connexion

    def get_all_article(self) -> list[dict[str, Any]]:
        cursor: CMySQLCursor = self.__con.cursor()
        cursor.execute("SELECT id, name, price, description, image FROM articles;")
        req_res: list = cursor.fetchall()
        cursor.close()
        if req_res == 0:
            return []
        res = [{"id": id, "name": name, "price": price, "description": description, "image": image} for id, name, price, description, image in req_res]
        return res

    def get_all_article_by_id(self, id: int) -> list[dict[str, Any]]:
        cursor: CMySQLCursor = self.__con.cursor()
        cursor.execute(f"SELECT id, name, price, description, image FROM articles WHERE id={id};")
        req_res: list = cursor.fetchall()
        cursor.close()
        if req_res == 0:
            return []
        res = [{"id": id, "name": name, "price": price, "description": description, "image": image} for id, name, price, description, image in req_res]
        return res
