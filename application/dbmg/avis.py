from pymongo.database import Database, Collection
from pymongo.cursor import Cursor

__all__ = ["AvisDB"]


class AvisDB:
    def __init__(self, db: Database):
        self.__avis_collection: Collection = db.get_collection("avis")

    def get_all_article_avis(self, id_article: int) -> list[dict]:
        results: Cursor = self.__avis_collection.find({"idarticle": id_article})
        res_avis: list[dict] = list()
        for result in results:
            result.pop("_id")
            result.pop("idarticle")
            res_avis.append(result)

        return res_avis
