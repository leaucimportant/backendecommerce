from typing import Any

from mysql.connector.connection_cext import CMySQLConnection
from mysql.connector.cursor_cext import CMySQLCursor

__all__ = ["VariantDB"]


class VariantDB:
    def __init__(self, connexion: CMySQLConnection):
        self.__con: CMySQLConnection = connexion
        self.__table_name: str = "variant"

    def get_all_variant_by_article_id(self, id: int) -> list[str]:
        cursor: CMySQLCursor = self.__con.cursor()
        cursor.execute(f"""SELECT size FROM {self.__table_name} as V 
                        JOIN article_variant as AV ON V.id=AV.idvariant 
                        JOIN article as A ON A.id=AV.idarticle 
                        WHERE A.id = {id};"""
                       )
        req_res: list = cursor.fetchall()
        cursor.close()
        if req_res == 0:
            return []
        res = [size for size, in req_res]
        return res
