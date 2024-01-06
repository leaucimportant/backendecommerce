import os

from pymongo import MongoClient
from pymongo.database import Database
from .avis import AvisDB


__all__ = ["MgDatabase"]


class MgDatabase(AvisDB):
    __instance = None

    def __init__(self):
        db_address: str = "localhost"
        username=""
        password=""
        if os.environ["DATABASE_USE_ROOT"] == "true":
            username = os.environ["MGDB_ROOT_USERNAME"]
            password = os.environ["MGDB_ROOT_PASSWORD"]

        host: str = f"mongodb://{username}:{password}@{db_address}"
        client: MongoClient = MongoClient(host=host, port=27017)
        self.__db: Database = client.get_database(name=os.environ["MONGO_DATABASE_NAME"])

        AvisDB.__init__(self, db=self.__db)


    def __del__(self):
        self.__db.client.close()

    @staticmethod
    def get_instance():
        if MgDatabase.__instance is None:
            MgDatabase.__instance = MgDatabase()
        return MgDatabase.__instance
