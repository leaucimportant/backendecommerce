from typing import Any

from mysql.connector.connection_cext import CMySQLConnection
from mysql.connector.cursor_cext import CMySQLCursor

__all__ = ["ArticlesDB"]


class ArticlesDB():
    def __init__(self, connexion: CMySQLConnection):
        self.__con: CMySQLConnection = connexion
        self.__table_name: str = "article"

    def get_all_article(self) -> list[dict[str, Any]]:
        cursor: CMySQLCursor = self.__con.cursor()
        cursor.execute(f"SELECT id, name, price, description, marque, sexe FROM {self.__table_name};")
        req_res: list = cursor.fetchall()
        cursor.close()
        if req_res == 0:
            return []
        res = [{"id": id, "name": name, "price": price, "description": description, "marque": marque, "sexe": sexe} for
               id, name, price, description, marque, sexe in req_res]
        return res

    def get_article_by_id(self, id: int) -> dict[str, Any]:
        cursor: CMySQLCursor = self.__con.cursor()
        cursor.execute(f"SELECT id, name, price, description, marque, sexe FROM {self.__table_name} WHERE id={id};")
        req_res: list = cursor.fetchall()
        cursor.close()
        if not req_res:
            return {}
        res = [{"id": id, "name": name, "price": price, "description": description, "brand": marque, "gender": sexe} for
               id, name, price, description, marque, sexe in req_res][0]
        return res
