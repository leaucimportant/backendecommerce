from typing import Any

from mysql.connector.connection_cext import CMySQLConnection
from mysql.connector.cursor_cext import CMySQLCursor

__all__ = ["ImagesDB"]


class ImagesDB:
    def __init__(self, connexion: CMySQLConnection):
        self.__con: CMySQLConnection = connexion

    def get_all_images_by_article_id(self, id: int) -> list[str]:
        cursor: CMySQLCursor = self.__con.cursor()
        cursor.execute(f"""SELECT image FROM article a JOIN images i on a.id = i.idarticle WHERE a.id = {id};""")
        req_res: list = cursor.fetchall()
        cursor.close()
        if req_res == 0:
            return []
        res = [size for size, in req_res]
        return res
