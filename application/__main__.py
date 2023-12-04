# -*- utf-8 -*- #
import os
from pathlib import Path

import dotenv

from application.api.articles import blueprint_articles

# set working directory
os.chdir(Path(__file__).parent)

from flask import Flask,make_response, jsonify
from flask_cors import CORS

dotenv.load_dotenv()

app: Flask = Flask("Breizhsport API")
CORS(app, origins=['http://localhost:4200/'])
app.register_blueprint(blueprint=blueprint_articles, url_prefix="/articles")


@app.route("/")
def hello():
    return "Bienvenue sur l'API REST Breizhsport\n"


@app.route("/health")
def health():
    return make_response(jsonify("health"), 200)


def main():
    app.run("0.0.0.0", port=1080)


if __name__ == '__main__':
    main()
