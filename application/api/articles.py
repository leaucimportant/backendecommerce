from typing import Final

from application.database import DataBase
from flask import Blueprint, make_response, jsonify

blueprint_articles: Final[Blueprint] = Blueprint(name="read_paint_pot_bp", import_name=__name__)

__all__ = ["blueprint_articles"]


@blueprint_articles.route("/")
def read_articles():
    db_inst: DataBase = DataBase.get_instance()
    return make_response(jsonify(db_inst.get_all_article()), 200)


@blueprint_articles.route("/<id>")
def read_article_id(id):
    db_inst: DataBase = DataBase.get_instance()
    return make_response(jsonify(db_inst.get_all_article_by_id(id)), 200)
