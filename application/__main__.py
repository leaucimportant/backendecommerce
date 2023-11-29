# -*- utf-8 -*- #
import os
from pathlib import Path

import dotenv

from .api.articles import blueprint_articles

# set working directory
os.chdir(Path(__file__).parent)

from flask import Flask

dotenv.load_dotenv()

app: Flask = Flask("Breizhsport API")
app.register_blueprint(blueprint=blueprint_articles, url_prefix="/articles")


@app.route("/")
def hello():
    return "Bienvenue sur l'API REST Breizhsport\n"


@app.route("/health")
def health():
    return 200


def main():
    app.run("localhost", port=1080)


if __name__ == '__main__':
    main()
