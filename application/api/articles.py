from typing import Final, Any

from application.database import DataBase
from application.dbmg import MgDatabase
from flask import Blueprint, make_response, jsonify
from flask_cors import cross_origin

blueprint_articles: Final[Blueprint] = Blueprint(name="read_paint_pot_bp", import_name=__name__)

__all__ = ["blueprint_articles"]


@blueprint_articles.route("/")
@cross_origin()
def read_articles():
    db_inst: DataBase = DataBase.get_instance()
    return make_response(jsonify(db_inst.get_all_article()), 200)


@blueprint_articles.route("/<id>")
@cross_origin()
def read_article_id(id):
    db_inst: DataBase = DataBase.get_instance()
    dbmg_inst: MgDatabase = MgDatabase.get_instance()
    articles: dict[str, Any] = db_inst.get_article_by_id(id)
    articles.update({"variants": db_inst.get_all_variant_by_article_id(id),
                     "images": db_inst.get_all_images_by_article_id(id),
                     "avis": dbmg_inst.get_all_article_avis(int(id))
                     }
                    )
    return make_response(jsonify(articles), 200)
