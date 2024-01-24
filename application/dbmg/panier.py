from pymongo.database import Database, Collection
from pymongo.cursor import Cursor

__all__ = ["PanierDB"]


class PanierDB:
    def __init__(self, db: Database):
        self.__panier_collection: Collection = db.get_collection("panier")

    def get_client_panier(self, id_client: int) -> dict:
        results: Cursor = self.__panier_collection.find({"id_client": id_client})
        result: dict = next(results)
        results.close()
        return result

    def set_client_panier(self, panier: dict) -> None:
        if not self.get_client_panier(panier['id_client']):
            self.__panier_collection.insert_one(panier)
        else:
            self.__panier_collection.update_one({"id_client": panier['id_client']}, panier)
